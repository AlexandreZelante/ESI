Dado("que tenho um usuario cadastrado com o nome {string}") do |name|
    user = User.create(name: name)
    user.save
end

Dado("que estou na página de listagem de usuario") do
    visit "/users"
end

Quando("preencho o campo de busca com {string}") do |value|
    field = "search-field-user"
    fill_in field, :with => value
end

Quando("clico no botão {string}") do |button|
    click_on button
end

Então("o usuario {string} deve estar na listagem") do |name|
    userInList = find('tr[user-result-id="' + name + '"]')
    expect(userInList)
end

