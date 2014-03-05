\name{LMreducedCircleFit}
\alias{LMreducedCircleFit}
\title{Geometric circle fit (minimizing orthogonal distances) based on the 
Levenberg-Marquardt method}
\description{\code{LMreducedCircleFit} applies a Geometric circle fit 
(minimizing orthogonal distances) based on the standard Levenberg-Marquardt scheme in the "reduced" (a,b) parameter space }
\usage{LMreducedCircleFit(XY, ParIni, LambdaIni = 1, epsilon = 1e-06, 
IterMAX = 50)}
\arguments{
  \item{XY}{ array of sample data }
  \item{ParIni}{ initial guess (a, b) }
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
c7 <- LMreducedCircleFit(xy)
xyc7<-calculateCircle(c7[1],c7[2],c7[3])
plot(xyc7[,1],xyc7[,2],xlim=c(-250,250),ylim=c(-250,250),col='pink',type='l')
}
\keyword{datasets}
