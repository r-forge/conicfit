\name{Residuals.ellipse}
\alias{Residuals.ellipse}
\title{Projecting a given set of points onto an ellipse}
\description{\code{Residuals.ellipse} projects a given set of points onto an 
ellipse and computing the distances from the points to the ellipse }
\usage{Residuals.ellipse(XY,ParG)}
\arguments{
  \item{XY}{ array of sample data  }
  \item{ParG}{ vector 5x1 of the ellipse parameters (Center(1:2), Axes(1:2),
  Angle) }
}
\value{
  \item{list(Res,J)}{ list with the Residual Sum of Squares and the Jacobian 
  matrix}
}
\source{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

N. Chernov, Q. Huang, and H. Ma, 2014
Fitting quadratic curves to data points
British Journal of Mathematics & Computer Science, 4, 33-60.
}
\references{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

N. Chernov, Q. Huang, and H. Ma, 2014
Fitting quadratic curves to data points
British Journal of Mathematics & Computer Science, 4, 33-60.
}
\author{Jose Gama}
\examples{
XY <- matrix(c(1,7,2,6,5,8,7,7,9,5,3,7,6,2,8,4),8,2,byrow=TRUE)
ParG <- matrix(c(0,0,2,1,0),ncol=1)
Residuals.ellipse(XY,ParG)}
\keyword{datasets}
