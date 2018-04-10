L1= letters[1:26]
L2= LETTERS[1:26]
M1= month.abb[1:12]
M2=month.name[1:12]
sample(L1, 2)
set.seed(10)
sample(M1, 5)
set.seed(100)
sample(M1, 5)
grades= LETTERS[1:5]
sgrades= sample(grades, 20, replace = T, prob=c(0.4, 0.2, 0.2, 0.1, 0.1))
sgrades
table(sgrades)
