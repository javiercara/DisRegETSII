#'  Ball Bearing Reliability Data (210 records by 11 variables)
#'
#' Each record contains the results of a test of a set of ball bearings.
#' The quantities L10 and L50 are estimated percentiles of the fatigue
#' failure distribution (obtained by fitting a Weibull distribution to
#' the fatigue failure times, separately in each set). The objective is
#' to analyse ln(L10) (and separately ln(L50)) by linear regression on
#' the logarithms of P, Z and D, which are characteristics of the ball
#' bearings. Differences between companies and between types of bearing
#' can be tested.
#' PEDAGOGICAL NOTES:
#' Additional information about these data can be found in the
#' "Datasets and Stories" article "Modeling the Reliability of Ball
#' Bearings" in the Journal of Statistics Education (Caroni 2002,
#' \url{www.amstat.org/publications/jse/v10n3/datasets.caroni.html}).
#'
#' @docType data
#'
#'
#' @usage data(ballbearings)
#'
#'
#' @format Lista con los siguientes campos:
#' \itemize{
# '\item Com: Company          Codes 1, 2, and 3 for companies A, B, and C
# '\item N: Test number      1, 2, ... within company
# '\item Year: Year of test     NA = missing
# '\item NB : No. of bearings
# '\item P: Load
# '\item Z: No. of balls
# '\item D: Diameter
# '\item L10: Percentil10
# '\item L50: Percentil50
# '\item Slope: Weibull slope
# '\item Btype: Bearing type     1, 2, and 3 in Company B; 0 otherwise
#'  }
#' @keywords datasets
#'
#' @source Lieblein, J., and Zelen, M. (1956), Statistical investigation of the fatigue life of deep-groove ball bearings, Journal of Research of the National Bureau of Standards, 57, 273-316.
#'
#' @examples
#' data(ballbearings)
#' \donttest{lm( log(L10) ~ log(D) + log(Z) + log(P) , data=ballbearings)}
"ballbearings"
