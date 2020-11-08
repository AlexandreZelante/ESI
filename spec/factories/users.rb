FactoryBot.define do
  factory :user do
    id { 1 }
    name { "Igor Antun" }
    email { "igor@antun.me" }
    cpf { "12345678909" }
    gender { "Masculino" }
    phone { "11987654321" }
    password { "senha" }
  end
end
