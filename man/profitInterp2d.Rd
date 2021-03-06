\name{profitInterp2d}
\alias{profitInterp2d}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
2D image interpolation
}
\description{
A low level routine to interpolate a 2D image matrix at an arbitrary x/y pixel location. This function is unlikely to be used by the user, but it used internally to ensure that point sources defined by empirical point spread functions (PSFs) are accurately generated on an image.
}
\usage{
profitInterp2d(x, y, image)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
The x position at which to make the interpolation.
}
  \item{y}{
The x position at which to make the interpolation.
}
  \item{image}{
The image matrix to be used for the interpolation.
}
}
\details{
In practice this is a low level routine unlikely to be used by the user. \code{\link{profitMakePointSource}} should be used to generate point sources and PSFs.

By ProFit convention the bottom-left part of the bottom-left pixel when plotting the image matrix is c(0,0) and the top-right part of the bottom-left pixel is c(1,1), i.e. the mid-point of pixels are half integer values in x and y.

To confuse things a bit, when R plots an image of a matrix it is transposed and re-ordered vertically to how it appears if you print the matrix directly to screen, i.e. compare print(matrix(1:4,2,2)) and image(matrix(1:4,2,2)). The lowest value (1) is top-left when printed but bottom-left when displayed using image (the red pixel). Both are "correct": the issue is whether you consider the first element of a matrix to be the Cartesian x position (movement in x) or a row element (movement in y). Matrices in maths are always written top-left first where the first argument refers to row number, but images by convention are accessed in a Cartesian sense. Hence [3,4] in a maths matrix means 3 down and 4 right from the top-left, but 3 right and 4 up from the bottom-left in an image.
}
\value{
Matrix; a three column matrix where column 1 is the requested x interpolation locations, column 2 is the requested y interpolation locations and column 3 is the interpolated values.
}
\author{
Aaron Robotham
}

\seealso{
\code{\link{profitConvolvePSF}}, \code{\link{profitMakePointSource}}
}
\examples{
PSFeven=profitMakePointSource(image = matrix(0,24,24))
magimage(PSFeven)
xrange=floor(-dim(PSFeven)[1]/2):ceiling(dim(PSFeven)[1]/2)
yrange=floor(-dim(PSFeven)[2]/2):ceiling(dim(PSFeven)[2]/2)
regrid=expand.grid(xrange,yrange)
PSFodd=matrix(profitInterp2d(x=regrid[,1], y=regrid[,2], image=PSFeven)[,3],
length(xrange),length(yrange))
magimage(PSFodd)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ interpolate }
\keyword{ interpolation }
