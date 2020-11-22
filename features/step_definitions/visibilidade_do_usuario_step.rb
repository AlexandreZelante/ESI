Dado("que cadastro um usuário privado") do
  visit "users/new"
  fill_in "Nome", :with => "Vinicius Hessel"
  fill_in "Email", :with => "hessel@usp.br"
  fill_in "Confirme seu Email", :with => "hessel@usp.br"
  fill_in "CPF", :with => "123"
  fill_in "Data de nascimento", :with => "01/01/1999"
  fill_in "Telefone", :with => "1111111111"
  find('#user_gender').find(:xpath, 'option[1]').select_option
  find('#user_category').find(:xpath, 'option[1]').select_option
  find('#user_private').find(:xpath, 'option[1]').select_option
  fill_in "Senha", :with => "password"
  fill_in "Confirme sua senha", :with => "password"
  click_on "Salvar"

  visit "/sign_in"
  fill_in "Email", :with => "hessel@usp.br"
  fill_in "Senha", :with => "password"
  click_on "login-btn"
end

Dado("que cadastro um usuário publico") do
  visit "users/new"
  fill_in "Nome", :with => "Vinicius Hessel"
  fill_in "Email", :with => "hessel@usp.br"
  fill_in "Confirme seu Email", :with => "hessel@usp.br"
  fill_in "CPF", :with => "123"
  fill_in "Data de nascimento", :with => "01/01/1999"
  fill_in "Telefone", :with => "1111111111"
  find('#user_gender').find(:xpath, 'option[1]').select_option
  find('#user_category').find(:xpath, 'option[1]').select_option
  find('#user_private').find(:xpath, 'option[2]').select_option
  fill_in "Senha", :with => "password"
  fill_in "Confirme sua senha", :with => "password"
  click_on "Salvar"

  visit "/sign_in"
  fill_in "Email", :with => "hessel@usp.br"
  fill_in "Senha", :with => "password"
  click_on "login-btn"
end

Então("vou para a listagem de usuarios") do
  visit "/users"
end

Então("meu usuario deve aparecer na listagem") do
  userInList = find('tr[user-result-id="Vinicius Hessel"]')
  expect(userInList)
end

Então("meu usuario não deve aparecer na listagem") do
  noDataInfo = find('#no_user_text')
  expect(noDataInfo)
end
