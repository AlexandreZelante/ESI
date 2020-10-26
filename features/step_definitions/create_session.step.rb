Dado('que eu estou na página de login') do
  visit 'sign_in'
end

Quando('eu preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

E('clico em Login') do
  click_on 'login'
end