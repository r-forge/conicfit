\name{calculateEllipse}
\alias{calculateEllipse}
\title{ Generate points from a ellipse}
\description{\code{calculateEllipse} generates points from a ellipse 
with many options, equally spaced, randomly spaced, with noise added 
to the radius or limited to a segment of angle alpha.
}
\usage{
calculateEllipse(x, y, a, b, angle = 0, steps = 50, sector = c(0, 360), 
randomDist = FALSE, randomFun = runif, noiseFun = NA, ...)
}
\arguments{
  \item{x}{ center point x}
  \item{y}{ center point y}
  \item{a}{ axis a}
  \item{b}{ axis b}
  \item{angle}{ tilt angle}
  \item{steps}{ number of points}
  \item{sector}{ limited circular sector}
  \item{randomDist}{ logical, TRUE = randomly spaced}
  \item{randomFun}{ random function for the position of the points in the ellipse}
  \item{noiseFun}{ random function for the noise}
  \item{...}{ optional parameters to pass to randomFun}
}
\value{
  \item{points}{ array n x 2 of point coordinates.}
}
\author{Jose Gama}
\examples{
\dontrun{
# 50 points from an ellipse at c(0,0) with axis (200, 100), angle 45 degrees
a<-calculateEllipse(0,0,200,100,45,50)
plot(a[,1],a[,2],xlim=c(-250,250),ylim=c(-250,250))
par(new=T)
# 10 points from an ellipse at c(0,0) with axis (200, 100), angle 45 degrees,
#points between 0 and 180 # degrees, normal random distribution
b<-calculateEllipse(0,0,200,100,45,10,c(0,90))
plot(b[,1],b[,2],xlim=c(-250,250),ylim=c(-250,250),col='red')
par(new=T)
# 50 points from an ellipse at c(0,0) with axis (200, 100), angle 45 degrees
a<-calculateEllipse(0,0,200,100,45,50, randomDist=TRUE,noiseFun=function(x) 
(x+rnorm(1,mean=0,sd=10)))
plot(a[,1],a[,2],xlim=c(-250,250),ylim=c(-250,250),col='cyan')
}
}
\keyword{programming}
