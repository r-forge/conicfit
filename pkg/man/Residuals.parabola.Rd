\name{Residuals.parabola}
\alias{Residuals.parabola}
\title{Projecting a given set of points onto an parabola}
\description{\code{Residuals.parabola} projects a given set of points onto an 
parabola and computing the distances from the points to the parabola }
\usage{Residuals.parabola(XY,ParG)}
\arguments{
  \item{XY}{ array of sample data  }
  \item{ParG}{ vector 4x1 of the parabola parameters (Vertex(1:2), p, Angle) }
}
\value{
  \item{list(RSS, XYproj)}{ list with the Residual Sum of Squares and the array
  of coordinates of projections}
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
Residuals.parabola(XY,ParG)
}
\keyword{datasets}
