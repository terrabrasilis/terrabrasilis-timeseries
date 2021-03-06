% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TSoperationSHP.R
\name{TSoperationSHP}
\alias{TSoperationSHP}
\title{TS Operation shapefile}
\usage{
TSoperationSHP(name_service = "WTSS-INPE",
coverage = "MOD13Q1",
bands = c("ndvi", "evi", "nir", "mir", "blue", "red"),
start_date = NULL, end_date = NULL, geojson_points = NULL)
}
\arguments{
\item{name_service}{information of service, like WTSS-INPE or SATVEG.}

\item{coverage}{name of coverage from service.}

\item{bands}{set of bands from coverage}

\item{start_date}{first date of interval}

\item{end_date}{last date of the interval}

\item{geojson_points}{receive a GeoJSON with all points from polygon}
}
\value{
Data set with time series data
}
\description{
Acquire time series tibble from service
}
\author{
Adeline Maciel
}
