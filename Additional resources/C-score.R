### C-score

library(bipartite)
data(Safariland)
m=Safariland
m[m>0]=1

### Randomization functions
rand1=function(m){matrix(rbinom(nrow(m)*ncol(m),1,.5),nc=ncol(m))}
rand2=function(m){matrix(sample(c(rep(1,sum(m)),rep(0,(nrow(m)*ncol(m)-sum(m)))),nrow(m)*ncol(m),replace=F),nc=ncol(m))}
xx=function(x){sample(x,length(x))}
rand3=function(m){t(apply(m,1,xx))}
rand4=function(m){apply(m,2,xx)}
rand5=function(m){vaznull(1,m)[[1]]}

### Generate null matrices
nsim=1000
l=rep(list(m),nsim)
null_rand1=lapply(l,rand1)
null_rand2=lapply(l,rand2)
null_rand3=lapply(l,rand3)
null_rand4=lapply(l,rand4)
null_rand5=lapply(l,rand5)

###Compute C-scores:

csc=function(x){C.score(x[rowSums(x)>0,colSums(x)>0],na.rm=T)}
C_rand1=sapply(lapply(null_rand1,csc),'[',1)
C_rand2=sapply(lapply(null_rand2,csc),'[',1)
C_rand3=sapply(lapply(null_rand3,csc),'[',1)
C_rand4=sapply(lapply(null_rand4,csc),'[',1)
C_rand5=sapply(lapply(null_rand5,csc),'[',1)


#### Density plots

dp=function(x){
	hist(x,nclass=50,main="",ylab="Frequency",xlab=expression(italic(C)~" - score"),col="#5280A4",border="#13466E",yaxs="i",xlim=c(0,1),ylim=c(0,.2*length(x)))
	abline(v=.56,lty=2,lwd=1.3,col="black")
	box()}

library(showtext)
showtext_auto()
par(mfrow=c(1,5),family="raleway")
dp(C_rand1)
dp(C_rand2)
dp(C_rand3)
dp(C_rand4)
dp(C_rand5)





