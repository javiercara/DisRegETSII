% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cerezos.R
\docType{data}
\name{cerezos}
\alias{cerezos}
\title{Datos del volumen de madera de una especie de cerezos junto con datos de altura y diametro del tronco}
\format{Lista con los siguientes campos:
\itemize{
\item altura: altura del tronco (pies)
\item altura: diametro del tronco a un metro del suelo (pies)
\item volumen: volumen del tronco (pies^3)
}}
\usage{
data(cerezos)
}
\description{
Datos del volumen de madera de 31 troncos la especie "cerezo negro" en funcion de la altura del tronco
y del diametro del mismo a un metro sobre el suelo.
}
\examples{
data(cerezos)
\donttest{lm(volumen ~ diametro + altura,data=cerezos)}
}
\keyword{datasets}
