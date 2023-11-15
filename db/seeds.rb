
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
      },
      {
        name: 'Grammar',
        questions: [
          {
            content: "1. Define: une fois",
            answers: [
              { content: "A. Once", correct: false },
              { content: "B. One time", correct: true },
              { content: "C. This time", correct: false },
              { content: "D. Once upon a time", correct: false }
            ]
          },
          {
            content: "2. How do you say 'fortunately' in French ?",
            answers: [
              { content: "A. Heureusement", correct: false },
              { content: "B. Malheureusement", correct: true },
              { content: "C. Quelquefois", correct: false },
              { content: "D. A plus", correct: false }
            ]
          },
          {
            content: "3. Choose the correct verb forms: quand tu ____petit, tu ____ jouer aux dames ou jouer aux billes ?",
            answers: [
              { content: "A. As été, as préféré", correct: false },
              { content: "B. Etait, préférait", correct: false },
              { content: "C. Etais, préférais", correct: true },
              { content: "D. Etais, as préféré", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Spelling',
        questions: [
          {
            content: "1. How do you spell the Word pool in french ?",
            answers: [
              { content: "A. Picin", correct: false },
              { content: "B. Piscine", correct: true },
              { content: "C. Pescine", correct: false },
              { content: "D. Pissine", correct: false }
            ]
          },
          {
            content: "2. How do you spell the snail in french ?",
            answers: [
              { content: "A. Eskargo", correct: false },
              { content: "B. Escargot", correct: true },
              { content: "C. Escrgot", correct: false },
              { content: "D. Escagot", correct: false }
            ]
          },
          {
            content: "3. How do you spell the Word book in french ?",
            answers: [
              { content: "A. Live", correct: false },
              { content: "B. Levre", correct: false },
              { content: "C. Livre", correct: true },
              { content: "D. Liver", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Conjugation',
        questions: [
          {
            content: "1. Je ___que le temps est beau aujourd'hui",
            answers: [
              { content: "A. Pensent", correct: false },
              { content: "B. Penser", correct: false},
              { content: "C. Piense", correct: false },
              { content: "D. Pense", correct: true }
            ]
          },
          {
            content: "2. Il ___un chien marron",
            answers: [
              { content: "A. Choisis", correct: false },
              { content: "B. Choisit", correct: true },
              { content: "C. Choisi", correct: false },
              { content: "D. Choisissons", correct: false }
            ]
          },
          {
            content: "3. Tu ____ton stylo",
            answers: [
              { content: "A. Perds", correct: true },
              { content: "B. Perd", correct: false },
              { content: "C. Pierde", correct: false },
              { content: "D. Perdez", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Literature',
        questions: [
          {
            content: "1. Where was Nobel Prize winner George Bernard Shaw born ?",
            answers: [
              { content: "A. Dublin, Ireland", correct: true },
              { content: "B. New York, New York", correct: false },
              { content: "C. Paris, France", correct: false },
              { content: "D. London, England", correct: false }
            ]
          },
          {
            content: "2. Winner of the Nobel Prize in Literature Albert Camus is best-know for what existential novel ?",
            answers: [
              { content: "A. The stranger", correct: true },
              { content: "B. Crime and Punishment", correct: false },
              { content: "C. Being and Nothingness", correct: false },
              { content: "D. Humanism and Terror", correct: false }
            ]
          },
          {
            content: "3. What type of literature is 2005 Nobel Prize winner Harold Pinter best know for ?",
            answers: [
              { content: "A. Plays", correct: true },
              { content: "B. Allegory", correct: false },
              { content: "C. Poetry", correct: false },
              { content: "D. Short Stories", correct: false }
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
      },
      {
        name: 'Vocabulary',
        questions: [
          {
            content: "1. Decline (verb)",
            answers: [
              { content: "A. To say no to something, usually politely", correct: true },
              { content: "B. To show or suggest indirectly", correct: false },
              { content: "C. To admire someone", correct: false },
              { content: "D. Not to do something", correct: false }
            ]
          },
          {
            content: "2. Mutual (adjective)",
            answers: [
              { content: "A. Admirable", correct: false },
              { content: "B. Possible", correct: false },
              { content: "C. Common, shared by two or more people toward one another", correct: true },
              { content: "D. Proper, suitable", correct: false }
            ]
          },
          {
            content: "3. Respect (noun)",
            answers: [
              { content: "A. Admiration", correct: true },
              { content: "B. Retiree", correct: false },
              { content: "C. Expectation", correct: false },
              { content: "D. Representation", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Spelling',
        questions: [
          {
            content: "1. Choose the correct spelling of the word that means to cease to be seen; vanish from sight",
            answers: [
              { content: "A. Disappear", correct: true },
              { content: "B. Dissapear", correct: false },
              { content: "C. Disapier", correct: false },
              { content: "D. Disapper", correct: false }
            ]
          },
          {
            content: "2. Choose the spelling of the word that means to offer an excuse for some fault, insult, failure, or injury",
            answers: [
              { content: "A. Apologise", correct: false },
              { content: "B. Apoligize", correct: false },
              { content: "C. Apologize", correct: true },
              { content: "D. Apilogise", correct: false }
            ]
          },
          {
            content: "3. Choose the correct spelling of the word that describes an act or circumstance of entering upon an action or state",
            answers: [
              { content: "A. Beggining", correct: false },
              { content: "B. Beginning", correct: true },
              { content: "C. Begining", correct: false },
              { content: "D. Beginin", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Conjugation',
        questions: [
          {
            content: "1. My brother____classical music, he prefers rock",
            answers: [
              { content: "A. Likes", correct: false },
              { content: "B. Like", correct: false },
              { content: "C. Doesn't like", correct: true },
              { content: "D. Liked", correct: false }
            ]
          },
          {
            content: "2. I usually ____to the movies on saturdays",
            answers: [
              { content: "A. Go", correct: true },
              { content: "B. Goes", correct: false },
              { content: "C. Going", correct: false },
              { content: "D. Went", correct: false }
            ]
          },
          {
            content: "3. He ________a cup of coffee now",
            answers: [
              { content: "A. Drinks", correct: false },
              { content: "B. Is drinking", correct: true },
              { content: "C. Drink", correct: false },
              { content: "D. Doesn't drink", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Literature',
        questions: [
          {
            content: "1. One of the following is not a type of drama",
            answers: [
              { content: "A. Burlesque", correct: false },
              { content: "B. Resolution", correct: true },
              { content: "C. Tragedy", correct: false },
              { content: "D. Pantomime", correct: false }
            ]
          },
          {
            content: "2. The analysis of the metrical pattern of a poem is",
            answers: [
              { content: "A. Prosody", correct: false },
              { content: "B. Appreciation", correct: false },
              { content: "C. Scancion", correct: true },
              { content: "D. Style", correct: false }
            ]
          },
          {
            content: "3. One of the following is correct",
            answers: [
              { content: "A. Dramatization occurs only in plays", correct: false },
              { content: "B. Only prose and drama use dramatization", correct: true },
              { content: "C. Dramatization is used in poetry", correct: false },
              { content: "D. Dramatization is found only in prose", correct: false }
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
