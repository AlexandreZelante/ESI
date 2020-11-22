require "rails_helper"

RSpec.describe FollowedUsersController, type: :controller do
  let!(:user) { create(:user) }
  let!(:followed) { create(:user) }
  let(:params) { { followed_id: followed.id } }

  let(:create_followed_user) do
    allow_any_instance_of(FollowedUsersController).to receive(:current_user).and_return(user)
    post :create, params: params
  end

  let(:destroy_followed_user) do
    allow_any_instance_of(FollowedUsersController).to receive(:current_user).and_return(user)
    delete :destroy, params: { id: followed.id }
  end

  describe "Seguir usuário" do
    it "exibe mensagem de sucesso" do
      create_followed_user
      expect(flash[:success]).to eq "Você seguiu esse usuário"
    end

    it "salva o vínculo no banco de dados" do
      expect { create_followed_user }.to change(FollowedUser, :count).by(1)
    end
  end

  describe "Deixar de seguir usuário" do
    it "exibe mensagem de confirmação" do
      create_followed_user
      destroy_followed_user
      expect(flash[:warning]).to eq "Você deixou de seguir esse usuário"
    end

    it "remove o vínculo do banco de dados" do
      create_followed_user
      expect { destroy_followed_user }.to change(FollowedUser, :count).by(-1)
    end
  end
end
