#' MSK-IMPACT data on somatic non-synonymous single
#' nucleotide variants (SNV)
#'
#' A subset of the publicly available MSK-IMPACT (a targeted clinical gene panel)
#' sequencing data containing non-synonymous SNV mutations. More specifically,
#' the subset of the MSK-IMPACT data with
#' \code{Variant_Type == "SNP"} and \code{ Variant_Classification %in%
#' c("Missense_Mutation", "Nonsense_Mutation", "Nonstop_Mutation").}
#' The genes MLL3, MLL2, MLL, and MYCL1 are recoded as
#' KMT2C, KMT2D, KMT2A and MYCL respectively.
#'
#' @format A dataset with 68,919 rows and 5 columns:
#' \describe{
#' \item{Hugo_Symbol}{the gene label}
#' \item{Variant}{the variant label. Obtained by concatenating
#' the columns labeled
#' 'Hugo_Symbol', 'Chromosome', 'Start_Position', 'Tumor_Seq_Allele1',
#' and 'Tumor_Seq_Allele2' in the original MSK-IMPACT data}
#' \item{patient_id}{the patient (tumor) label. Obtained by extracting
#' the first 9 characters of the column'Tumor_Sample_Barcode' in
#' the original MSK-IMPACT data}
#' \item{Cancer_Type}{the cancer category associated with the tumor.}
#' \item{MS}{dominant Mutation Signature of the tumor.
#' Obtained using Alexandrov 2013 mutation signature
#' calling algorithm. Contains 7 categories Non-hypermutated, Smoking (4),
#' Other, APOBEC (2, 13), UV (7), POLE (10), MMR (6, 15, 20, 26), with the numbers
#' within parenthesis indicating the Signature number in COSMIC-30 list. The category
#' Non-hypermutated corresponds to tumors with total number of mutations <= 37.
#' The threshold 37 is obtained by comparing the median tumor specific mutation burdens
#' in \code{impact} and \code{tcga} and then using TCGA hyper-mutation threshold of 500.}
#' }
#' @source
#' https://github.com/cBioPortal/datahub
#'

"impact"
