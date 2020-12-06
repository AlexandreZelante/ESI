Dado("que eu tenho um comentário de treino cadastrado") do
  workout_comment = WorkoutComment.new
  workout_comment.text = "Comentário opinador",
  workout_comment.workout = "Treino avançado",
  workout_comment.user = "Coach Igor",
  workout_comment.save
end

Dado("que eu clico no botão Editar") do
  click_button("Editar")
end