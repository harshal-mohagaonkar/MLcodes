mydata<-read.csv("/home/info15/Desktop/pca_gsp.csv")
attach(mydata)
names(mydata)
X <- cbind(Ag, Mining, Constr, Manuf, Manuf_nd, Transp, Comm, Energy, TradeW, TradeR, RE, Services, Govt)
summary(X)
cor(X)
pcal<-princomp(X, scores=TRUE, cor=TRUE)
#/*performs a principal components analysis on the given numeric data matrix and returns the results as an object of class */
summary(pcal)
loadings(pcal)
plot(pcal)
screeplot(pcal,type="line",main="Screen Plot")
biplot(pcal)
pcal$scores[1:20,]
