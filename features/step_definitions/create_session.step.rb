Dado("que eu estou registrado") do
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
end

Dado('que eu estou na página de login') do
  click_on 'Entrar'
end

Quando('eu preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

E('clico em Login') do
  click_on 'login'
end

Então('consigo clicar em Sair') do
  click_on 'Sair'
end
