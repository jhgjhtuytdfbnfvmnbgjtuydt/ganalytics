% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bool-generics.R, R/Bool-methods.R
\docType{methods}
\name{Not}
\alias{!,.comparator-method}
\alias{!,.expr-method}
\alias{!,.gaSegmentFilter-method}
\alias{!,orExpr-method}
\alias{Not}
\alias{Not,.comparator-method}
\alias{Not,.expr-method}
\alias{Not,.gaSegmentFilter-method}
\alias{Not,orExpr-method}
\title{Not.}
\usage{
Not(object)

\S4method{Not}{.comparator}(object)

\S4method{!}{.comparator}(x)

\S4method{Not}{.expr}(object)

\S4method{!}{.expr}(x)

\S4method{Not}{orExpr}(object)

\S4method{!}{orExpr}(x)

\S4method{Not}{.gaSegmentFilter}(object)

\S4method{!}{.gaSegmentFilter}(x)
}
\arguments{
\item{object}{An object to get the logical inverse of.}

\item{x}{the object to return the logical inverse of.}
}
\description{
Invert an expression, i.e. NOT.
}
\section{Methods (by class)}{
\itemize{
\item \code{.comparator}: Return the inverse of the supplied comparison operator.

\item \code{.comparator}: Return the inverse of the supplied comparator.

\item \code{.expr}: Invert the comparator of a condition expression.

\item \code{.expr}: Invert the comparator of the condition expression.

\item \code{orExpr}: Invert an OR expression using De Morgan's Theorem.

\item \code{orExpr}: Invert an OR expression using De Morgan's Theorem.

\item \code{.gaSegmentFilter}: Invert the negation of a segment filter condition, i.e.
include <-> exclude

\item \code{.gaSegmentFilter}: Invert the negation of a segment filter condition, i.e.
include <-> exclude
}}
\seealso{
\code{\link{And}} \code{\link{Or}} \code{\link{xor}}
}

