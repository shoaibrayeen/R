#Know your working directory
print(getwd())
#Set your working directory
setwd("E:/")

#Save your workspace
save.image()

#View your command history
history(Inf)

#Display your search path
search()

#Load a package into memory
library(MASS)

#Unload a loaded package
detach(package=="MASS")

#Access a built in loaded dataset (package:datasets)
iris

#See a list of loaded datasets
data()

#Access a dataset from some other installed but not loaded package
data(datasets,package="CO2")

#List the datasets in all available packages
data(package=.packages(all.availabe=TRUE))

#List all the installed packages
installed.packages()
	
#Install package from CRAN


#Help yourself
help("mean")

#Prompt nicely
options(prompt="R>")

#Run the whole script from command prompt
source("D:\\R Programming Data.zip\\R Programming Data")
