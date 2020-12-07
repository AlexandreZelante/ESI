Dado("que outro usuário está cadastrado") do
  visit "users/new"
  fill_in "Nome", :with => "Vinicius Hessel"
  fill_in "Email", :with => "vinicius@usp.br"
  fill_in "Confirme seu Email", :with => "vinicius@usp.br"
  fill_in "CPF", :with => "321"
  fill_in "Data de nascimento", :with => "18/12/1999"
  fill_in "Telefone", :with => "11999999999"
  find('#user_gender').find(:xpath, 'option[1]').select_option
  find('#user_category').find(:xpath, 'option[2]').select_option
  fill_in "Senha", :with => "password"
  fill_in "Confirme sua senha", :with => "password"
  click_on "Salvar"
end

Dado("que eu não estou mais logado") do
  click_on "Sair"
  expect(page).to have_content('Bem vindo!')
end

Dado("que estou na página de outro usuário") do
  visit "/users/2"
end

Quando("clico em seguir") do
  click_on "Seguir"
end

Quando("clico em deixar de seguir") do
  click_on "Deixar de seguir"
end

Então("deve ser exibida uma mensagem de sucesso ao seguir") do
  expect(page).to have_content('Você seguiu esse usuário')
end

Então("deve ser exibida uma mensagem de sucesso ao deixar de seguir") do
  expect(page).to have_content('Você deixou de seguir esse usuário')
end

Então("deve aparecer o botão de deixar de seguir") do
  expect(page).to have_button('Deixar de seguir')
end

Então("não deve aparecer o botão de deixar de seguir") do
  expect(page).to have_no_button('Deixar de seguir')
end

Então("deve aparecer o botão de seguir") do
  expect(page).to have_button('Seguir')
end

Então("não deve aparecer o botão de seguir") do
  expect(page).to have_no_button('Seguir')
end
