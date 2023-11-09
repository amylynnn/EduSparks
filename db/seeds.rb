require 'faker'
puts 'destroying the DB'
Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
Subject.destroy_all

puts 'DB destroy, initialization of seed'

# subj1 = Subject.create(name: 'Maths')
# subj3 = Subject.create(name: 'French')
# subj2 = Subject.create(name: 'English')
# subj4 = Subject.create(name: 'Business')
subjects = Subject.create!([
    { name: 'Mathematics'},
    { name: 'French' },
    { name: 'English' },
    { name: 'Business' },
    { name: 'Technology' },
    { name: 'Science' }
])
puts "Created #{Subject.count} Subjects "

quiz_mathematics = [{ name: 'Algebra' }]
quiz_french = [{ name: 'Vocabulary' }]
quiz_english = [{ name: 'Grammar' }]
quiz_business = [{ name: 'Finance' }]
quiz_technology = [{ name: 'AI' }]
quiz_science = [{ name: 'Chemistry' }]

subject_quizzes = [
  # Mathematics
  [quiz_mathematics],
  # French
  [quiz_french],
  # English
  [quiz_english],
  # Business
  [quiz_business],
  # Technology
  [quiz_technology],
  # Science
  [quiz_science]
]

subjects.each_with_index do |subject, index_subj|
  quizzes = subject.quizzes.create!(subject_quizzes[index_subj])
  puts 'Created Quizzes for each subject'

  question_mathematics = [{ content: "What's 9 + 10?" }]
  question_french = [{ content: "Choose the correct plural form of : le cheval" }]
  question_english = [{ content: "Choose the best synonym for cling" }]
  question_business = [{ content: "Combined leverage measures the impact of change in contribution on..." }]
  question_technology = [{ content: "If Human's and AI entities learn from experience what does Machine Learning learn from?" }]
  question_science = [{ content: "You can't live without water! What is its chemical formula?" }]

  subject_questions = [
    # Mathematics
    [
      # Algebra
      [question_mathematics]
    ],
    # french
    [
      # Vocabulary
      [question_french]
    ],
    # english
    [
      # Grammar
      [question_english]
    ],
    # business
    [
      # Finance
      [question_business]
    ],
    # technology
    [
      # AI
      [question_technology]
    ],
    # science
    [
      # Chemistry
      [question_science]
    ]
  ]

  puts "Quiz created"
  p quizzes.flatten

  quizzes.flatten.each_with_index do |quiz, index_quiz|
    puts "subject index: #{index_subj}, quiz index: #{index_quiz}"
    p subject_questions[index_subj][index_quiz]
    questions = quiz.questions.create!(subject_questions[index_subj][index_quiz])
    puts 'Created Questions for each quiz'

    answer_mathematics = [
      { content: '14', correct: false },
      { content: '18', correct: false },
      { content: '21', correct: false },
      { content: '19', correct: true }
    ]
    answer_french = [
      { content: "les chevail", correct: false },
      { content: "les chevaux", correct: true },
      { content: "les chevals", correct: false },
      { content: "les chevaus", correct: false }
    ]
    answer_english = [
      { content: "throw away", correct: false },
      { content: "shine", correct: false },
      { content: "add color to", correct: false },
      { content: "hold tight", correct: true }
    ]
    answer_business = [
      { content: "equity capital", correct: false },
      { content: "debt capital", correct: false },
      { content: "capital sructure", correct: false },
      { content: "EPS", correct: true }
    ]
    answer_technology = [
      { content: 'Numbers', correct: false },
      { content: 'Information', correct: false },
      { content: 'Data', correct: false },
      { content: 'Experience', correct: true }
    ]
    answer_science = [
      { content: 'H2', correct: false },
      { content: 'O2', correct: false },
      { content: 'H2O', correct: true },
      { content: 'H2O2', correct: false }
    ]

    subject_answers = [
      # Mathematic
      [
        # Algebra
        [
          # Question
          [
            answer_mathematics
          ]
        ]
      ],
      # French
      [
        # Vocabulary
        [
          # Question
          [
            answer_french
          ]
        ]
      ],
      # English
      [
        # Grammar
        [
          # Question
          [
            answer_english
          ]
        ]
      ],
      # Business
      [
        # Finance
        [
          # Question
          [
            answer_business
          ]
        ]
      ],
      # Technology
      [
        # AI
        [
          # Question
          [
            answer_technology
          ]
        ]
      ],
      # Science
      [
        # Chemistry
        [
          # Question
          [
            answer_science
          ]
        ]
      ]
    ]

    questions.flatten.each_with_index do |question, index_quest|
      answers = question.answers.create!(subject_answers[index_subj][index_quiz][index_quest])
      puts 'Created Answers for each question'
    end
  end
end
