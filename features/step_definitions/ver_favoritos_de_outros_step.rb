Dado("que estou na página de um usuario especifico") do
  visit "/users/1"
end

Então("o favorito dele deve aparecer na lista de favoritos") do
  expect(page).to have_content('Treino avançado')
end

Então("o favorito dele não deve aparecer na lista de favoritos") do
  expect(page).to have_no_content('Treino avançado')
end

Dado("que eu estou logado como outro usuario") do
  visit "users/new"
  fill_in "Nome", :with => "Igor Antun"
  fill_in "Email", :with => "igor@antun.me"
  fill_in "Confirme seu Email", :with => "igor@antun.me"
  fill_in "CPF", :with => "123"
  fill_in "Data de nascimento", :with => "22/12/1999"
  fill_in "Telefone", :with => "1111111111"
  find('#user_gender').find(:xpath, 'option[1]').select_option
  find('#user_category').find(:xpath, 'option[1]').select_option
  fill_in "Senha", :with => "password"
  fill_in "Confirme sua senha", :with => "password"
  click_on "Salvar"

  visit "/sign_in"
  fill_in "Email", :with => "igor@antun.me"
  fill_in "Senha", :with => "password"
  click_on "login-btn"
end
