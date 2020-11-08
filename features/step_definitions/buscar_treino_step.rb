Dado("que tenho um treino cadastrado com o nome {string}") do |name|
  workout = Workout.create(name: name, :coach => "Treinador X")
  workout.save
end

Dado("que estou na página de listagem de treinos") do
  visit "/workouts"
end

Quando("preencho o campo de busca com {string}") do |value|
  field = "search-field"
  fill_in field, :with => value
end

Quando("clico no botão {string}") do |button|
  click_on button
end

Então("o treino {string} deve estar na listagem") do |name|
  workoutInList = find('tr[data-workout-name="' + name + '"]')
  expect(workoutInList)
end

Então("não deve haver treinos na listagem") do
  noDataInfo = find('#no_workout_text')
  expect(noDataInfo)
end
