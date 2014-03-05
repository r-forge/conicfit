\name{EllipseFitByTaubin}
\alias{EllipseFitByTaubin}
\title{Algebraic ellipse fit by Taubin}
\description{\code{EllipseFitByTaubin} applies the Algebraic ellipse fit by
Taubin }
\usage{EllipseFitByTaubin(XY)}
\arguments{
  \item{XY}{ array of sample data }
}
\value{
  \item{vector(A,B,C,D,E,F)}{ vector with the values for the ellipse }
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
xy<-calculateEllipse(0,0,200,100,45,50, randomDist=TRUE,noiseFun=function(x) 
(x+rnorm(1,mean=0,sd=50)))
plot(xy[,1],xy[,2],xlim=c(-250,250),ylim=c(-250,250),col='magenta');par(new=TRUE)

ellipTaubin <- EllipseFitByTaubin(xy)
ellipTaubinG <- AtoG(ellipTaubin)$ParG
xyTaubin<-calculateEllipse(ellipTaubinG[1], ellipTaubinG[2], ellipTaubinG[3], 
ellipTaubinG[4], 180/pi*ellipTaubinG[5])
plot(xyTaubin[,1],xyTaubin[,2],xlim=c(-250,250),ylim=c(-250,250),type='l',
col='red');par(new=TRUE)

}
\keyword{datasets}
