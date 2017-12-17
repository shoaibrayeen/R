#Vectors
#Create a vector
#numeric
numeric(5)
v1 <- vector("numeric",5)
v1
v1 <- 1:5
v1 <- c(1,2,5,6,7)

#character
v2<-c("a","b","c","w")
v2
class(v2)
#logical
v3 <- c(TRUE,FALSE,TRUE,FALSE)

#Try to mix it up
c(2,"a",1)

#rep function

rep(3,1000)
x <- c(0,1,1,2,3,5,8,13) 

#Try to find the mean and median
mean(v1,na.rm=TRUE)
median(v1)
#Subtract 1 from every value in the above vector
v1<- 1:10
v1 -1

#Make another vector and add it to the above one
v2<- 1:5
v1 + v2


#Give names to vector elements
names(v1) <- c("var1","var2")
v1["var1"]

#Access the vector elements
v1[1]
v1[1:5]
v1[c(2,4,6)]
v1[-4]
#Compare vectors
v1<v2


#Find the number of elements in the vector
length(v1)

#Insert an element into vector
append(v2,34,0)

#Understand the recycling rule
(1:6) + (1:3)
 
#Matrices
#Create an all zero 2x3 matrix
matrix(0,2,3)

#Create a 3x4 matrix from a vector
v1<-1:12
m1<-matrix(v1,3,4,byrow=TRUE)
m1
m2<-matrix(2,4,3)
m2
m1 %*% m2
#Transpose the above matrix
t(m1)


#Multiply two matrices
m1 %*% m2

#Assign descriptive names to rows and columns of the matrix
rownames(m1)<-c()
colnames(m1) <-c()
#Access matrix elements
m1[2,3]
m1["a","b"]
m1[,3]
m1[3,]
matrix1 <- matrix(1:9, nrow=3)
print(matrix1)
for(i in 1:3){
	if(matrix[i,1] >=2){
		matrix1[i,1] <- 0
	}
}
print(matrix1)



vector1 <- 9:7
print(vector1)
while(sum(vector1) >= 6){
	vector1 <- vector1 - 1
	print(vector1)
}

ifelse(matrix1>5, 1, 0)


#Data Frames
myValues1 <- c(348, -343, 937, 394, 124)
myValues2 <- c(T, F, T, T, F)
names1 <- c("Trial1", "Trial2", "Trial3", "Trial4", "Trial5")

#Create a data frame with two columns, myValues1 and myValues2 and the names of rows given by names1
df1<-data.frame(myValues1,myValues2)
rownames(df1)<-names1

#Name the first column "velocity"
colnames(df1)[1] <-"velocity"


#Access elements of data frame
df1$velocity
df1[2,3]

#Summarize the data frame
summary(df1)


#Convert a matrix into a data frame
as.data.frame(m1)

#Edit a data frame
edit(df1)

#Combine two data frames side by side
df1<-data.frame(name1=c("a","b","c",d","e"),age=c(24,23,21,27,28))
df2<-data.frame(city=c("Delhi","Agra","Chandigarh","Jaipur","Kolkata")
cbind(df1,df2)
df3<-data.frame(name1=c("f","G"),age=c(23,19)
rbind(df1,df2)

#Use subset on data frames
subset(df1,select="age,subset=(name1=="a"))


#Lists
#Create a list
l1<-list(c(1,2,3,4),3.14,"a",TRUE,c(TRUE,FALSE))

#Name each component of the list
names(l1)<-c("a","b","c","d")
l1

#Access list elements by position and by name
l1[1]
l1$a
l1[[1]]
#Remove an element from the list
l1[[1]]<-NULL


#Flatten a list into a vector
unlist(l1)

#Factors
#Create a factor
f1<-factor(c("a","b","a","c"))
table(f1)
#What if the factor contains only a subset of possible values and not the entire universe


#Find the frequency of occurence of each level


 
#Apply a function to every element of a list
lapply(l1,length)
sapply(l1,length)

#Apply a function to every row of a matrix
apply(m1,1,mean)

#Use lapply and sapply on a dataframe
sapply(df1,mean)
lapply(df1,mean)
