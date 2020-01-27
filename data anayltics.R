getwd()
Hw<-read.csv("Section6-Homework-Data.csv")
summary(Hw)
str(Hw)
levels(Hw$Genre)
Filter<-Hw$Genre=="action" | Hw$Genre=="adventure" | Hw$Genre=="animation" | Hw$Genre=="comedy" | Hw$Genre=="drama"
mov1<-Hw[Filter,]
Filter2<-Hw$Studio=="Buena Vista Studios" | Hw$Studio=="Fox" | Hw$Studio=="Paramount Pictures"| Hw$Studio=="Sony" | Hw$Studio=="Universal" | Hw$Studio=="WB"
mov2<-Hw[Filter2,]
mov2
FinalData<-Hw[Filter & Filter2,]
head(FinalData)
levels(FinalData$Studio)
levels(FinalData$Genre)
library(ggplot2)
movie<-ggplot(data=FinalData,aes(x=Genre,y=Gross...US))
movie + geom_jitter(aes(size=Budget...mill., colour=Studio)) + geom_boxplot(alpha=0.7, outlier.color = NA)
movie

mov2<-movie + theme(axis.title.x = element_text(colour="Blue"
