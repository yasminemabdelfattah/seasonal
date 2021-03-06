% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/summary.R
\name{summary.seas}
\alias{print.summary.seas}
\alias{summary.seas}
\title{Summary of a X13-ARIMA-SEATS seasonal adjustment}
\usage{
\method{summary}{seas}(object, ...)

\method{print}{summary.seas}(x, digits = max(3, getOption("digits") - 3),
  signif.stars = getOption("show.signif.stars"), ...)
}
\arguments{
\item{object}{an object of class \code{"seas"}, usually, a result of a
call to \code{\link{seas}}.}

\item{x}{an object of class \code{"summary.seas"}, usually, a result
of a call to \code{summary.seas}.}

\item{digits}{the number of significant digits to use when printing.}

\item{signif.stars}{logical. If \code{TRUE}, 'significance stars' are printed
for each coefficient.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
\code{summary.seas} returns a list containing the summary statistics
  included in \code{object}, and computes the following additional
  statistics:

  \item{coefficients}{a named matrix containing coefficients, standard
  deviations, t-values and p-values}

  \item{transform}{character string with the type of intial transformation}

  The \code{print} method prints the summary output in a similar way as the
  method for \code{"lm"}.
}
\description{
Like the corresponding mehtod for \code{"lm"} objects, the method for
\code{"seas"} objects returns the estimated coefficients, its standard errors,
z-statistics and corresponding (two-sided) p-values. Coefficients are returned
both for the exogenous regressors and the coefficients of the ARIMA model.
}
\details{
The lower part of the output shows additional information on the estimation:
\describe{
\item{Adjustment}{use of SEATS or X11}
\item{ARIMA}{structure of the seasonal ARIMA model}
\item{Obs.}{number of observations}
\item{Transform}{prior transformation}
\item{AICc, BIC}{value of the information criterion (lower is better)}
\item{QS}{test for seasonality in the final series; null hypothesis: no
seasonality in final; signif. codes are shown if the null hypothesis is
rejected. QS statistics for more series (e.g., the original series) can be
extracted with \code{\link{qs}}.}
\item{Box-Ljung}{test for residual autocorrelation; null hypothesis: no
autocorrelation in residuals; signif. codes are shown if the null hypothesis
is rejected. The test statistic is the result of
\code{Box.test(resid(m), lag = 24, type = "Ljung")}}
\item{Shapiro}{test for normality of the residuals; null hypothesis: normal
distribution of the residuals; signif. codes are shown if the null
hypothesis is rejected. The test statistic is the result of
\code{shapiro.test(resid(m))}}
}
}
\examples{
\dontrun{
m <- seas(AirPassengers)
summary(m)
}
}

