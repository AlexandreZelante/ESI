require 'rails_helper'

RSpec.describe Workout, type: :model do
  it 'deve buscar o workout e achar' do
    workout = Workout.create(
      name: 'Nome de treino',
      coach: 'Nome do treinador'
    )
    @result = Workout.search('Nome de treino')
    expect(@result).to eq([workout])
  end

  it 'deve buscar um workout com um nome que não existe e não encontrar' do
    @result = Workout.search('Nome de treino não criado')
    expect(@result).to eq([])
  end
    
end
