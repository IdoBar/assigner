% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dlr.R
\name{dlr}
\alias{dlr}
\title{Genotype likelihood ratio distance (Dlr)}
\usage{
dlr(data, strata, plots = FALSE, filename = NULL,
  parallel.core = parallel::detectCores() - 1)
}
\arguments{
\item{data}{The output assignment file (home likelihood or
likelihood ratio statistics) from GENODIVE.}

\item{strata}{A tab delimited file with 2 columns with header:
\code{INDIVIDUALS} and \code{STRATA}.
The \code{STRATA} column is used here as the populations id of your sample.}

\item{plots}{(optional) Generate Dlr plots for all the pairwise populations
in the dataset. The plots are \code{ggplot2} objects that can be modified with
the proper \code{ggplot2} syntax. Default: \code{plots = FALSE}.}

\item{filename}{(optional) Name of the file prefix for
the matrix and the table written in the working directory.}

\item{parallel.core}{(optional) The number of core for parallel computation.
Default: \code{parallel.core = parallel::detectCores() - 1}.}
}
\value{
A list with 5 objects:
\enumerate{
\item the assignment results ($assignment),
\item the dlr pairwise table ($dlr.table),
\item the lower diagonal dlr distance matrix ($dlr.dist),
\item a data.frame with the dlr distance mirrored ($dlr.matrix),
\item the list of dlr plots ($dlr.plots)
}
}
\description{
The function computes Paetkau's et al. (1997) genotype likelihood
ratio distance (Dlr).
}
\examples{
\dontrun{
dlr <- assigner::dlr(
data = "assignment.gdv", strata = "my.strata.tsv", plots = TRUE)

# to get the plots list:
plot.list <- dlr$dlr.plots
# access and isolate in different object a plot with $
}
}
\references{
Paetkau D, Slade R, Burden M, Estoup A (2004)
Genetic assignment methods for the direct, real-time estimation of
migration rate: a simulation-based exploration of accuracy and power.
Molecular Ecology, 13, 55-65.

Paetkau D, Waits LP, Clarkson PL, Craighead L, Strobeck C (1997)
 An empirical evaluation of genetic distance statistics using microsatellite
  data from bear (Ursidae) populations. Genetics, 147, 1943-1957.

Meirmans PG, Van Tienderen PH (2004) genotype and genodive:
two programs for the analysis of genetic diversity of asexual organisms.
Molecular Ecology Notes, 4, 792-794.
}
\author{
Thierry Gosselin \email{thierrygosselin@icloud.com}
}
