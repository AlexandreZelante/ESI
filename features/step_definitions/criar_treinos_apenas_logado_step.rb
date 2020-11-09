Dado("que estou na página de treinos") do
  visit "/workouts"
end
  
Dado("consigo clicar no botão de criar novo treino") do
  click_on "Novo treino"
end

E("consigo clicar no link de mostrar") do
  visit "/workouts"
  click_on "Mostrar"
end
  