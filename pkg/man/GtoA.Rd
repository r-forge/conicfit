\name{GtoA}
\alias{GtoA}
\title{Conversion of geometric parameters to algebraic parameters}
\usage{GtoA(ParG)}
\description{\code{GtoA} converts geometric parameters (A, B, C, D, E, F) to 
	algebraic parameters (Center(1:2), Axes(1:2), Angle).
}
\arguments{
  \item{ParG}{ list with geometric parameters (A, B, C, D, E, F)}
}
\value{
  \item{ParA}{ vector or array with algebraic parameters (Center(1:2), 
  Axes(1:2), Angle)}
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
GtoA(c(0,0,20,60,45))
}
\keyword{datasets}
