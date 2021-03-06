% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/studyTaxonList.R
\name{studyTaxonList}
\alias{studyTaxonList}
\title{Study Taxon List}
\usage{
studyTaxonList(x = NULL, datasources = NULL)
}
\arguments{
\item{x}{A phylogeny of class 'phylo' or a vector of class 'character' containing the names of taxa of interest}

\item{datasources}{A vector of taxonomic datasources implemented in \code{\link{gnr_resolve}}. See \code{\link{http://gni.globalnames.org/} for more information.}}
}
\value{
An object of class \code{\link{BridgeTreeData}} containing the type of inquiry the user has made --a phylogeny or a vector of names-- and a dataframe containing input taxa names, the closeset match according to \code{\link{gnr_resolve}}, and a list of taxonomic datasources that contain the matching name.
}
\description{
Takes input phylogenies or vectors of taxon names, checks against taxonomic database, returns vector of cleaned taxonomic names (using \code{\link{taxonRectification}}) for use in spocc queries, as well as warnings if there are invalid names.
}
\examples{
## Inputting a phylogeny
studyTaxonList(x = phylogeny, datasources = c('NCBI', 'EOL'));

## Inputting a vector of taxon names
studyTaxonList(x = c("Buteo buteo", "Buteo buteo hartedi", "Buteo japonicus"), datasources = c('NCBI', 'EOL'));

}
