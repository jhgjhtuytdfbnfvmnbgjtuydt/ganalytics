% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TableFilter-generics.R, R/TableFilter-methods.R
\docType{methods}
\name{TableFilter}
\alias{TableFilter}
\alias{TableFilter,ANY-method}
\alias{TableFilter<-}
\alias{TableFilter<-,.query-method}
\title{TableFilter.}
\usage{
TableFilter(object, value)

TableFilter(object) <- value

\S4method{TableFilter}{ANY}(object)

\S4method{TableFilter}{.query}(object) <- value
}
\arguments{
\item{object}{The object to be coerced to a TableFilter or the query object
to apply a table filter to.}

\item{value}{The replacement table filter where \code{object} is a query.}
}
\description{
Get the filter.

Set the filter.
}
\section{Methods (by class)}{
\itemize{
\item \code{ANY}: Return the TableFilter that has been applied to the
given query, or coerce the given object into a table filter.

\item \code{.query}: Method to replace the table filter of a query
}}

