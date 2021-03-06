% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxonomy.R
\name{findTaxonomy300}
\alias{findTaxonomy300}
\title{Find the taxonomy for maximum 300 tids}
\usage{
findTaxonomy300(tids)
}
\arguments{
\item{tids}{Given taxonomy ids}
}
\value{
taxondata Data with the taxonomy information
}
\description{
Find the taxonomy for maximum 300 tids
}
\examples{
example_data_dir <- system.file("example/data", package = "PathoStat")
pathoreport_file_suffix <- "-sam-report.tsv"
datlist <- readPathoscopeData(example_data_dir, 
pathoreport_file_suffix, input.files.name.vec = as.character(1:6))
dat <- datlist$data
ids <- rownames(dat)
tids <- unlist(lapply(ids, FUN = grepTid))
taxonLevels <- findTaxonomy300(tids[1:5])
}
