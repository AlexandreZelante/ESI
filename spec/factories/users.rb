FactoryBot.define do
  factory :user do
    name { "Igor Antun" }
    email { "igor@antun.me" }
    cpf { "12345678909" }
    gender { "Masculino" }
    category { "Treinador" }
    phone { "11987654321" }
    password { "senha" }
  end
end
