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
            content: "1. What's 9 + 10 ?",
            answers: [
              { content: 'A. 14', correct: false },
              { content: 'B. 18', correct: false },
              { content: 'C. 21', correct: false },
              { content: 'D. 19', correct: true }
            ]
          },
          {
            content: "2. Le produit est le résultat :",
            answers: [
              { content: "A. D'une addition", correct: false },
              { content: "B. D'une soustraction", correct: false },
              { content: "C. D'une division", correct: false },
              { content: "D. D'une multiplication", correct: true }
            ]
          },
          {
            content: "3. Quel est le carré du quart du tiers de 12 ?",
            answers: [
              { content: "A. Neuf", correct: false },
              { content: "B. Un", correct: true },
              { content: "C. Trois", correct: false },
              { content: "D. Deux", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Statistics',
        questions: [
          {
            content: "1. Age is classified as",
            answers: [
              { content: 'A. Nominal data', correct: false },
              { content: 'B. Ordinal data', correct: false },
              { content: 'C. Interval data', correct: false },
              { content: 'D. Ratio data', correct: true }
            ]
          },
          {
            content: "2. What is the range of a distribution ?",
            answers: [
              { content: 'A. The distance from the mean to the highest score', correct: false },
              { content: 'B. The distance from the median to the highest score', correct: false },
              { content: 'C. The distance from the lowest to the highest score', correct: true },
              { content: 'D. The distance from the mode to the highest score', correct: false }
            ]
          },
          {
            content: "3. How many modes are there in this set of data: 2, 2, 3, 3, 3, 4, 5, 6, 6, 6, 7, 7, 8, 8 ?",
            answers: [
              { content: 'A. one', correct: false },
              { content: 'B. two', correct: true },
              { content: 'C. none', correct: false },
              { content: 'D. seven', correct: false }
            ]
          }
        ]
      },
      {
        name: 'Calculus',
        questions: [
          {
            content: "1. What is the integral of 1 with respect to x ?",
            answers: [
              { content: 'A. 0.5x', correct: false },
              { content: 'B. X', correct: true },
              { content: 'C. 1.25x', correct: false },
              { content: 'D. 2x', correct: false }
            ]
          },
          {
            content: "2. What is x2 + 1 differentiated with respect to x ?",
            answers: [
              { content: 'A. 2x', correct: true },
              { content: 'B. X', correct: false },
              { content: 'C. X+1', correct: false },
              { content: 'D. 2x+1', correct: false }
            ]
          },
          {
            content: "3. What function is integrated to get this graph ?",
            answers: [
              { content: 'A. -x+1', correct: false },
              { content: 'B. X-1', correct: false },
              { content: 'C. (x+1)', correct: false },
              { content: 'D. 2x', correct: true }
            ]
          }
        ]
      },
      {
        name: 'Probability',
        questions: [
          {
            content: "1. If you rolled a 6-sided dice, What's the probability of rolling a 3 ?",
            answers: [
              { content: 'A. 1/6', correct: true },
              { content: 'B. 2/3', correct: false },
              { content: 'C. 3/6', correct: false },
              { content: 'D. 5/6', correct: false }
            ]
          },
          {
            content: "2. In a class, there are 12 boys and 16 girls. One of them is called out by an enroll number, what is the probability that the one called is a girl ?",
            answers: [
              { content: 'A. 1/4', correct: false },
              { content: 'B. 2/5', correct: false },
              { content: 'C. 5/12', correct: false },
              { content: 'D. 4/7', correct: true }
            ]
          },
          {
            content: "3. Two dice are tossed. The probability that the total score is a prime number is:",
            answers: [
              { content: 'A. 1/6', correct: false },
              { content: 'B. 5/12', correct: true },
              { content: 'C. 1/2', correct: false },
              { content: 'D. 7/9', correct: false }
            ]
          }
        ]
      },
      {
        name: 'Fraction',
        questions: [
          {
            content: "1. Simplified 15/40",
            answers: [
              { content: 'A. 3/8', correct: true },
              { content: 'B. 1/2', correct: false },
              { content: 'C. 3/4', correct: false },
              { content: 'D. 5/8', correct: false }
            ]
          },
          {
            content: "2. 26/3 : Change  to a mixed number",
            answers: [
              { content: 'A. 2 and 6/3', correct: false },
              { content: 'B. 4 and 1/4', correct: false },
              { content: 'C. 8 and 2/3', correct: true },
              { content: 'D. 6 and 1/3', correct: false }
            ]
          },
          {
            content: "3. 1/3 + 4/5",
            answers: [
              { content: 'A. 5/8', correct: false },
              { content: 'B. 17/15', correct: true },
              { content: 'C. 1 and 3/5', correct: false },
              { content: 'D. 4/15', correct: false }
            ]
          }
        ]
      }

    ]
  },

  {
    name: 'French',
    quizzes: [
      {
        name: 'Vocabulary',
        questions: [
          {
            content: "1. Choose the correct plural form of: le cheval",
            answers: [
              { content: "A. Les chevail", correct: false },
              { content: "B. Les chevaux", correct: true },
              { content: "C. Les chevals", correct: false },
              { content: "D. Les chevaus", correct: false }
            ]
          },
          {
            content: "2. How do you say wait in French ?",
            answers: [
              { content: "A. Attention", correct: false },
              { content: "B. Attends", correct: true },
              { content: "C. Aller", correct: false },
              { content: "D. A plus", correct: false }
            ]
          },
          {
            content: "3. Quoi in English means __________",
            answers: [
              { content: "A. What", correct: true },
              { content: "B. Why", correct: false },
              { content: "C. When", correct: false },
              { content: "D. Where", correct: false }
            ]
          }
        ]
      }
    ]
  },

  {
    name: 'English',
    quizzes: [
      {
        name: 'Grammar',
        questions: [
          {
            content: "1. Choose the best synonym for cling",
            answers: [
              { content: "A. Throw away", correct: false },
              { content: "B. Shine", correct: false },
              { content: "C. Add color to", correct: false },
              { content: "D. Hold tight", correct: true }
            ]
          },
          {
            content: "2. My brother moved to San Francisco. Before that, he __________lived in Los Angeles all his life",
            answers: [
              { content: "A. Have", correct: false },
              { content: "B. Had", correct: true },
              { content: "C. Had been", correct: false },
              { content: "D. Will have been", correct: false }
            ]
          },
          {
            content: "3. My grandparents live in Japan. They __________ there all their lives",
            answers: [
              { content: "A. Lived", correct: false },
              { content: "B. Have lived", correct: true },
              { content: "C. Are lived", correct: false },
              { content: "D. Lives", correct: false }
            ]
          }
        ]
      }
    ]
  },

  {
    name: 'Business',
    quizzes: [
      {
        name: 'Finance',
        questions: [
          {
            content: '1. "Shareholder wealth" in a firm is represented by',
            answers: [
              { content: "A. The number of people employed in the firm", correct: false },
              { content: "B. The book value of the firm's assets less the book value of its liabilities", correct: false },
              { content: "C. The amount of salary paid to its employees", correct: false },
              { content: "D. The market price per share of the firm's common stock", correct: true }
            ]
          },
          {
            content: "2. What financial statement lists assets from current to long term ?",
            answers: [
              { content: "A. Balance Sheet", correct: true },
              { content: "B. Income Statement", correct: false },
              { content: "C. Cash Flow Statement", correct: false },
              { content: "D. Statement of Retained earnings", correct: false }
            ]
          },
          {
            content: "3. Which is not a cash activity listed on the cash flow statement ?",
            answers: [
              { content: "A. Operating activities", correct: false },
              { content: "B. Investing activities ", correct: false },
              { content: "C. Purchasing activities", correct: true },
              { content: "D. Financing activities", correct: false}
            ]
          }
        ]
      }
    ]
  },

  {
    name: 'Technology',
    quizzes: [
      {
        name: 'AI',
        questions: [
          {
            content: "1. If Human's and AI entities learn from experience what does Machine Learning learn from ?",
            answers: [
              { content: 'A. Numbers', correct: false },
              { content: 'B. Information', correct: false },
              { content: 'C. Data', correct: false },
              { content: 'D. Experience', correct: true }
            ]
          },
          {
            content: "2. The intelligence displayed by humans and other animals is termed ?",
            answers: [
              { content: 'A. Constance', correct: false },
              { content: 'B. Ability', correct: false },
              { content: 'C. Natural intelligence', correct: true },
              { content: 'D. Cognition', correct: false }
            ]
          },
          {
            content: "3. In what year was Artificial intelligence founded as an academic discipline ?",
            answers: [
              { content: 'A. 1990', correct: false },
              { content: 'B. 1956', correct: true },
              { content: 'C. 1912', correct: false },
              { content: 'D. 1909', correct: false }
            ]
          }
        ]
      }
    ]
  },

  {
    name: 'Science',
    quizzes: [
      {
        name: 'Chemistry',
        questions: [
          {
            content: "1. You can't live without water! What is its chemical formula ?",
            answers: [
              { content: 'A. H2', correct: false },
              { content: 'B. O2', correct: false },
              { content: 'C. H2O', correct: true },
              { content: 'D. H2O2', correct: false }
            ]
          },
          {
            content: "2. Which of the following is a noble gas ?",
            answers: [
              { content: 'A. Hydrogen', correct: false },
              { content: 'B. Nitrogen', correct: false },
              { content: 'C. Helium', correct: true },
              { content: 'D. Oxygen', correct: false }
            ]
          },
          {
            content: "3. What is the atomic number of carbon ?",
            answers: [
              { content: 'A. 4', correct: false },
              { content: 'B. 6', correct: true },
              { content: 'C. 8', correct: false },
              { content: 'D. 12', correct: false }
            ]
          }
        ]
      }
    ]
  }
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
