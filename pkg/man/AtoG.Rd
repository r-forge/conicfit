\name{AtoG}
\alias{AtoG}
\title{Conversion of algebraic parameters to geometric parameters}
\usage{AtoG(ParA)}
\description{\code{AtoG} converts algebraic parameters (A, B, C, D, E, F) to 
	geometric parameters (Center(1:2), Axes(1:2), Angle).
}
\arguments{
  \item{ParA}{ vector or array with geometric parameters (A, B, C, D, E, F)}
}
\value{
  \item{list(ParG, exitCode}{ list with algebraic parameters (Center(1:2), 
  Axes(1:2), Angle) and exit code}
}
\format{
code is:  -1 - degenerate cases  
           0 - imaginary ellipse  
           4 - imaginary parell lines
           1 - ellipse  2 - hyperbola 3 - parabola
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
AtoG(c(0.0551,-0.0908,0.1588,0.0489,-0.9669,0.1620))
}
\keyword{datasets}
