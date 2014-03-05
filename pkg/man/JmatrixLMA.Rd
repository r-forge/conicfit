\name{JmatrixLMA}
\alias{JmatrixLMA}
\title{Compute the Jacobian matrix using algebraic parameters}
\description{\code{JmatrixLMA} Computes the Jacobian matrix(Implicit method) 
using algebraic parameters }
\usage{JmatrixLMA(XY,ParA,XYproj)}
\arguments{
  \item{XY}{ array of sample data}
  \item{ParA}{ initial parameter vector c(Center(1:2), Axes(1:2), Angle)}
  \item{XYproj}{ corresponding n projection points on the conic}
}
\value{
  \item{list(Res,J)}{ list with the Residual Sum of Squares and the Jacobian
  matrix}
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
XY <- matrix(c(1,7,2,6,5,8,7,7,9,5,3,7,6,2,8,4),8,2,byrow=TRUE)
ParA <- matrix(c(0.250000000000000,0,1,0,0,-1),ncol=1)
XYproj=matrix(c(0.394467220216675,0.980356518335872,0.833315950425981,
0.909063326557293,1.40466123643977,0.711850899213363,
1.70601340510202,0.521899957274429,1.89925244997324,0.313384799914835,
1.06482258038841,0.846485805004280,1.95308457257492,
0.215325713960169,1.91319150256275,0.291418202297698),8,2,byrow=TRUE)
JmatrixLMA(XY,ParA,XYproj)
}
\keyword{datasets}
