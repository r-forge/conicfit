\name{CircleFitByLandau}
\alias{CircleFitByLandau}
\title{Geometric circle fit (minimizing orthogonal distances) by Landau 
algorithm}
\description{\code{CircleFitByLandau} applies the Geometric circle fit 
(minimizing orthogonal distances) by Landau algorithm }
\usage{CircleFitByLandau(XY,ParIni = NA, epsilon = 1e-06, IterMAX = 50)}
\arguments{
  \item{XY}{ array of sample data }
  \item{ParIni}{ initial guess (a, b, R)}
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

Geometric circle fit (minimizing orthogonal distances) by Landau algorithm
M. Landau, "Estimation of a circular arc center and its radius",
Computer Vision, Graphics and Image Processing, Vol. 38, pages 317-326, (1987)
}
\references{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

Nikolai Chernov, 2010
Circular and linear regression: Fitting circles and lines by least squares
Chapman & Hall/CRC, Monographs on Statistics and Applied Probability, Volume 117

Geometric circle fit (minimizing orthogonal distances) by Landau algorithm
M. Landau, "Estimation of a circular arc center and its radius",
Computer Vision, Graphics and Image Processing, Vol. 38, pages 317-326, (1987)
}
\author{Jose Gama}
\examples{
xy<-calculateCircle(0,0,200,50,randomDist=TRUE,noiseFun=function(x) (x+rnorm(1,mean=0,sd=50)))
plot(xy[,1],xy[,2],xlim=c(-250,250),ylim=c(-250,250));par(new=TRUE)
c6 <- CircleFitByLandau(xy)
xyc6<-calculateCircle(c6[1],c6[2],c6[3])
plot(xyc6[,1],xyc6[,2],xlim=c(-250,250),ylim=c(-250,250),col='purple',type='l');par(new=TRUE)
}
\keyword{datasets}
