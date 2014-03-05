\name{CircleFitBySpath}
\alias{CircleFitBySpath}
\title{Geometric circle fit by Spath}
\description{\code{CircleFitBySpath} applies the Geometric circle fit by Spath }
\usage{CircleFitBySpath(XY, ParIni = NA, epsilon = 1e-06, IterMAX = 50)}
\arguments{
  \item{XY}{ array of sample data }
  \item{ParIni}{ initial guess (a, b, R) }
  \item{epsilon}{ tolerance (small threshold)  }
  \item{IterMAX}{ maximal number of iterations, with a bad initial guess it may 
  take >100 iterations}
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
c5 <- CircleFitBySpath(xy)
xyc5<-calculateCircle(c5[1],c5[2],c5[3])
plot(xyc5[,1],xyc5[,2],xlim=c(-250,250),ylim=c(-250,250),col='magenta',type='l');par(new=TRUE)
}
\keyword{datasets}
