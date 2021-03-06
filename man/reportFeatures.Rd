\name{reportFeatures}
\alias{reportFeatures}
\title{Report one row per pair of overlapping query and feature range. Retains all columns from both query and features.}
\usage{
  reportFeatures(query, features, ucsc = FALSE)
}
\arguments{
  \item{query}{A data.frame of regions to annotate. Must
  contain the columns "chr", "start", "end", and the
  "start" coordinates must be 1-based. Columns will not be
  retained in output, but the output vector will match
  query row for row.}

  \item{features}{A data.frame of regions to overlap query
  against. Must contain the columns "chr", "start", "end",
  and the "start" coordinates must be 1-based. Or, must be
  a raw UCSC table from getUCSCTable() if ucsc=TRUE is also
  given.}

  \item{ucsc}{Set to TRUE if the table is a raw UCSC table
  fetched with getUCSCTable()}
}
\value{
  A data.frame, where each row is an overlapping pair of
  query and features regions, and contains data about the
  overlap and all columns from both data sets.
}
\description{
  Given a set of query regions in a data.frame containing
  the columns "chr", "start", and "end", returns a
  data.frame with all columns from both query and features
  for each pair of overlapping ranges from each group. Raw
  UCSC tables can be passed directly if ucsc=TRUE is given,
  and this option will adjust for 0-based start coordinates
  and UCSC's column names for the coordinates.
}

