#Cleaning and manipulating the data
#Handling missing values  ##na.strings=""
### REMOVE NA Entites
#Removing cases with missing values
dat.cleaned <- na.omit(dat) # remove all rows with NA values throughout the data frame
dat<-data.frame(iris)
dat[2,3]<-NA
dat[5,4]<-NA
head(dat)
dat.cleaned <- na.omit(dat)
dat.cleaned
#Eliminating cases with NA for selected variables
dat.income.cleaned <- dat[!is.na(dat$Income),]

#Finding cases that have missing values
complete.cases(dat) #returns T or F, T for non-nan values otherwise F 

#Finding cases that have no missing values with complete.cases() function
dat.cleaned <- dat[complete.cases(dat),]

### REPLACE NA Values
# Replacing missing values with the mean
dat$Income.imp.mean <- ifelse(is.na(dat$Income), mean(dat$Income, na.rm=TRUE), dat$Income)

## dealing mean() for NA values
mean(dat$Income) # Result will br NA
mean(dat$Income , na.rm = TRUE) #exclude nan values in computation

# Removing duplicate cases using unique()
salary <- c(20000, 30000, 25000, 40000, 30000, 34000, 30000)
family.size <- c(4,3,2,2,3,4,3)
car <- c("Luxury", "Compact", "Midsize", "Luxury", "Compact", "Compact", "Compact")
prospect <- data.frame(salary, family.size, car)
prospect.cleaned <- unique(prospect)


# To Identify/display duplicates rows
prospect[duplicated(prospect), ]

##############################################

# Rescaling a variable to [0,1]
install.packages("scales")
library(scales)

#To rescale the Income variable to the range [0,1]:
iris.Petal.Length.rescaled <- rescale(iris$Petal.Length)

To rescale a different range than [0,1], use the to argument. The following rescales students$Incometo the range (0,100):
> rescale(iris$Petal.Length, to = c(1, 100))

# Normalizing or standardizing data using Z-score in a data frame
#scale():the scale()function computes the standard Z score for each value (ignoring NAs) of each variable. 
iris.Petal.Length.z <- scale(iris$Petal.Length)# To standardize all the variables in a data frame.

