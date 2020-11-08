Dado("que eu estou logado") do
  visit "users/new"
  fill_in "Nome", :with => "Igor Antun"
  fill_in "Email", :with => "igor@antun.me"
  fill_in "Confirme seu Email", :with => "igor@antun.me"
  fill_in "CPF", :with => "123"
  fill_in "Data de nascimento", :with => "22/12/1999"
  fill_in "Telefone", :with => "1111111111"
  find('select').find(:xpath, 'option[1]').select_option
  fill_in "Senha", :with => "password"
  fill_in "Confirme sua senha", :with => "password"
  click_on "Salvar"

  visit "/sign_in"
  fill_in "Email", :with => "igor@antun.me"
  fill_in "Password", :with => "password"
  click_on "login"
end

Dado("que eu tenho um treino cadastrado") do
  workout = Workout.new
  workout.name = "Treino avançado",
  workout.coach = "Coach Igor"
  workout.save
end

Dado("que estou na página de um treino") do
  visit "/workouts"
  click_on "Mostrar"
end

Quando("clico em Favoritar") do
  click_on "Favoritar"
end

Quando("clico em Desfavoritar") do
  click_on "Desfavoritar"
end

Então("ele deve aparecer na lista de favoritos") do
  visit "/"
  expect(page).to have_content('Treino avançado')
  expect(page).to have_content('Coach Igor')
end

Então("ele não deve aparecer na lista de favoritos") do
  visit "/"
  expect(page).to have_no_content('Treino avançado')
  expect(page).to have_no_content('Coach Igor')
end

Então("não deve haver a opção de favoritar") do
  expect(page).to have_no_content('Favoritar')
end
