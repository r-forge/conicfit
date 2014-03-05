\name{CircleFitByPratt}
\alias{CircleFitByPratt}
\title{Algebraic circle fit by Pratt}
\description{\code{CircleFitByPratt} applies the Algebraic circle fit by Pratt }
\usage{CircleFitByPratt(XY)}
\arguments{
  \item{XY}{ array of sample data }
}
\value{
  \item{vector(a, b, R)}{ vector with the values for the circle: center (a,b) 
  and radius R}
}
\source{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

Nikolai Chernov, 2010
Circular and linear regression: Fitting circles and lines by least squares
Chapman & Hall/CRC, Monographs on Statistics and Applied Probability, Volume 117
}
\references{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

Nikolai Chernov, 2010
Circular and linear regression: Fitting circles and lines by least squares
Chapman & Hall/CRC, Monographs on Statistics and Applied Probability, Volume 117
}
\author{Jose Gama}
\examples{
xy<-calculateCircle(0,0,200,50,randomDist=TRUE,noiseFun=function(x) (x+rnorm(1,mean=0,sd=50)))
plot(xy[,1],xy[,2],xlim=c(-250,250),ylim=c(-250,250));par(new=TRUE)
c2 <- CircleFitByPratt(xy)
xyc2<-calculateCircle(c2[1],c2[2],c2[3])
plot(xyc2[,1],xyc2[,2],xlim=c(-250,250),ylim=c(-250,250),col='blue',type='l');par(new=TRUE)
}
\keyword{datasets}
