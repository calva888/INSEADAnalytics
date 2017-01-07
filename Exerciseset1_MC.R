getwd()
getwd()
getwd()

setwd("C:/Users/calva888/Documents/R/INSEADAnalytics/Exercises/Exerciseset1")
list.files()

nrow(StockReturns)

rownames(StockReturns)[1]

tail(rownames(StockReturns),1)

round(100*sum(StockReturns[1]),1)

round(100*mean(StockReturns[,1]),3)

round(100*sd(StockReturns[,1]),3)

SPY = StockReturns[,"SPY"]
pnl_plot(SPY)

round(100*sum(StockReturns[,2]),1)

round(100*mean(StockReturns[,2]),3)

round(100*sd(StockReturns[,2]),3)


*PART 2 

class(StockReturns)
dim(StockReturns)
nrow(StockReturns)
ncol(StockReturns)
StockReturns[1:4,]
head(StockReturns,5)
tail(StockReturns,5) 
portfolio = apply(StockReturns,1,mean)
names(portfolio) <- rownames(StockReturns)
pnl_plot(portfolio)
transposedData = t(StockReturns)
nrow(transposedData)
ncol(transposedData)
portfolio = apply(transposedData,2,mean)
names(portfolio) <- colnames(StockReturns)
pnl_plot(portfolio)



*PART 3
*1.	**Not sure, wouldn't we have had to manipulate the data download?


*PART 4
write.csv(StockReturns[1:20,c("SPY","AAPL")], file = "twentydays.csv", row.names = TRUE, col.names = TRUE) 
*Warning message:
*In write.csv(StockReturns[1:20, c("SPY", "AAPL")], file = "twentydays.csv",  :
*attempt to set 'col.names' ignored
myData <- read.csv(file = "twentydays.csv", header = TRUE, sep=";")
sum(myData != StockReturns[1:20,])
*Nothing will happen and you will get an error message because the program does not know what to do with both data strings.  Sum should have been used


*CLOSING
rmarkdown::render("Exercises/ExerciseSet1.Rmd")
*Error in loadNamespace(name) : there is no package called 'rmarkdown'
