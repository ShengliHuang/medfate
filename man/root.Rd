\encoding{UTF-8}
\name{root}
\alias{root_ldrDistribution}
\alias{root_conicDistribution}
\alias{root_xylemConductanceProportions}
\alias{root_rootLengths}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Distribution of fine roots}
\description{
Functions to calculate the distribution of fine roots within the soil, given root system parameters and soil layer definition (layer widths).
}
\usage{
root_conicDistribution(Zcone, d)
root_ldrDistribution(Z50, Z95, d)
root_xylemConductanceProportions(v, d, depthWidthRatio = 1)
root_rootLengths(v, d, depthWidthRatio = 1.0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Z50}{A vector of depths (in mm) corresponding to 50\% of roots.}
  \item{Z95}{A vector of depths (in mm) corresponding to 95\% of roots.}
  \item{Zcone}{A vector of depths (in mm) corresponding to the root cone tip.}
  \item{d}{The width (in mm) corresponding to each soil layer.}
  \item{v}{Proportions of fine roots, as returned by functions \code{root_conicDistribution} or \code{root_ldrDistribution}.}
  \item{depthWidthRatio}{Ratio between radius of the soil layer with the largest radius and maximum rooting depth.}
}
\details{
  Function \code{root_conicDistribution} assumes a conic distribution of fine roots, whereas function \code{root_ldrDistribution} distributes fine roots according to the linear dose response model of Schenck & Jackson (2002). Function \code{root_xylemConductanceProportions} calculates the proportion of total root xylem conductance that can be attributed to each layer, according to layer widths and the proportion of fine roots (Sperry et al. 2016).
}
\value{
  Functions \code{root_conicDistribution} and \code{root_ldrDistribution} return a matrix with as many rows as elements in \code{Z} (or \code{Z50}) and as many columns as soil layers.  Values in all cases correspond to the proportion of fine roots in each soil layer. Function \code{root_xylemConductanceProportions} returns a vector of proportions of the same length as the number of layers.
}
\references{
Schenk, H., Jackson, R., 2002. The global biogeography of roots. Ecol. Monogr. 72, 311–328.

Sperry, J. S., Y. Wang, B. T. Wolfe, D. S. Mackay, W. R. L. Anderegg, N. G. Mcdowell, and W. T. Pockman. 2016. Pragmatic hydraulic theory predicts stomatal responses to climatic water deficits. New Phytologist 212, 577–589.
}
\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, Centre Tecnologic Forestal de Catalunya
}
\seealso{
 \code{\link{spwb}}, \code{\link{spwb_ldrOptimization}}, \code{\link{forest2spwbInput}}, \code{\link{soil}}
}
\examples{
#Load example plot plant data
data(exampleforest)

#Default species parameterization
data(SpParamsMED)

ntree = nrow(exampleforest$treeData)

#Initialize soil with default soil params
S = soil(defaultSoilParams())

#Calculate conic root system for trees
V1 = root_conicDistribution(Z=rep(2000,ntree), S$dVec)            
print(V1)

#Calculate LDR root system for trees (Schenck & Jackson 2002)
V2 = root_ldrDistribution(Z50 = rep(200,ntree), 
          Z95 = rep(1000,ntree), S$dVec)
print(V2)     

#Equal xylem conductance proportions for a cone distribution
#(assuming depth-width ratio 1)
root_xylemConductanceProportions(V1[1,], S$dVec)

#Xylem conductance proportions for LDR distribution
root_xylemConductanceProportions(V2[1,], S$dVec)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.