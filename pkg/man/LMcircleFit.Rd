\name{LMcircleFit}
\alias{LMcircleFit}
\title{Geometric circle fit (minimizing orthogonal distances) based on the
Levenberg-Marquardt method}
\description{\code{LMcircleFit} applies a Geometric circle fit (minimizing 
orthogonal distances) based on the standard Levenberg-Marquardt scheme }
\usage{LMcircleFit(XY, ParIni, LambdaIni = 1, epsilon = 1e-06, IterMAX = 50)}
\arguments{
  \item{XY}{ array of sample data }
  \item{ParIni}{ initial guess (a, b, R) }
  \item{LambdaIni}{ initial value for the correction factor lambda }
  \item{epsilon}{ tolerance (small threshold)}
  \item{IterMAX}{ maximum number of (main) iterations, usually 10-20 will suffice}
}
\value{
  \item{vector(a, b, R)}{ vector with the estimates for the circle: center (a,b)
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
c4 <- LMcircleFit(xy)
xyc4<-calculateCircle(c4[1],c4[2],c4[3])
plot(xyc4[,1],xyc4[,2],xlim=c(-250,250),ylim=c(-250,250),col='cyan',type='l')
}
\keyword{datasets}
