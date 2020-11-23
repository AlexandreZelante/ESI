Então("o comentário {string} deve estar na listagem") do |name|
    workoutInList = find('tr[data-workout-name="' + name + '"]')
    expect(workoutInList)
end

E("clico no botão Salvar") do
    click_button("Salvar")
end

Então("o comentário {string} deve estar na listagem de comentários") do |name|
    expect(page).to have_content(name)
end