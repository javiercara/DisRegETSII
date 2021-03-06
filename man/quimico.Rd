% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quimico.R
\docType{data}
\name{quimico}
\alias{quimico}
\title{Datos del rendimiento de una reaccion quimica}
\format{Lista con los siguientes campos:
\itemize{
\item rend: rendimiento de la reaccion quimica
\item conc: concentracion (4\%, 6\%, 8\%, 10\%)
\item temp: temperatura (T1, T2)
\item cat: catalizador (C1, C2, C3)
}}
\usage{
data(quimico)
}
\description{
Se pretende analizar el rendimiento de una reaccion quimica dependiendo
de los siguientes factores: concentracion, catalizador y temperatura.
}
\examples{
data(quimico)
\donttest{aov(rend ~ con*temp*cat,data=quimico)}
}
\keyword{datasets}
