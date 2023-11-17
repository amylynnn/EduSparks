
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
        video_url: 'https://www.youtube.com/embed/NybHckSEQBI?si=ko6XXQC24uEoPHXD',
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
            content: "2. The product is the result:",
            answers: [
              { content: "A. Of an addition", correct: false },
              { content: "B. Of a subtraction", correct: false },
              { content: "C. Of a division", correct: false },
              { content: "D. Of a multiplication", correct: true }
            ]
          },
          {
            content: "3. What is the square of the quarter of the third of 12 ?",
            answers: [
              { content: "A. Nine", correct: false },
              { content: "B. One", correct: true },
              { content: "C. Three", correct: false },
              { content: "D. Two", correct: false }
            ]
          },
          {
            content: "4. If 1+2+….+k=55, then the value of k is",
            answers: [
              { content: "A. 10", correct: true },
              { content: "B. 11", correct: false },
              { content: "C. 12", correct: false },
              { content: "D. 13", correct: false }
            ]
          },
          {
            content: "5. The 10th term of the sequence whose nth term is (3n-2) is :",
            answers: [
              { content: "A. 28", correct: true },
              { content: "B. 42", correct: false },
              { content: "C. 35", correct: false },
              { content: "D. 32", correct: false }
            ]
          },
          {
            content: "6. If cot A = 12/5, then the value of (sin A + cos A) x cosec A is :",
            answers: [
              { content: "A. 13/5", correct: false },
              { content: "B. 17/5", correct: true },
              { content: "C. 14/5", correct: false },
              { content: "D. 1", correct: false }
            ]
          },
          {
            content: "7. Solve for x :   2x + y = 8,    y= - 6",
            answers: [
              { content: "A. 6", correct: false },
              { content: "B. 4", correct: false },
              { content: "C. 7", correct: true },
              { content: "D. 16", correct: false }
            ]
          },
          {
            content: "8. The sum of exponents of prime factors of number 72072 is divisible by __",
            answers: [
              { content: "A. 3", correct: false },
              { content: "B. 4", correct: true },
              { content: "C. 5", correct: false },
              { content: "D. 6", correct: false }
            ]
          },
          {
            content: "9. The remainder when 5 - 4x +1 is divided by x- 3 is :",
            answers: [
              { content: "A. 43", correct: false },
              { content: "B. 34", correct: true },
              { content: "C. 44", correct: false },
              { content: "D. 33", correct: false }
            ]
          },
          {
            content: "10. The rots of the equation +x -182=0 are :",
            answers: [
              { content: "A. 14 and 13", correct: false },
              { content: "B. -14 and 13", correct: true },
              { content: "C. 12 and 15", correct: false },
              { content: "D. -12 and 15", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Statistics',
        video_url: "https://www.youtube.com/embed/XZo4xyJXCak?si=NpDJMOYr14_3rDYd",
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
              { content: 'A. One', correct: false },
              { content: 'B. Two', correct: true },
              { content: 'C. None', correct: false },
              { content: 'D. Seven', correct: false }
            ]
          },
          {
            content: "4. The qualities of discrete data can be :",
            answers: [
              { content: 'A. Measured', correct: false },
              { content: 'B. Counted', correct: true },
              { content: 'C. Both', correct: false },
              { content: 'D. None', correct: false }
            ]
          },
          {
            content: "5. The qualities of continuous data can be :",
            answers: [
              { content: 'A. Measured', correct: true },
              { content: 'B. Counted', correct: false },
              { content: 'C. Both', correct: false },
              { content: 'D. None', correct: false }
            ]
          },
          {
            content: "6. Daily rainfall is an example of what sort of data :",
            answers: [
              { content: 'A. Discrete', correct: false },
              { content: 'B. Continuous', correct: true },
              { content: 'C. Both', correct: false },
              { content: 'D. None', correct: false }
            ]
          },
          {
            content: "7. The distance that a cyclist rides each day is what sort of data :",
            answers: [
              { content: 'A. Discrete', correct: false },
              { content: 'B. Continuous', correct: true },
              { content: 'C. Both', correct: false },
              { content: 'D. None', correct: false }
            ]
          },
          {
            content: "8. The frequency of a cyclist riding over a few kms weekly is this sort of data",
            answers: [
              { content: 'A. Discrete', correct: true },
              { content: 'B. Continuous', correct: false },
              { content: 'C. Both', correct: false },
              { content: 'D. None', correct: false }
            ]
          },
          {
            content: "9. Which of the following is a discrete variable ?",
            answers: [
              { content: 'A. The height of individuals in a classroom', correct: false },
              { content: 'B. The number of students in a classroom', correct: true },
              { content: 'C. The temperature in degrees Celsius', correct: false },
              { content: 'D. The time it takes for a car to travel one mile', correct: false }
            ]
          },
          {
            content: "10. What is the recent population of the Philippines last 2007 ?",
            answers: [
              { content: 'A. 88.57M', correct: true },
              { content: 'B. 67.34M', correct: false },
              { content: 'C. 99.89M', correct: false },
              { content: 'D. 80.00M', correct: false }
            ]
          }
        ]
      },
      {
        name: 'Calculus',
        video_url: "https://www.youtube.com/embed/WsQQvHm4lSw?si=M-W6e6YPrBZheswY",
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
        video_url: "https://www.youtube.com/embed/SkidyDQuupA?si=okhOmMAwmoiZQ8kU",
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
        video_url: "https://www.youtube.com/embed/pmTxwVQdJNU?si=0KcTY95KyYbmauyL",
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
        video_url: "https://www.youtube.com/embed/XR-F2ggDODY?si=nZyo58WccjJR-98v",
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
          },
          {
            content: "4. Choose the correct meaning of the following word: Laid",
            answers: [
              { content: "A. Ugly", correct: true },
              { content: "B. Mean", correct: false },
              { content: "C. Pretty", correct: false },
              { content: "D. Funny", correct: false }
            ]
          },
          {
            content: "5. Choose the correct meaning of the following word: Amusant",
            answers: [
              { content: "A. English", correct: false },
              { content: "B. Amazing", correct: false },
              { content: "C. Funny", correct: true },
              { content: "D. Silly", correct: false }
            ]
          },
          {
            content: "6. On y va is _________",
            answers: [
              { content: "A. Come back", correct: true },
              { content: "B. Let's go", correct: false },
              { content: "C. Let's listen", correct: false },
              { content: "D. Come home", correct: false }
            ]
          },
          {
            content: "7. The word 'repeat' is spelled as _________ in French",
            answers: [
              { content: "A. Repeater", correct: false },
              { content: "B. Repetez", correct: true },
              { content: "C. Repouser", correct: false },
              { content: "D. Retander", correct: false }
            ]
          },
          {
            content: "8. How well do you know French movie vocabulary : une étoile",
            answers: [
              { content: "A. A trailer", correct: false },
              { content: "B. Glitter", correct: false },
              { content: "C. Un réalisateur", correct: false },
              { content: "D. A star", correct: true }
            ]
          },
          {
            content: "9. Plural form of Goose ",
            answers: [
              { content: "A. Ghee", correct: false },
              { content: "B. Fishes", correct: false },
              { content: "C. Geese", correct: true },
              { content: "D. Guns", correct: false }
            ]
          },
          {
            content: "10. Collective noun of player is",
            answers: [
              { content: "A. A team", correct: true },
              { content: "B. A band", correct: false },
              { content: "C. An army", correct: false },
              { content: "D. A pack", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Grammar',
        video_url: "https://www.youtube.com/embed/9q7nx6kzvD0?si=Cf5uWEW6cHUuC6SW",
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
          },
          {
            content: "4. Translate 'boat' into french",
            answers: [
              { content: "A. Bateau", correct: true },
              { content: "B. Baton", correct: false },
              { content: "C. Bar", correct: false },
              { content: "D. Blaireau", correct: false }
            ]
          },
          {
            content: "5. What does voiture mean in English ?",
            answers: [
              { content: "A. Mansion", correct: false },
              { content: "B. Tools", correct: false },
              { content: "C. Car", correct: true },
              { content: "D. House", correct: false }
            ]
          },
          {
            content: "6. Bisou means ?",
            answers: [
              { content: "A. Drop", correct: false },
              { content: "B. Kiss", correct: true },
              { content: "C. Flight", correct: false },
              { content: "D. Anger", correct: false }
            ]
          },
          {
            content: "7. Citrouille",
            answers: [
              { content: "A. Orange", correct: false },
              { content: "B. Pumpkin", correct: true },
              { content: "C. Washcloth", correct: false },
              { content: "D. Dryer", correct: false }
            ]
          },
          {
            content: "8. Translate 'olive' into french",
            answers: [
              { content: "A. Oliver", correct: false },
              { content: "B. Olive", correct: true },
              { content: "C. Olivier", correct: false },
              { content: "D. Olivet", correct: false }
            ]
          },
          {
            content: "9. Choose the correct translation of 'une forêt'",
            answers: [
              { content: "A. A forest", correct: true },
              { content: "B. A park", correct: false },
              { content: "C. A three", correct: false },
              { content: "D. A tree", correct: false }
            ]
          },
          {
            content: "10. Biology",
            answers: [
              { content: "A. Le biology", correct: false },
              { content: "B. La bilogy", correct: false },
              { content: "C. La Biologie", correct: true },
              { content: "D. Le biologie", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Spelling',
        video_url: "https://www.youtube.com/embed/OKHN7O2kwJQ?si=tvjN82d_f5YEElJV",
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
        video_url: "https://www.youtube.com/embed/TuyciMzXdbI?si=X1JVmQGlTWCw8BaQ",
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
        video_url: "https://www.youtube.com/embed/qTXtVhq3pxs?si=0sr48vfhoSvFkxLj",
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
        video_url: "https://www.youtube.com/embed/8IogxPUrW7k?si=9dAlZ7-k3pnSv-pf",
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
          },
          {
            content: "4. Choose the correct answer- The house was locked, so __________ could get in",
            answers: [
              { content: "A. Everybody", correct: false },
              { content: "B. Anybody", correct: false },
              { content: "C. Somebody", correct: false },
              { content: "D. Nobody", correct: true }
            ]
          },
          {
            content: "5. Some people have difficulty in making __________ understood",
            answers: [
              { content: "A. Themselves", correct: true },
              { content: "B. Them", correct: false },
              { content: "C. One", correct: false },
              { content: "D. Oneself", correct: false }
            ]
          },
          {
            content: "6. You look __________ a ghost",
            answers: [
              { content: "A. Lived", correct: false },
              { content: "B. Have lived", correct: false },
              { content: "C. As though to see", correct: false },
              { content: "D. As if you had seen", correct: true }
            ]
          },
          {
            content: "7. Alex: I don't think I'll come with you tomorrow. Jim:  OK, but let me know if you __________",
            answers: [
              { content: "A. Move your opinion", correct: false },
              { content: "B. Change your mind", correct: true },
              { content: "C. Change idea", correct: false },
              { content: "D. Alert your mind", correct: false }
            ]
          },
          {
            content: "8. __________ to see the new offices yet ?",
            answers: [
              { content: "A. Have you had a chance", correct: true },
              { content: "B. Did you get the possibility", correct: false },
              { content: "C. Have you got the occasion", correct: false },
              { content: "D. Do you get the opportunity", correct: false }
            ]
          },
          {
            content: "9. The English __________ when meeting for the first time",
            answers: [
              { content: "A. Hold hands", correct: false },
              { content: "B. Give the hand", correct: false },
              { content: "C. Offer the hand", correct: false },
              { content: "D. Shake hands", correct: true }
            ]
          },
          {
            content: "10. The bus has gone. Can you __________ home ?",
            answers: [
              { content: "A. Make me a ride", correct: false },
              { content: "B. Give me a lift", correct: true },
              { content: "C. Ride me", correct: false },
              { content: "D. Pick me up", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Vocabulary',
        video_url: "https://www.youtube.com/embed/4m9tDeLEbI4?si=HLONSm7ul4M48dwF",
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
          },
          {
            content: "4. Some scientists believe that humans have caused _______ damage to our planet",
            answers: [
              { content: "A. Incoherent", correct: false },
              { content: "B. Illiterate", correct: false },
              { content: "C. Immutable", correct: false },
              { content: "D. Irreparable", correct: true }
            ]
          },
          {
            content: "5. Dancing skills are _____ to the requirements of an accountant's job",
            answers: [
              { content: "A. Irreverent", correct: false },
              { content: "B. Ineligible", correct: false },
              { content: "C. Irrelevant", correct: true },
              { content: "D. Immutable", correct: false }
            ]
          },
          {
            content: "6. Which prefix fits best with 'interpret'?",
            answers: [
              { content: "A. Mis-", correct: true },
              { content: "B. Mal-", correct: false },
              { content: "C. Male-", correct: false },
              { content: "D. None of the above", correct: false }
            ]
          },
          {
            content: "7. Choose the correct spelling :",
            answers: [
              { content: "A. Weard", correct: false },
              { content: "B. Wierd", correct: false },
              { content: "C. Weird", correct: true },
              { content: "D. Weerd", correct: false }
            ]
          },
          {
            content: "8. In the middle ages, armies would _____ entire towns, cutting off their supplies",
            answers: [
              { content: "A. Reign", correct: false },
              { content: "B. Beseige", correct: false },
              { content: "C. Riegn", correct: false },
              { content: "D. Besiege", correct: true }
            ]
          },
          {
            content: "9. Choose the correct spelling :",
            answers: [
              { content: "A. Proficeint", correct: false },
              { content: "B. Profishient", correct: false },
              { content: "C. Profiecient", correct: false },
              { content: "D. Proficient", correct: true }
            ]
          },
          {
            content: "10. Natalia was very ________ tonight. Do you think she's OK ? ",
            answers: [
              { content: "A. Extroverted  ", correct: false },
              { content: "B. Confident", correct: false },
              { content: "C. Quiet", correct: true },
              { content: "D. intravert", correct: false }
            ]
          }
        ]
      },
      {
        name: 'Spelling',
        video_url: "https://www.youtube.com/embed/eVf10XmUGqQ?si=uG0tHyfiLYjfHQkV",
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
        video_url: "https://www.youtube.com/embed/PQG_gYFePD4?si=qH0GDb54jL_Ie94X",
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
        video_url: "https://www.youtube.com/embed/_-0p_x7idB0?si=5RT8hcltAZKZKC9r",
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
        video_url: "https://www.youtube.com/embed/oKxzoDskVr4?si=VUskSBuMFP2VDdRR",
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
        video_url: "https://www.youtube.com/embed/MXkoN4rql3g?si=nG5aujzDaXZ4grVr",
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
        video_url: "https://www.youtube.com/embed/k3rRrl9J2F4?si=ZEyVV26gpgbbCmMr",
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
    quiz = subject.quizzes.create(name: quiz_data[:name], video_url: quiz_data[:video_url])
    quiz_data[:questions].each do |question_data|
      question = quiz.questions.create(content: question_data[:content])
      question_data[:answers].each do |answer_data|
        question.answers.create(content: answer_data[:content], correct: answer_data[:correct])
      end
    end
  end
end

puts "Created #{Subject.count} subjects."
