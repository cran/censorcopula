\name{censorcopula}
\alias{censorcopula}
\alias{censorcopula}
\docType{package}
\title{
Censor method to break ties
}
\description{
\packageDescription{censorcopula}
}
\details{
nothing
}
\author{
Yan Li
}
\references{
nothing
}
\keyword{ censor }
\examples{
library(copula)

## Generate sample and introduce ties
data <- rCopula(50, claytonCopula(2))
data[, 1] <- round(data[, 1], digit=1)

## Estimate parameter of clayton copula from the sample
intervalFitb(copula=claytonCopula(2), method="BFGS", data)
}
