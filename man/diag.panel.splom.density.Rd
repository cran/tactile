% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diag.panel.splom.density.R
\name{diag.panel.splom.density}
\alias{diag.panel.splom.density}
\title{Diagonal Density Panels}
\usage{
diag.panel.splom.density(x, bw = "nrd0", adjust = 1, kernel = "gaussian",
  weights = NULL, n = 512, ...)
}
\arguments{
\item{x}{data vector corresponding to that row / column (which will be the
same for diagonal 'panels').}

\item{bw}{the smoothing bandwidth to be used.  The kernels are scaled
    such that this is the standard deviation of the smoothing kernel.
    (Note this differs from the reference books cited below, and from S-PLUS.)

    \code{bw} can also be a character string giving a rule to choose the
    bandwidth.  See \code{\link{bw.nrd}}. \cr The default,
    \code{"nrd0"}, has remained the default for historical and
    compatibility reasons, rather than as a general recommendation,
    where e.g., \code{"SJ"} would rather fit, see also Venables and
    Ripley (2002).

    The specified (or computed) value of \code{bw} is multiplied by
    \code{adjust}.
  }

\item{adjust}{the bandwidth used is actually \code{adjust*bw}.
    This makes it easy to specify values like \sQuote{half the default}
    bandwidth.}

\item{kernel}{a character string giving the smoothing kernel
    to be used. This must partially match one of \code{"gaussian"},
    \code{"rectangular"}, \code{"triangular"}, \code{"epanechnikov"},
    \code{"biweight"}, \code{"cosine"} or \code{"optcosine"}, with default
    \code{"gaussian"}, and may be abbreviated to a unique prefix (single
    letter).

    \code{"cosine"} is smoother than \code{"optcosine"}, which is the
    usual \sQuote{cosine} kernel in the literature and almost MSE-efficient.
    However, \code{"cosine"} is the version used by S.
  }

\item{weights}{numeric vector of non-negative observation weights,
    hence of same length as \code{x}. The default \code{NULL} is
    equivalent to \code{weights = rep(1/nx, nx)} where \code{nx} is the
    length of (the finite entries of) \code{x[]}.}

\item{n}{the number of equally spaced points at which the density is
    to be estimated.  When \code{n > 512}, it is rounded up to a power
    of 2 during the calculations (as \code{\link{fft}} is used) and the
    final result is interpolated by \code{\link{approx}}.  So it almost
    always makes sense to specify \code{n} as a power of two.
  }

\item{...}{Further arguments passed on to \code{\link[lattice:diag.panel.splom]{lattice::diag.panel.splom()}} and
\code{\link[lattice:panel.lines]{lattice::panel.lines()}}.}
}
\description{
Plots univariate density estimates estimates to be used in a
\code{\link[lattice:splom]{lattice::splom()}} call with the \code{diag.panel} argument.
}
\examples{
splom(~ iris[1:4],
      data = iris,
      diag.panel = diag.panel.splom.density,
      pscales = 0)
}
\seealso{
\code{\link[lattice:diag.panel.splom]{lattice::diag.panel.splom()}}, \code{\link[lattice:splom]{lattice::splom()}},
\code{\link[stats:density]{stats::density()}}.
}
