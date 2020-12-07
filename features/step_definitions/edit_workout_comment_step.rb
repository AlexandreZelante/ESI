Dado("que eu tenho um comentário de treino cadastrado") do
    workout_comment = WorkoutComment.new
    workout_comment.text = "Um comentário comentado",
    workout_comment.workout_id = 1,
    workout_comment.user_id = 1
    workout_comment.save
end