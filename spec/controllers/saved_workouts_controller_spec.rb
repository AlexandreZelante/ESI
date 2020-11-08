require "rails_helper"

RSpec.describe SavedWorkoutsController, type: :controller do
  let!(:user) { create(:user) }
  let!(:workout) { create(:workout) }
  let(:params) { { workout_id: workout.id } }

  let(:create_saved_workout) do
    allow_any_instance_of(SavedWorkoutsController).to receive(:current_user).and_return(user)
    post :create, params: params
  end

  let(:destroy_saved_workout) do
    allow_any_instance_of(SavedWorkoutsController).to receive(:current_user).and_return(user)
    delete :destroy, params: { id: workout.id }
  end

  describe "Favoritar treino" do
    it "exibe mensagem de sucesso" do
      create_saved_workout
      expect(flash[:success]).to eq "O treino foi adicionado à lista de favoritos"
    end

    it "salva o vínculo no banco de dados" do
      expect { create_saved_workout }.to change(SavedWorkout, :count).by(1)
    end
  end

  describe "Desfavoritar treino" do
    it "exibe mensagem de confirmação" do
      create_saved_workout
      destroy_saved_workout
      expect(flash[:warning]).to eq "O treino foi removido da lista de favoritos"
    end

    it "remove o vínculo do banco de dados" do
      create_saved_workout
      expect { destroy_saved_workout }.to change(SavedWorkout, :count).by(-1)
    end
  end
end
