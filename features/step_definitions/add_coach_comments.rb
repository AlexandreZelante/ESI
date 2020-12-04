Dado("que outro usuário também está cadastrado") do
    visit "/users/new"
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

  Dado("que estou na página de um usuário") do
    visit "/users"
    click_on "Ver"
  end