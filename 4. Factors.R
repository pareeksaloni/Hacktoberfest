#Factors-----------------------------------------

gender <- c("F","M","O","F","F","F","M","F","O","M")
gender

gender_fac <- factor(gender)
gender_fac

str(gender_fac)

#change the order of levels
gender_fac1 <- factor(gender, levels = c("M","F","O"))
str(gender_fac1)

is.vector(gender_fac1)
is.factor(gender_fac1)
class(gender_fac)
length(gender_fac1)

#factor specific functions
nlevels(gender_fac1)
levels(gender_fac1)
levels(gender_fac)

#labelling the values
#first method
gender_fac2 <- factor(gender, levels = c("M","F","O"),
                      labels = c("Male","Female","Others"))
gender_fac2
gender_fac1
#second method
levels(gender_fac1) <- c("Male","Female","Others")
gender_fac1

size <- c("s","m","s","s","m","l","l","m")

size_fac <- factor(size)  
size_fac 

size_fac1 <- factor(size, ordered = TRUE) #this is ordinal data
size_fac1  
  
size_fac2 <- factor(size, ordered = TRUE, 
                    levels = c("s","m","l"))
size_fac2  

#indexing 
gender_fac2[2]
gender_fac2[c(2,6)]
gender_fac2[-2]


#logical operations (only for ordered factors)
gender_fac2[2] > gender_fac2[5] #error
size_fac2
size_fac2[2] > size_fac2[5]
size_fac2[2] == size_fac2[8]


