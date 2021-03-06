% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Segment-generics.R, R/Segment-methods.R
\docType{methods}
\name{Segment}
\alias{Segment}
\alias{Segment,ANY-method}
\alias{Segment,NULL-method}
\alias{Segment,character-method}
\alias{Segment,gaQuery-method}
\alias{Segment,gaSegmentList-method}
\alias{Segment,gaUserSegment-method}
\alias{Segment,numeric-method}
\alias{Segment<-}
\alias{Segment<-,gaDynSegment-method}
\alias{Segment<-,gaQuery-method}
\alias{Segment<-,gaSegmentId-method}
\title{Segment.}
\usage{
Segment(object, ..., scope = "sessions")

Segment(object) <- value

\S4method{Segment}{numeric}(object)

\S4method{Segment}{character}(object)

\S4method{Segment}{ANY}(object, ..., scope = "sessions")

\S4method{Segment}{`NULL`}(object)

\S4method{Segment}{gaDynSegment}(object) <- value

\S4method{Segment}{gaSegmentId}(object) <- value

\S4method{Segment}{gaSegmentList}(object)

\S4method{Segment}{gaQuery}(object)

\S4method{Segment}{gaQuery}(object) <- value

\S4method{Segment}{gaUserSegment}(object)
}
\arguments{
\item{object}{An expression to coerce to a segment definition or segment ID}

\item{...}{Other expressions to combine with the first expression, if
appropriate.}

\item{scope}{The scope level to apply to the resulting segment definition.}

\item{value}{The segment definition or ID to set the segment parameter to.}
}
\description{
Get the segment.

Set the segment
}
\section{Methods (by class)}{
\itemize{
\item \code{numeric}: Interpret the supplied character or numeric value as a segment ID.

\item \code{character}: Interpret the supplied character or numeric value as a segment ID.

\item \code{ANY}: Create a non-sequential segment using the supplied
expressions.

\item \code{NULL}: returns NULL

\item \code{gaDynSegment}: Change the definition of a dynamic segment.

\item \code{gaSegmentId}: Change the ID of the supplied segment.

\item \code{gaSegmentList}: Returns itself

\item \code{gaQuery}: Return the definition of the segment applied to the view.

\item \code{gaQuery}: Set the segments to be used witin a query.

\item \code{gaUserSegment}: Return the segment ID of the supplied GA Management API
user segment.
}}

