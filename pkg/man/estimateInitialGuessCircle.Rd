\name{estimateInitialGuessCircle}
\alias{estimateInitialGuessCircle}
\title{Estimate Initial Guess Circle values}
\description{\code{estimateInitialGuessCircle} estimates initial guess values 
for the center and radius of the circle}
\usage{estimateInitialGuessCircle(XY)}
\arguments{
  \item{XY}{ array of sample data }
}
\value{
  \item{vector(a, b, R)}{ vector with the estimates for the circle: center (a,b)
  and radius R}
}
\author{Jose Gama}
\examples{
xy<-calculateCircle(0,0,200,50,randomDist=TRUE,noiseFun=function(x) (x+rnorm(1,mean=0,sd=50)))
estimateInitialGuessCircle(xy)
}
\keyword{datasets}
