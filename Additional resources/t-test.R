nsim=1000
pop=rnorm(10000,0,1)
size=30
x=lapply(1:nsim,function(size){
	gr1=sample(pop,size)
	gr2=sample(pop,size)
	t=(mean(gr1)-mean(gr2))/sqrt(var(gr1)/size+var(gr2)/size)
	return=t})
rand_t=sapply(x,'[',1)
d=density(na.omit(rand_t),bw=.75)

png("t.test.png",res=1200,units="in",height=4,width=4)
plot(d$y~d$x,type="l",ylab="Density",xlab=expression(italic(t)~" - value"),xaxs="i",yaxs="i",ylim=c(0,.35),col="NA",cex.lab=1.2)
rect(-10,-5,10,1,col="grey97",border=NA)
abline(v=seq(-6,6,1),lty=3,col="grey86")
abline(h=seq(0,.4,.05),lty=3,col="grey86")
polygon(c(d$x,d$x[1]),c(d$y,d$y[1]),col="#5280A4",border=NA)
lines(d$y~d$x,col="#13466E",lwd=1.5)
box()
dev.off()




