\name{EllipseDirectFit}
\alias{EllipseDirectFit}
\title{ Algebraic ellipse fit method by Fitzgibbon-Pilu-Fisher}
\description{\code{EllipseDirectFit} applies the algebraic ellipse fit method 
by Fitzgibbon-Pilu-Fisher }
\usage{EllipseDirectFit(XY)}
\arguments{
  \item{XY}{ array of sample data }
}
\value{
  \item{vector(A,B,C,D,E,F)}{ vector of algebraic parameters of the fitting 
  ellipse: ax^2 + bxy + cy^2 +dx + ey + f = 0}
}
\source{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

A. W. Fitzgibbon, M. Pilu, R. B. Fisher, 1999
Direct Least Squares Fitting of Ellipses
IEEE Trans. PAMI, Vol. 21, pages 476-480

A. W. Fitzgibbon, M. Pilu, R. B. Fisher, "Direct Least Squares Fitting of 
Ellipses", IEEE Trans. PAMI, Vol. 21, pages 476-480 (1999)
Halir R, Flusser J (1998) Proceedings of the 6th International Conference 
in Central Europe on Computer Graphics and Visualization, 
Numerically stable direct least squares fitting of ellipses (WSCG, Plzen, 
Czech Republic), pp 125–132.
}
\references{
Nikolai Chernov, 2014
Fitting ellipses, circles, and lines by least squares
\url{http://people.cas.uab.edu/~mosya/cl/}

A. W. Fitzgibbon, M. Pilu, R. B. Fisher, 1999
Direct Least Squares Fitting of Ellipses
IEEE Trans. PAMI, Vol. 21, pages 476-480

A. W. Fitzgibbon, M. Pilu, R. B. Fisher, "Direct Least Squares Fitting of 
Ellipses", IEEE Trans. PAMI, Vol. 21, pages 476-480 (1999)
Halir R, Flusser J (1998) Proceedings of the 6th International Conference 
in Central Europe on Computer Graphics and Visualization, 
Numerically stable direct least squares fitting of ellipses (WSCG, Plzen, 
Czech Republic), pp 125–132.
}
\author{Jose Gama}
\examples{
xy<-calculateEllipse(0,0,200,100,45,50, randomDist=TRUE,noiseFun=function(x) 
(x+rnorm(1,mean=0,sd=50)))
plot(xy[,1],xy[,2],xlim=c(-250,250),ylim=c(-250,250),col='magenta');par(new=TRUE)

ellipDirect <- EllipseDirectFit(xy)
ellipDirectG <- AtoG(ellipDirect)$ParG
xyDirect<-calculateEllipse(ellipDirectG[1], ellipDirectG[2], ellipDirectG[3], 
ellipDirectG[4], 180/pi*ellipDirectG[5])
plot(xyDirect[,1],xyDirect[,2],xlim=c(-250,250),ylim=c(-250,250),type='l',
col='cyan');par(new=TRUE)
}
\keyword{datasets}
