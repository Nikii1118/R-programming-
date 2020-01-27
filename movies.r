getwd()
movies<-read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies)<-c("Film","Genre","CriticsRating","AudienceRating","BudgetMillions","Year")
head(movies)
tail(movies)
str(movies)
summary(movies)
factor(movies$Year)
movies$Year<-factor(movies$Year)
summary(movies)
str(movies)
library(ggplot2)
ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating))
ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating))+ 
       geom_point()
p<-ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating,
       colour=Genre,size=BudgetMillions))

p + geom_point()
p+geom_line()

p+geom_point(aes(size=CriticsRating))

p+geom_point(aes(colour=BudgetMillions))

p+geom_point(aes(x=BudgetMillions))+ xlab("Budget Millions")

p+geom_line(size=1) + geom_point()


r<-ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating))
r+ geom_point()

#1. Mapping 
r+ geom_point(aes(colour=Genre))
r + geom_point(colour="DarkGreen")
r + geom_point(size=10)
r+ geom_point(aes(size=BudgetMillions))


s<-ggplot(data=movies,aes(x=BudgetMillions))
s+geom_histogram(binwidth=10, aes(fill=Genre))
s+geom_histogram(binwidth=10, aes(fill=Genre),colour="Black")
s+geom_density((aes(fill=Genre)),position="stack")

t<-ggplot(data=movies,aes(x=AudienceRating))
t+ geom_histogram(binwidth=10,fill="White",colour="Blue")

t<-ggplot(data=movies)
t + geom_histogram(binwidth = 10,aes(x=CriticsRating),fill="White",colour="Blue")

u<- ggplot(data=movies,aes(x=CriticsRating, y=AudienceRating, colour=Genre))
u + geom_point()+ geomu+ geom_boxplot(size=1.2) + geom_point() +geom_smooth(fill=NA)
u+ geom_boxplot(size=1.2) + geom_point()
u + geom_jitter()+ geom_boxplot(size=1.2,alpha=0.5) 

#facets
v<-ggplot(data=movies,aes(x=BudgetMillions))
v +  geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")

v +  geom_histogram(binwidth=10,aes(fill=Genre),colour="Black") +
  facet_grid(Genre~.,scales="free")


m<-ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating,colour=Genre))
m+ geom_point(size=3)
m+ geom_point(size=3) + facet_grid(.~Year)
m+ geom_point(size=3) + facet_grid(Genre~.)
m+ geom_point(size=3)+geom_smooth()+ facet_grid(Genre~Year)


#coordinates
m<-ggplot(data=movies,aes(x=CriticsRating,y=AudienceRating,size=BudgetMillions,colour=Genre))
m+geom_point() + xlim(50,100) + ylim(50,100)

m+ geom_point(size=3)+geom_smooth()+ facet_grid(Genre~Year) + coord_cartesian(ylim=c(0,100))


#themes
o<-ggplot(data=movies,aes(x=BudgetMillions))
h<-o + geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")
h
h +xlab("Money Axis")+
  ylab("Number of Movies")+
  ggtitle("Movie Budget Distribution")+
  theme(axis.title.x=element_text(colour="DarkGreen",size=30),
        axis.title.y=element_text(colour="Red",size=30),
        axis.text.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        legend.title=element_text(size=30),
        legend.position=c(1,1),
        legend.text=element_text(size=20),
        legend.justification=c(1,1),
        plot.title=element_text(colour="DarkBlue",
                                size=40,
                                family="Courier"))

