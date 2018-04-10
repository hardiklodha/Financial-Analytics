# Data Structures in R

#Vectors----
v1 = c('A','B','C')
v1
class(v1)
( v2 = c(1, 2) )
v2
class(v2)
v3 = c(TRUE, FALSE , TRUE)
class(v3)

v4 = 100:200
v4 [c(1,2,5)]
v4[v4>150]
v5= seq(1,10,2)
v7 = c('A', 'C')
v1[v1 %in% v7]

#Matrix----
mymatrix= matrix(1:24, ncol=4, byrow=T)
mymatrix
mymatrix1= matrix(1:24, ncol=4, byrow=F)
mymatrix1
mymatrix1 [2:4, 3:4]
mymatrix1 [, 3:4]
mymatrix1 [5, 3]
rn = (paste('R', 1:6, sep='_'))
cn = (paste('C', 1:4, sep=' '))
dimnames(mymatrix)= list(c(rn), c(cn))
mymatrix[c('R_1', 'R_3'), ]
colSums(mymatrix)
colMeans(mymatrix)

#Arrays----
( myarray= array( 101:124, dim =c(4,3,2) ) )
( myarray= array( 1:24, dim =c(4,3,2), dimnames = list(c('s1','s2', 's3', 's4'),c('sub1','sub2', 'sub3'), c('dept1','dept2') ) ) )
summary(myarray)
str(myarray)
sum(myarray[, ,1])
apply(myarray, 1 , sum)
apply(myarray, c(1,2) , max) #jo nahi likha uske corresponding values

#Lists----
listL1 = list(v1, students, mymatrix, myarray)
listL1

#Factors----


#DataFrame----
rollno = c(1,2,3)
name = c('rohit', 'lalit', 'hitesh')
course = c('MBA', 'BBA', 'MCA')
dept = c('Dept1', 'Dept1', 'Dept2')
marks =floor(rnorm(3,50,10))
students = data.frame(rollno, name, course, dept, marks)
students
class(students)
str(students)
summary(students)

df = data.frame(rollno= c(1,2,3),name= c('rohit', 'lalit', 'hitesh'),course= c('MBA', 'BBA', 'MCA') , dept= c('Dept1', 'Dept1', 'Dept2'), marks= floor(runif(3,50,100)))
df


name = c('s1', 's2', 's3', 's4', 's5')
course = c('btech', 'phd', 'mtech', 'btech', 'mtech')
gender = c('M', 'F', 'M', 'F', 'M')
grades = c('A', 'B', 'C', 'A', 'F')
marks = c(runif(5,50,100))
df=data.frame(name, course, gender, grades, marks)
summary(df)
df$name
df[1:2, ]
df$name
df$name= as.character(df$name)
str(df)
df$grades = factor(df$grades, ordered = T, levels = c('A', 'B', 'C', 'D', 'E', 'F'))
str(df)
df$grades
df$gender = factor(df$gender, ordered=T, levels = c('M', 'F'))
str(df)
