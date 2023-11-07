require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
Subject.destroy_all

subj = Subject.create(name: 'Maths')
Subject.create(name: 'French')
subj2 = Subject.create(name: 'English')
Subject.create(name: 'Business')

puts 'Created Subjects'

quiz = Quiz.create(subject: subj, name: 'Algebra')
quiz2 = Quiz.create(subject: subj2, name: 'Grammar')

puts 'Created Quizzes'

quest = Question.create(quiz: quiz, content: "What's 9 + 10?")

puts 'Created Questions'

Answer.create(question: quest, content: "14", correct: false)
Answer.create(question: quest, content: "18", correct: false)
Answer.create(question: quest, content: "21", correct: true)
Answer.create(question: quest, content: "19", correct: false)

puts 'Created Answers'
