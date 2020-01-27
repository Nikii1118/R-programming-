#matrix()
?matrix()
my.data<-1:20
my.data
A<-matrix(my.data,4,5,byrow=T)
A
A[1,]
A[2,3]
A[2,5]
#rbind()
r1<-c("I","am","Happy")
r2<-c("What","A","day")
r3<-c(1,2,3)
C<-rbind(r1,r2,r3)
C
C<-cbind(r1,r2,r3)
C

Charlie<-1:5
Charlie
names(Charlie)<-c("a","b","c","d","e")
Charlie
Charlie["d"]
names(Charlie)
names(Charlie)<-NULL
Charlie

#naming matrix
temp.vec<-rep(c("a","b","22"),each=3)
temp.vec

Bravo<-matrix(temp.vec,3,3)
Bravo
rownames(Bravo)<-c("HOW","ARE","YOU")
Bravo
colnames(Bravo)<-c("X","Y","Z")
Bravo
