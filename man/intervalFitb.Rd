\name{intervalFitb}
\alias{intervalFitb}
\title{Using censor method to break ties}
\description{
Estimate the parameter of copula with interval censor method to break ties in data.
}
\usage{
intervalFitb(copula, method, x, start, lower, upper, optim.control, 
             estimate.variance, hideWarnings, bound.eps)
}
\arguments{
  \item{copula}{
Type of copula to fit the data
}
  \item{method}{
Method used in the 'optim' function
}
  \item{x}{
Data with ties
}

See Details for following inputs:
  
  \item{start}{
Initial value used in 'optim' function
}
   \item{lower,upper}{
Bounds on the variables for the "L-BFGS-B" method or method "Brent"
}
   \item{optim.control}{
A list of control parameters
}
   \item{estimate.variance}{
Estimate variance
}
  \item{hideWarnings}{
Hide warnings in procedure of estimation
}

  \item{bound.eps}{
Minimum finite distance 
}
}
\details{
Except the 'copula', 'x' and 'method', other inputs of the intervalFitb 
function has default value.

For method,

Method "BFGS" is a quasi-Newton method (also known as a variable 
metric algorithm), specifically that published simultaneously in 
1970 by Broyden, Fletcher, Goldfarb and Shanno. This uses function 
values and gradients to build up a picture of the surface to be 
optimized.

Method "L-BFGS-B" is that of Byrd et. al. (1995) which allows box 
constraints, that is each variable can be given a lower and/or upper 
bound. The initial value must satisfy the constraints. This uses a 
limited-memory modification of the BFGS quasi-Newton method. If 
non-trivial bounds are supplied, this method will be selected, 
with a warning.

Method "Brent" is for one-dimensional problems only, using 'optimize' 
function. It can be useful in cases where optim() is used inside other 
functions where only method can be specified, such as in mle from 
package stats4.
}
\value{
 \item{fit}{
Estimation of parameter
}
}
\references{
None
}
\author{
Yan Li
}
\note{
The intervalFitb function only works for bivariate copula function.
}

\examples{
library(copula)

## Generate sample and introduce ties
data <- rCopula(50, claytonCopula(2))
data[, 1] <- round(data[, 1], digit=1)

## Estimate parameter of clayton copula from the sample
intervalFitb(copula=claytonCopula(2), method="BFGS", data)

}

\keyword{ copula }