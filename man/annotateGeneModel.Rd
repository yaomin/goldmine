\name{annotateGeneModel}
\alias{annotateGeneModel}
\title{Annotate regions in non-mutually exclusive gene model categories}
\usage{
  annotateGeneModel(query, genome, cachedir = NULL,
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
  data.frame with the same number of rows as the query and
  adds annotation columns for the percent of each query
  region that overlaps with a type of gene model region (5'
  UTR, 3' UTR, exon, intron, upstream flank, downstream
  flank). Since there are many overlapping isoforms of
  genes and instances of overlapping separate genes, the
  percentages are not mutually exclusive. A "call" column
  creates discrete categories for each combination of
  overlaps observed.
}

