setwd("C:\\Users\\USER\\Desktop\\Lab 05")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE,sep=",")
attach(Delivery_Times)
fix(Delivery_Times)
names(Delivery_Times)<-c("DeliveryTimes")

attach(Delivery_Times)
histogram<-hist(DeliveryTimes,main="Histogram for deliver times",breaks=seq(20,70,length=10),right=FALSE)


breaks<-round(histogram$breaks)

freq<-histogram$mids

cum.freq<-cumsum(freq)

new<-c()

for (i in 1:length(breaks)){
  if (i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]}
}

plot(breaks,new,type='l',main="cumulative Frequwncy polygon for Delivery times",xlab="Minutes",ylab="cumulative Frequency",ylim=c(0,max(cum.freq)))
