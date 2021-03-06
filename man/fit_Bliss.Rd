% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bliss_method.R
\name{fit_Bliss}
\alias{fit_Bliss}
\title{Bliss method}
\usage{
fit_Bliss(data, param, do_beta_posterior_density = TRUE, sann = TRUE,
  progress = FALSE)
}
\arguments{
\item{data}{a list containing:
\describe{
\item{Q}{an integer, the number of functional covariates.}
\item{x}{a list of matrices, the qth matrix contains the observation of the
      qth functional covariate at time points given by grids,}
\item{y}{a numerical vector, the outcome values y_i.}
\item{grids}{a list of numerical vectors, the qth vector is the grid of
       time points for the qth functional covariate.}
}}

\item{param}{a list containing: XXXXXX
\describe{
\item{iter}{an integer, the number of iterations of the Gibbs sampler algorithm.}
\item{K}{a vector of integers, corresponding to the numbers of intervals for
      each covariate.}
\item{basis}{a vector of characters among : "uniform" (default),
      "epanechnikov", "gauss" and "triangular" which correspond to
      different basis functions to expand the coefficient function and the
      functional covariates (optional)}
\item{g}{a nonnegative value, hyperparameter of the Bliss model which is the
         coefficient of the Ridge Zellner prior. (optional)}
\item{burnin}{an integer, the number of iteration to drop from the Gibbs
      sample. (optional)}
\item{thin}{an integer, used to thin the Gibbs sample to compute an
      approximation of the posterior density of beta(t). (optional)}
\item{iter_sann}{an integer, the number of iteration of the Simulated
      Annealing algorithm. (optional)}
\item{times_sann}{an integer, XXXXXXXXXX. (optional)}
\item{n_chains}{number of chains to do in the Gibbs sampler. (optional)}
\item{theta_posterior_density}{a logical value. XXXXX (optional)}
\item{Temp_init}{a nonnegative value, the initial temperatures for the
                cooling function of the Q Simulated Annealings. (optional)}
}}

\item{do_beta_posterior_density}{a logical value. If TRUE, the posterior density
of the coefficient function is computed. (optional)}

\item{sann}{a logical value. If TRUE, the Bliss estimate is computed. (optional)}

\item{progress}{a logical value. If TRUE, the algorithm progress is displayed.
(optional)}
}
\value{
return a list containing :
\describe{
 \item{alpha}{a numerical vector. XXXXXXX}
 \item{beta_sample}{a list of matrices. For the qth covariate, beta_sample[[q]]
       is a matrix where each row is a coefficient function associated  to
       the iteration i of the Gibbs sampler.}
 \item{bliss_estimate}{a list of numerical vectors corresponding to the
 Bliss estimates of each coefficient function.}
 \item{chain}{a list. XXXXX}
 \item{param_beta_density}{a list. XXXX}
 \item{beta_posterior_density}{a list of Q items. Each item contains: XXXX des trucs a changer ? XXXX
 Firts level: a matrix containing a posterior sample of coefficient function.
 Second level: for each covariate, there is a list of three levels containing
 1) a grid x, 2) a grid y and 3) matrix z containing approximations of the
 posterior density of the coefficient function on the 2-dimensional grid
 defined from x and y.}
 \item{res_Simulated_Annealing}{a list: the qth item is the result of the
       function Bliss_Simulated_Annealing applied for the qth functional
       covariate.}
 \item{res_Gibbs_Sampler}{a list: the qth item is the result of the function
       Bliss_Gibbs_Sampler for the qth covariate.}
 \item{support_estimate}{XXXXX}
}
}
\description{
Perform the Bliss method to fit the Bayesian Functional
Linear Regression model (with Q functional covariates).
}
\examples{
# see the vignette BlissIntro.
}
