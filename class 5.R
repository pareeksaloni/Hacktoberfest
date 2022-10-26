class 5


v = 1:12
v

mat1 = matrix(data=v,nrow=3)
mat1
matrix(v,3)
matrix(v,3,4)
v[3]

mat4 = matrix(v,nrow=3,dimnames = list(c("r1","r2","r3"),c("c1","c2","c2","c4")))
mat4

#other ways of giving colnames and rownames
rownames(mat1)=c("r1","r2","r3")
colnames(mat1) = c("c1","c2","c2","c4")
mat1

#basic functions

is.matrix(mat1)
class(mat1)
nrow(mat1)
ncol(mat1)
dim(mat1)
str(mat1)
dimnames(mat1)

as.matrix(v) #no. of rows = no. of elements


#coercing to same data type
v1 = c("a","b","c",1,2,3)
matrix(v1,nrow=2)
mat5 = matrix(v1,nrow=2)
typeof(mat5)
is.numeric(mat5)
str(mat5)

v1 = matrix(c(1,2,3,"a","b","c"),nrow=3)

#rbind and cbind

r3 = c(1,2,3)
r4 = c(4,5,6)

m = rbind(r3,r4)
m


#mAtrix of matrices

mat1
mat4
rbind(mat1,mat4)

r3
r5 = c(4,5,6,7)
rbind(r3,r5)  #recycles smaller vector


r6 = 1:8
rbind(r5,r6)

mat1
c5 = c(13,14,15)
c6 = c(16,17,18)
cbind(mat1,c5)

mat1
mat4
mat5

#indexation
v[7]
mat1[2,2]  #[ ] is a location brackets
mat5[2,]
mat5[,2]
mat4[c(2,3),c(3,4)]
mat4[2:3,3:4]
mat1[-2,] # thos means everything except second row

#if we want to change the value 
mat1
mat1[2,3] = 0
mat1



mat1["r1",]
mat1["r1",c("c1","c2")]


mat1[mat1>7] #in form of vector
mat1[mat1>=7 & mat1<=11]


#arithmetic operations 
#scalar operations
mat1+5 #to add 5 to all the elements


mat3 = matrix(1:8,2)
mat1+mat3  #not of same dimensions


rowSums(mat1) #row wise sum
colSums(mat1) #col wise sum
rowMeans(mat1)
mat1


mat1+mat4
mat1* mat4 #element wise 

#matrix multiplication
mat7 = matrix(v,4)
mat7
mat1%*%mat7
#(r1 x c1) %*% (r2 x c2) = (r1 x c2)


#transpose
t(mat1)


#square matrix
n1=matrix(1:4, nrow=2)
n1
det(n1)                  #we can only calculate inverse for square matrix

#inverse
solve(n1)




