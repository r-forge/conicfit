\name{fit.ellipseLMG}
\alias{fit.ellipseLMG}
\alias{fit.ellipseLMG.H}
\title{Fitting an ellipse using Implicit method}
\description{\code{fit.ellipseLMG} Fits an ellipse to a given set of points 
(Implicit method) using geometric parameters. Conic: }
\usage{fit.ellipseLMG(XY,ParGini,LambdaIni = 1, epsilon = 1e-06, IterMAX = 200,
L = 200)}
\arguments{
  \item{XY}{ array of sample data}
  \item{ParGini}{ initial parameter vector c(Center(1:2), Axes(1:2), Angle)}
  \item{LambdaIni}{ initial value of the control parameter Lambda}
  \item{epsilon}{ tolerance (small threshold)}
  \item{IterMAX}{ maximum number of (main) iterations, usually 10-20 will suffice}
  \item{L}{ boundary for major/minor axis}
}
\value{
  \item{list(ParG,RSS,iters,TF)}{ list with geometric parameters (A,B,C,D,E,F),
  Residual Sum of Squares, number of iterations and TF==TRUE if the method diverges}
}
\source{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

N. Chernov, Q. Huang, and H. Ma, 2014
Fitting quadratic curves to data points
British Journal of Mathematics & Computer Science, 4, 33-60.

N. Chernov and H. Ma, 2011
Least squares fitting of quadratic curves and surfaces
In: Computer Vision, Editor S. R. Yoshida, Nova Science Publishers; pp. 285-302.
}
\references{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

N. Chernov, Q. Huang, and H. Ma, 2014
Fitting quadratic curves to data points
British Journal of Mathematics & Computer Science, 4, 33-60.

N. Chernov and H. Ma, 2011
Least squares fitting of quadratic curves and surfaces
In: Computer Vision, Editor S. R. Yoshida, Nova Science Publishers; pp. 285-302.
}
\author{Jose Gama}
\examples{
XY <- matrix(c(1,7,2,6,5,8,7,7,9,5,3,7,6,2,8,4),8,2,byrow=TRUE)
ParGini <- matrix(c(0,0,2,1,0),ncol=1)
LambdaIni=0.1
fit.ellipseLMG(XY,ParGini,LambdaIni)
}
\keyword{datasets}
