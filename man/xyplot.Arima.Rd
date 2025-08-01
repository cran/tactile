% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xyplot.Arima.R
\name{xyplot.Arima}
\alias{xyplot.Arima}
\title{Diagnostic Plots for ARIMA Models}
\usage{
\method{xyplot}{Arima}(
  x,
  data = NULL,
  which = 1:4,
  lag.max = NULL,
  gof.lag = NULL,
  qq.aspect = "iso",
  na.action = na.pass,
  main = NULL,
  layout = NULL,
  ...
)
}
\arguments{
\item{x}{A fitted time-series model of class \code{Arima}.}

\item{data}{Ignored}

\item{which}{A sequence of integers between 1 and 4, identifying the
plots to be shown.}

\item{lag.max}{Number of lags to compute ACF for.}

\item{gof.lag}{The maximum number of lags for the Ljung--Box test.}

\item{qq.aspect}{Aspect of Q-Q plot (see \code{\link[lattice:qqmath]{lattice::qqmath()}}).}

\item{na.action}{Treatment of \code{NA}s.}

\item{main}{Optional titles for the plots. Can also be \code{TRUE}, in which
case a default list of titles will be added.}

\item{layout}{Either a numeric vector with (columns, rows) to use in the call
to \code{\link[gridExtra:arrangeGrob]{gridExtra::grid.arrange()}}, or a layout matrix which will then be
passed as the \code{layout_matrix} in \code{grid.arrange()}.}

\item{...}{Parameters to pass to \code{\link[lattice:xyplot]{lattice::xyplot()}}.}
}
\value{
Plots a lattice plot and returns a \code{trellis} object.
}
\description{
Diagnostic plots modelled after \code{\link[stats:tsdiag]{stats::tsdiag()}} with some modifications
and corrections of p-values in the Box--Ljung test.
}
\examples{
fit <- arima(lh, order = c(1, 1, 0))
xyplot(fit, layout = c(2, 2))
xyplot(fit, which = c(1:2, 4), layout = rbind(c(1, 1), c(2, 3)))
}
\seealso{
\code{\link[stats:tsdiag]{stats::tsdiag()}}, \code{\link[stats:arima]{stats::arima()}}, \code{\link[lattice:xyplot]{lattice::xyplot()}},
\code{\link[gridExtra:arrangeGrob]{gridExtra::grid.arrange()}}, \code{\link[stats:box.test]{stats::Box.test()}}.
}
