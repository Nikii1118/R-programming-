#importing data 
stats<-read.csv(file.choose())
stats

getwd()
setwd("E:\\New folder (2)\\R programming")
getwd()
rm(stats)
stats<-read.csv("P2-Demographic-Data.csv")
stats
#data exploration
head(stats,n=100)
nrow(stats)
ncol(stats)
tail(stats)
str(stats) #structure 
#runif
summary(stats)

head(stats)
stats[3,3]
stats[3,"Birth.rate"]
stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
levels(stats$Income.Group)
#
stats[1:10,]
stats[3:9,]
stats[c(4,100)]
is.data.frame(stats[1,])
stats[,1,drop=F]

head(stats)
stats$Birth.rate*stats$Internet.users
head(stats)
stats$MyCal<-stats$Birth.rate*stats$Internet.users
stats
stats$xyz<-1:5
head(stats)

head(stats)
stats$MyCal<-NULL
stats$xyz<-NULL
head(stats)

#Filtering dataframe 
head(stats)
filter<-stats$Internet.users<2
filter
stats[filter,]

summary(stats)
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=='High income',]
levels(stats$Income.Group)
stats[stats$Country.Name=='Malta',]


# Introduction to qplot

#install.packages("ggplot2")
library(ggplot2)

?qplot()
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group, y=Birth.rate,size=I(3),
      colour=I("blue"), geom="boxplot")
head(stats$Internet.users)
summary(stats)



qplot(data=stats, x=Internet.users,y=Birth.rate)
qplot(data=stats, x=Internet.users,y=Birth.rate,
      size=I(2), colour=Income.Group)

#creating dataframes

head(mydf)
colnames(mydf)<-c("Country","Code","Region")
head(mydf)
rm(mydf)
mydf<-data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,Region=Regions_2012_Dataset)
head(mydf)
#rbind(),cbind() also uses same approach


merged<-merge(stats,mydf,by.x="Country.Code",by.y="Code")
merged
head(merged)
merged$Country<-NULL
str(merged)
tail(merged)

qplot(data=merged,x=Internet.users,y=Birth.rate,
      colour=Region, size=I(3),shape=I(19),
      alpha=I(0.4),
      main="Birth Rate vs Internet Users")

#transparencyis alpha and title is main