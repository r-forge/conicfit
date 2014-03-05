\name{CircleFitByKasa}
\alias{CircleFitByKasa}
\title{Algebraic circle fit (Kasa method)}
\description{\code{CircleFitByKasa} applies the simple algebraic circle fit
(Kasa method) }
\usage{CircleFitByKasa(XY)}
\arguments{
  \item{XY}{ array of sample data  }
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
c3 <- CircleFitByKasa(xy)
xyc3<-calculateCircle(c3[1],c3[2],c3[3])
plot(xyc3[,1],xyc3[,2],xlim=c(-250,250),ylim=c(-250,250),col='green',type='l');par(new=TRUE)
}
\keyword{datasets}
