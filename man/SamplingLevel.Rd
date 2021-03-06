% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Query-generics.R, R/Query-methods.R
\docType{methods}
\name{SamplingLevel}
\alias{SamplingLevel}
\alias{SamplingLevel,.standardQuery-method}
\alias{SamplingLevel,data.frame-method}
\alias{SamplingLevel<-}
\alias{SamplingLevel<-,.standardQuery-method}
\title{SamplingLevel.}
\usage{
SamplingLevel(object, value)

SamplingLevel(object) <- value

\S4method{SamplingLevel}{.standardQuery}(object)

\S4method{SamplingLevel}{.standardQuery}(object) <- value

\S4method{SamplingLevel}{data.frame}(object)
}
\arguments{
\item{object}{the query or response to check the sampling level of.}

\item{value}{if \code{object} is a query, then use  value to set the sampling
level to of that query.}
}
\description{
Get the sampling level.

Set the sampling level for a ganalytics query.
}
\section{Methods (by class)}{
\itemize{
\item \code{.standardQuery}: Return what level the sampling level of the query
has been set to.

\item \code{.standardQuery}: Set the sampling level of the query.

\item \code{data.frame}: Return details about any sampling that was applied
in the response of the query.
}}

