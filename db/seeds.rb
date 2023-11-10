# require 'faker'
# puts 'destroying the DB'
# Answer.destroy_all
# Question.destroy_all
# Quiz.destroy_all
# Subject.destroy_all

# puts 'DB destroy, initialization of seed'

# # subj1 = Subject.create(name: 'Maths')
# # subj3 = Subject.create(name: 'French')
# # subj2 = Subject.create(name: 'English')
# # subj4 = Subject.create(name: 'Business')
# subjects = Subject.create!([
#     { name: 'Mathematics' },
#     { name: 'French' },
#     { name: 'English' },
#     { name: 'Business' },
#     { name: 'Technology' },
#     { name: 'Science' }
# ])
# puts "Created #{Subject.count} Subjects "

# quiz_mathematics = [
#   { name: 'Algebra' },
#   { name: 'Statistics' },
#   { name: 'Calculus' },
#   { name: 'Probability' },
#   { name: 'fraction' }
# ]
# quiz_french = [{ name: 'Vocabulary' }]
# quiz_english = [{ name: 'Grammar' }]
# quiz_business = [{ name: 'Finance' }]
# quiz_technology = [{ name: 'AI' }]
# quiz_science = [{ name: 'Chemistry' }]

# subject_quizzes = [
#   # Mathematics
#   [quiz_mathematics],
#   # French
#   [quiz_french],
#   # English
#   [quiz_english],
#   # Business
#   [quiz_business],
#   # Technology
#   [quiz_technology],
#   # Science
#   [quiz_science]
# ]

# subjects.each_with_index do |subject, index_subj|
#   quizzes = subject.quizzes.create!(subject_quizzes[index_subj])
#   puts 'Created Quizzes for each subject'

#   question_maths_algebra = [
#     { content1: "What's 9 + 10?" },
#     { content2: "What will be the value of x in this equation- 2x - 4 = 0" }
#   ]
#   question_french = [{ content: "Choose the correct plural form of : le cheval" }]
#   question_english = [{ content: "Choose the best synonym for cling" }]
#   question_business = [{ content: "Combined leverage measures the impact of change in contribution on..." }]
#   question_technology = [{ content: "If Human's and AI entities learn from experience what does Machine Learning learn from?" }]
#   question_science = [{ content: "You can't live without water! What is its chemical formula?" }]

#   subject_questions = [
#     # Mathematics
#     [
#       # Algebra
#       [question_maths_algebra]
#     ],
#     # french
#     [
#       # Vocabulary
#       [question_french]
#     ],
#     # english
#     [
#       # Grammar
#       [question_english]
#     ],
#     # business
#     [
#       # Finance
#       [question_business]
#     ],
#     # technology
#     [
#       # AI
#       [question_technology]
#     ],
#     # science
#     [
#       # Chemistry
#       [question_science]
#     ]
#   ]

#   puts "Quiz created"
#   p quizzes.flatten
require 'faker'

puts 'Destroying the DB'
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
Subject.destroy_all
puts 'DB destroyed. Initialization of seed.'

subjects = [
  {
    name: 'Mathematics',
    quizzes: [
      {
        name: 'Algebra',
        questions: [
          {
            content: "What's 9 + 10?",
            answers: [
              { content: '14', correct: false },
              { content: '18', correct: false },
              { content: '21', correct: false },
              { content: '19', correct: true }
            ]
          }
        ]
      },
      {
        name: 'Statistics',
        questions: [
          {
            content: "Age is classified as",
            answers: [
              { content: 'nominal data', correct: false },
              { content: 'ordinal data', correct: false },
              { content: 'interval data', correct: false },
              { content: 'ratio data', correct: true }
            ]
          }
        ]
      },
      {
        name: 'Calculus',
        questions: [
          {
            content: "What is the integral of 1 with respect to x",
            answers: [
              { content: '0.5x', correct: false },
              { content: 'X', correct: true },
              { content: '1.25x', correct: false },
              { content: '2x', correct: false }
            ]
          }
        ]
      },
      {
        name: 'Probability',
        questions: [
          {
            content: "If you rolled a 6-sided dice, What's the probability of rolling a 3?",
            answers: [
              { content: '1/6', correct: true },
              { content: '2/3', correct: false },
              { content: '3/6', correct: false },
              { content: '5/6', correct: false}
            ]
          }
        ]
      },
      {
        name: 'Fraction',
        questions: [
          {
            content: "Simplified 15/40",
            answers: [
              { content: '3/8', correct: true },
              { content: '1/2', correct: false },
              { content: '3/4', correct: false },
              { content: '5/8', correct: false }
            ]
          }
        ]
      }

    ]
  },

  { name: 'French', quizzes: [{ name: 'Vocabulary', questions: [{ content: "Choose the correct plural form of: le cheval", answers: [
    { content: "les chevail", correct: false },
    { content: "les chevaux", correct: true },
    { content: "les chevals", correct: false },
    { content: "les chevaus", correct: false }
  ] }] }] },
  # Add other subjects, quizzes, questions, and answers similarly
  { name: 'English', quizzes: [{ name: 'Grammar', questions: [{ content: "Choose the best synonym for cling", answers: [
    { content: "throw away", correct: false },
    { content: "shine", correct: false },
    { content: "add color to", correct: false },
    { content: "hold tight", correct: true }
  ] }] }] },

  { name: 'Business', quizzes: [{ name: 'Finance', questions: [{ content: "Combined leverage measures the impact of change in contribution on...", answers: [
    { content: "throw away", correct: false },
    { content: "shine", correct: false },
    { content: "add color to", correct: false },
    { content: "hold tight", correct: true }
  ] }] }] },

  { name: 'Technology', quizzes: [{ name: 'AI', questions: [{ content: "If Human's and AI entities learn from experience what does Machine Learning learn from?", answers: [
    { content: 'Numbers', correct: false },
    { content: 'Information', correct: false },
    { content: 'Data', correct: false },
    { content: 'Experience', correct: true }
  ] }] }] },

  { name: 'Science', quizzes: [{ name: 'Chemistry', questions: [{ content: "You can't live without water! What is its chemical formula?", answers: [
    { content: 'H2', correct: false },
    { content: 'O2', correct: false },
    { content: 'H2O', correct: true },
    { content: 'H2O2', correct: false }
  ] }] }] }
]

subjects.each do |subject_data|
  subject = Subject.create!(name: subject_data[:name])
  quizzes = subject_data[:quizzes].map do |quiz_data|
    quiz = subject.quizzes.create(name: quiz_data[:name])
    quiz_data[:questions].each do |question_data|
      question = quiz.questions.create(content: question_data[:content])
      question_data[:answers].each do |answer_data|
        question.answers.create(content: answer_data[:content], correct: answer_data[:correct])
      end
    end
  end
end

puts "Created #{Subject.count} subjects."
