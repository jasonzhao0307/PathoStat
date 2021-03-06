################################################################################
#' PathoStat class to store PathoStat input data including phyloseq object
#'
#' Contains all currently-supported BatchQC output data classes:
#'
#' slots:
#' \describe{
#'     \item{average_count}{a single object of class otu_tableOrNULL}
#'     \item{besthit_count}{a single object of class otu_tableOrNULL}
#'     \item{highconf_count}{a single object of class otu_tableOrNULL}
#'     \item{lowconf_count}{a single object of class otu_tableOrNULL}
#' }
#'
#' @export pathostat1
#' @examples
#' otumat = matrix(sample(1:100, 100, replace = TRUE), nrow = 10, ncol = 10)
#' rownames(otumat) <- paste0("OTU", 1:nrow(otumat))
#' colnames(otumat) <- paste0("Sample", 1:ncol(otumat))
#' taxmat = matrix(sample(letters, 70, replace = TRUE), 
#' nrow = nrow(otumat), ncol = 7)
#' rownames(taxmat) <- rownames(otumat)
#' colnames(taxmat) <- c("Domain", "Phylum", "Class", 
#' "Order", "Family", "Genus", "Species")
#' OTU = phyloseq::otu_table(otumat, taxa_are_rows = TRUE)
#' TAX = phyloseq::tax_table(taxmat)
#' physeq = phyloseq::phyloseq(OTU, TAX)
#' pathostat1(physeq)
#' 
#' @exportClass PathoStat
pathostat1 <- setClass(Class="PathoStat",
    representation=representation(
        average_count="otu_tableOrNULL",
        besthit_count="otu_tableOrNULL",
        highconf_count="otu_tableOrNULL",
        lowconf_count="otu_tableOrNULL"
    ), contains = "phyloseq",
    prototype=prototype(average_count=NULL, besthit_count=NULL,
        highconf_count=NULL, lowconf_count=NULL)
)
###############################################################################
