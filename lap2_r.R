#DATA structure
#vector
#list
#matris
#dataframe

#vector
a <- c(1,2,3,4,5) #concatenate การเชื่อมต่อถึงกัน
a

vec1 <- 1:10
vec1

vec2 <- rnorm(100) #rnorm (nomal distribution)
vec2

rep(c(1,2,3),10) #replicate element ทำซ้ำ
?rep
help(rep)
help(rnorm)

?seq
help(seq)
seq(0,100,5)
seq(100,0,-5)

print(vec1)
print(seq(0,100,5))

vec3 <- 3.8:11.4
print(vec3)

s <- c('apple','red',TRUE)
print(s)

#logical vector
l <- c(TRUE,FALSE,TRUE)
print(l)

ll <- c(T , F , T)
print(ll)

#acccess vector element position
t <- c("sun","mon","tue","wed","thurs","fri","sat")
u <- t[c(2,3,6)]
print(u)

x <- t[c(-2,-5)]
print(x)

y <- t[c(0,0,0,0,0,0,1)]
print(y)

#sum vector
v1 <- c(3,5,7,9,11)
v2 <- c(2,4,6,8,10)

add.result <- v1+v2
print(add.result)

sub.result <- v1-v2
print(sub.result)

mul.result <- v1*v2
print(mul.result)

div.result <- v1/v2
print(div.result)

#SORT ELEMENT VECTOR
v3 <- c(3,8,4,7,9,2,6,1) 
sort.result <- sort(v3) #น้อยไปมาก
print(sort.result)

sortd.result <- sort(v3,decreasing = T) #มากไปน้อย
print(sortd.result)

#LIST
name <- c("ronaldo","messi","rooney")
age <- c("37","34","40")
clup <- c("manu","psg","manu")
retired <- c(F,F,T)

my.list <- list(name,age,retired)
print(my.list)

my.list2 <- list(player.name =name,
                 player.age=age,
                 player.clup =clup,
                 retired=retired)
print(my.list2)

list.data <- list("red","green",c(20,30,40),T,5,15,25)
print(list.data)

print(list.data[2])
print(list.data[3])
print(list.data[4])
print(list.data[5])
lsit.data[5] <- 50
print(list.data)
print(list.data[5])

list1 <- list(1,2,3)
list2 <- list("one","two","three")

merge.list <- c(list1,list2)
print(merge.list)

vec4 <- c(1,2,3,"one","two","three",T,F)
print(vec4)

list3 <- list(2,4,6)
list4 <- list(8,10,12)
v3 <- unlist(list3)
v4 <- unlist(list4)

print(v3+v4)  


#matrix(data,nrow,ncol,byrow,dimnames)

matrix(1:3,nrow=1)
matrix(1:9,nrow=3)
matrix(1:9,nrow=3,byrow = T)

matrix(5,nrow=1)

matrix(1:4,nrow=2)
matrix(1:4,nrow=2,byrow = T)

matrix(1:9,nrow=3,ncol = 3)
matrix(1:9,nrow=3,byrow = T)

matrix(1:6,nrow=3)


my.mat <- matrix(1:9,nrow=3,byrow=T)
colnames(my.mat) <- c("A","B","C")
rownames(my.mat) <- c("row1","row2","row3")

my.mat

cbind(my.mat,my.mat)
rbind(my.mat,my.mat)

my.mat2 <- my.mat*10
my.mat2

#acccess matrix
print(my.mat2[1:1])
print(my.mat2[2:2])
print(my.mat2[3:3])

#access only row
print(my.mat2[2,])

#access only col
print(my.mat2[,3])

#crate 2*3
mat1 <- matrix(c(3,9,-1,4,2,6),nrow=2)
mat2 <- matrix(c(5,2,0,9,3,4),nrow = 2)

print(mat1)
print(mat2)

#add matrix
mat.result <- mat1+mat2
cat("Result of addition","\n")
print(mat.result)

#sud matrix
mat.result <- mat1-mat2
cat("Result of sudtraction","\n")
print(mat.result)

#mul matrix
mat.result <- mat1*mat2
cat("Result of multiplication","\n")
print(mat.result)

#div matrix
mat.result <- mat1/mat2
cat("Result of division","\n")
print(mat.result)

#datafRAME
cities <- c("bkk","tokyo","london")
connties <- c("th","jpn","uk")
population <- c(1000000,2000000,5000000)

m.df <- data.frame(cities,connties,population)
print(m.df)


emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("rick","dan","mic","ryan","gray"),
  salary = c(500,600,700,800,900),
  start_data = as.Date(c("2012-02-15","2012-02-15","2012-02-15","2012-02-15","2012-02-15")))

print(emp.data)
str(emp.data)

#extract column

result.emp <- data.frame(emp.data$emp_name,emp.data$salary)

print(result.emp)

resul.emp2 <- emp.data[1:2,]
print(resul.emp2)

result.emp3 <- emp.data[c(3,5),c(2,4)]
print(result.emp3)

emp.data$dept <- c("it","operator","hr","sale","security")
print(emp.data)


emp.data2 <- data.frame(
  emp_id = c(6:8),
  emp_name = c("jo","a","b"),
  salary = c(1500,2600,3700),
  start_data = as.Date(c("2012-02-15","2012-02-15","2012-02-15")),dept=c("opertor","it","hr"))

emp.newdata <- rbind(emp.data,emp.data2)
print(emp.newdata)

#built in data frame
data()

data(mtcars)
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)

summary(mtcars)
