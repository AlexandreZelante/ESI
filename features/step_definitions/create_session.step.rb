Dado('que eu estou na página de login') do
  visit 'sessions/new'
end

Quando('eu preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em Login') do
  click_on 'Login'
end

Então('ele deve ter criado uma sessão e cadastrado no banco de dados') do
  session = Session.order("id").last
  expect(session.email).to eq('alexandre.zelante@hotmail.com')
  expect(session.password).to eq('123456')
end

Então('deverei ver uma tela de confirmação de login com meu nome') do
  pending # Write code here that turns the phrase above into concrete actions
end