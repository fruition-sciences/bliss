% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Simulate_Data.R
\name{sigmoid}
\alias{sigmoid}
\title{sigmoid}
\usage{
sigmoid(x, asym = 1, v = 1)
}
\arguments{
\item{x}{a numerical vector, a grid of points.}

\item{asym}{the value of the asymptote of the sigmoid function. (optional)}

\item{v}{a numerical value which is related to the slope at the origin. (optional)}
}
\value{
a numerical vector.
}
\description{
compute a sigmoid function.
}
\details{
used to simulate a coefficient function or functions x_i(t).

see the function \code{\link[=sim_x]{sim_x}}.
}
\examples{
## Test 1 :
x <- seq(-7,7,0.1)
y <- sigmoid(x)
plot(x,y,type="l",main="Sigmoid function")
## Test 2 :
x  <- seq(-7,7,0.1)
y  <- sigmoid(x)
y2 <- sigmoid(x,asym=0.5)
y3 <- sigmoid(x,v   =  5)
plot(x,y,type="l",main="Other sigmoid functions")
lines(x,y2,col=2)
lines(x,y3,col=3)
}
