\name{fit.conicLMA}
\alias{fit.conicLMA}
\title{Fitting a conic to a given set of points (Implicit method)}
\description{\code{fit.conicLMA} fits a conic to a given set of points 
(Implicit method) using algebraic parameters. Conic:  Ax^2 + Bxy + Cy^2 +Dx + Ey + F = 0}
\usage{fit.conicLMA(XY, ParAini, LambdaIni, epsilonP = 1e-10, epsilonF = 1e-13,
IterMAX = 2e+06)}
\arguments{
  \item{XY}{ array of sample data}
  \item{ParAini}{ initial parameter vector c(A,B,C,D,E,F)}
  \item{LambdaIni}{ initial value of the control parameter Lambda}
  \item{epsilonP}{ tolerance (small threshold)}
  \item{epsilonF}{ tolerance (small threshold)}
  \item{IterMAX}{ maximum number of (main) iterations, usually 10-20 will suffice}
}
\value{
  \item{list(ParA, RSS, iters}{ list with algebraic parameters (Center(1:2),
  Axes(1:2), Angle), Residual Sum of Squares and number of iterations}
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
ParAini <- matrix(c(0.2500,0, 1.0000, 0, 0, -1.0000),ncol=1)
LambdaIni=0.1
fit.conicLMA(XY,ParAini,LambdaIni)
}
\keyword{datasets}
