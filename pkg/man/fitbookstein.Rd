\name{fitbookstein}
\alias{fitbookstein}
\alias{conic2parametric}
\alias{fitggk}
\title{ Linear ellipse fit using bookstein constraint}
\description{\code{fitbookstein} Linear ellipse fit using bookstein constraint 

\code{conic2parametric} Diagonalise A - find Q, D such at A = Q' * D * Q 

\code{fitggk} Linear least squares with the Euclidean-invariant constraint Trace(A) = 1 }
\usage{fitbookstein(x)}
\arguments{
  \item{x}{ array of sample data }
}
\value{
  \item{list(z, a, b, alpha)}{ list with fitted ellipse parameters }
}
\source{
Richard Brown, May 28, 2007
\url{http://www.mathworks.com/matlabcentral/fileexchange/15125-fitellipse-m/content/demo/html/ellipsedemo.html}
}
\references{
Richard Brown, May 28, 2007
\url{http://www.mathworks.com/matlabcentral/fileexchange/15125-fitellipse-m/content/demo/html/ellipsedemo.html}

W. Gander, G. H. Golub, R. Strebel, 1994
Least-Squares Fitting of Circles and Ellipses
BIT Numerical Mathematics, Springer 
}
\author{Jose Gama}
\keyword{datasets}
