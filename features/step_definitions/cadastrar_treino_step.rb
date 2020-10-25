Dado("que estou na página de cadastro de treino") do
  visit "/workouts/new"
end

Quando("preencho o campo {string} com {string}") do |field, value|
  fill_in field, :with => value
end

Quando("clico em adicionar dia") do
  click_on "Adicionar dia"
end

Quando("clico em adicionar exercício") do
  click_on "Adicionar exercício"
end

Quando("clico em salvar") do
  click_on "Salvar"
end

Então("ele deve ter sido salvo no banco de dados") do
  workout = Workout.order("id").last
  expect(workout.name).to eq("Maromba")
  expect(workout.coach).to eq("Igor")
  expect(workout.description).to eq("Treino perfeito para quem quer ficar gigante")
  expect(workout.days[0].name).to eq("Braço")
  expect(workout.days[0].exercises[0].name).to eq("Supino")
  expect(workout.days[0].exercises[0].sets).to eq("3")
  expect(workout.days[0].exercises[0].repetitions).to eq("15")
  expect(workout.days[0].exercises[0].rest).to eq("30s")
end
