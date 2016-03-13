\name{Newloglik2}
\alias{Newloglik2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
likelihood function
}
\description{
likelihood function used in intervalFitb()
}
\usage{
Newloglik2(param, x, copula)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{param}{
Value of parameter in copula function
}
  \item{x}{
Inputted dataset
}
  \item{copula}{
Selected copula function 
}
}
\details{
none
}
\value{
  \item{result}{
The result of log-likelihood function
}
}
\references{
none
}
\author{
Yan Li
}
\note{
It's a internal log-likelihood function used in optim function
}

\seealso{
none
}
\examples{
library(copula)

## generate sample
data <- rCopula(50, claytonCopula(2))

## return the value of log-likelihood funcion for selected params
Newloglik2(param=2, data, claytonCopula(2))

}

\keyword{ copula }
\keyword{ likelihood }
