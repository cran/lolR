% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulations.R
\name{lol.sims.qdtoep}
\alias{lol.sims.qdtoep}
\title{Quadratic Discriminant Toeplitz Simulation}
\usage{
lol.sims.qdtoep(
  n,
  d,
  rotate = FALSE,
  priors = NULL,
  D1 = 10,
  b = 0.4,
  rho = 0.5
)
}
\arguments{
\item{n}{the number of samples of the simulated data.}

\item{d}{the dimensionality of the simulated data.}

\item{rotate}{whether to apply a random rotation to the mean and covariance. With random rotataion matrix \code{Q}, \code{mu = Q*mu}, and \code{S = Q*S*Q}. Defaults to \code{FALSE}.}

\item{priors}{the priors for each class. If \code{NULL}, class priors are all equal. If not null, should be \code{|priors| = K}, a length \code{K} vector for \code{K} classes. Defaults to \code{NULL}.}

\item{D1}{the dimensionality for the non-equal covariance terms. Defaults to \code{10}.}

\item{b}{a scaling parameter for the means. Defaults to \code{0.4}.}

\item{rho}{the scaling of the covariance terms, should be < 1. Defaults to \code{0.5}.}
}
\value{
A list of class \code{simulation} with the following:
\item{X}{\code{[n, d]} the \code{n} data points in \code{d} dimensions as a matrix.}
\item{Y}{\code{[n]} the \code{n} labels as an array.}
\item{mus}{\code{[d, K]} the \code{K} class means in \code{d} dimensions.}
\item{Sigmas}{\code{[d, d, K]} the \code{K} class covariance matrices in \code{d} dimensions.}
\item{priors}{\code{[K]} the priors for each of the \code{K} classes.}
\item{simtype}{The name of the simulation.}
\item{params}{Any extraneous parameters the simulation was created with.}
}
\description{
A function for simulating data generalizing the Toeplitz setting, where each class has a different covariance matrix. This results in a Quadratic Discriminant.
}
\section{Details}{

For more details see the help vignette:
\code{vignette("sims", package = "lolR")}
}

\examples{
library(lolR)
data <- lol.sims.qdtoep(n=200, d=30)  # 200 examples of 30 dimensions
X <- data$X; Y <- data$Y
}
\author{
Eric Bridgeford
}
