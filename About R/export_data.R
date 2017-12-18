#Exporting data from R
#To txt file
write.table(iris, "mydata_iris.txt", sep="\t")

#To an Excel Spreadsheet
library(xlsx)
write.xlsx(iris, "mydata_iris.xlsx")
