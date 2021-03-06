% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bliss_Gibbs_Sampler.R
\name{Bliss_Gibbs_Sampler}
\alias{Bliss_Gibbs_Sampler}
\title{Bliss_Gibbs_Sampler}
\usage{
Bliss_Gibbs_Sampler(data, param, progress = FALSE)
}
\arguments{
\item{data}{a list containing:
\describe{
\item{Q}{an integer, the number of covariates,}
\item{x}{a list of matrices, the qth matrix contains the observation of the
      qth functional covariate at time points given by grids,}
\item{y}{a numerical vector, the outcome values y_i.}
\item{grids}{a list of numerical vectors, the qth vector is the grid of
      observation points of the qth covariate.}
}}

\item{param}{a list containing:
\describe{
\item{iter}{an integer, the number of iterations of the Gibbs sampler algorithm.}
\item{K}{a vector of integers, corresponding to the numbers of intervals for
      each covariate.}
\item{basis}{a vector of characters among : "uniform" (default),
      "epanechnikov", "gauss" and "triangular" which correspond to
      different basis functions to expand the coefficient function and the
      functional covariates (optional)}
\item{p}{XXXXXX}
}}

\item{progress}{a logical value. If TRUE, the algorithm progress is displayed.
(optional)}
}
\value{
a list containing :
\describe{
 \item{trace}{a matrix. Each row is a draw from the posterior.}
 \item{param}{a list containing K and normalization_values} # XXXXXX
}
}
\description{
A Gibbs Sampler algorithm to sample posterior distribution of
             the Bliss model.
}
\examples{
param_sim <- list(Q=1,n=25,p=50,grids_lim=list(c(0,1)),iter=1e4,K=2)
data_sim <- sim(param_sim,progress=FALSE)
res_Bliss_Gibbs_Sampler <- Bliss_Gibbs_Sampler(data_sim,param_sim)
theta_1 <- res_Bliss_Gibbs_Sampler$trace[1,]
theta_1
}
