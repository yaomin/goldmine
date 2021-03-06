\name{reportGeneModel}
\alias{reportGeneModel}
\title{Report overlap details with one row per pair of overlapping query and gene isoform genomic region}
\usage{
  reportGeneModel(query, genome, cachedir = NULL,
    flank.bp = 1000)
}
\arguments{
  \item{query}{A data.frame of regions to annotate. Must
  contain the columns "chr", "start", "end", and the
  "start" coordinates must be 1-based. All additional
  columns will be retained in the output object.}

  \item{genome}{The UCSC name specific to the genome of the
  query coordinates (e.g. "hg19", "hg18", "mm10", etc)}

  \item{cachedir}{A path to a directory where a local cache
  of UCSC tables are stored. If equal to \code{NULL}
  (default), the data will be downloaded to temporary files
  and loaded on the fly.}

  \item{flank.bp}{The size in base pairs for the flanking
  category.}
}
\value{
  A data.frame with all rows and columns of the query
  data.frame with the annotation columns added.
}
\description{
  Given a set of query regions in a data.frame containing
  the columns "chr", "start", and "end", returns a new
  data.frame with one row for each overlapping pair of
  query region and gene isoform in the UCSC knownGene
  table. The columns report the percent of the query region
  that overlaps with gene model regions for that specific
  isoform (5' UTR, 3' UTR, exons, introns, flanks).
}

