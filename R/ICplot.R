#'
#' Funcion para crear el grafico de medias con intervalos de confianza
#'
#' El programa ICplot genera el grafico de los intervalos de confianza para las medias en el analisis de varianza.
#'
#' @param modelo: variable que define el modelo de analisis de varianza para analizar. Este
#'                modelo se ha debido crear previamente con la funcion "aov".
#' @param fac: corresponde al nombre del factor que se desea analizar. IMPORTANTE: Este nombre ha de ir entre comillas.
#' @param alpha: Indica el nivel de significacion del intervalo de confianza calculado.
#'               Es un argumento opcional. Por defecto es 0.05.
#' @param valores: devuelve los valores de los intervalos. Por defecto es TRUE.
#' 
#' @export
#' @examples
#'  aov(tiempo ~ ven*ant, data = venenos)
#'  ICplot(mod, "ven")
#'
ICplot <- function(modelo, fac, alpha=0.05, valores = TRUE){
#
# Programmed by E.Caro - Version 1.3 14/02/2014
# Javier Cara - Version 09/03/2017: cambiar leyenda eje y
# Javier Cara - 08/03/2019: salida de los valores numericos
# --------------------------------------------------------------------

  # Calculo de los intervalos
  tabla <- model.tables(modelo, type = "mean")
  xbar <- as.vector( tabla$tables[[fac]] )
  num_dat <-tabla['n']
  num <- num_dat$n[fac]
  
  numall = 1
  for(i in 1:length(num[[fac]]))  numall[i] = num[[fac]][i]
  
  t <- qt((1-alpha/2),modelo$df.residual)
  sr2 <- sum((modelo$residuals)^2)/modelo$df.residual
  sr <- sqrt(sr2)
  ancho <- t*sr/sqrt(numall)
  
  ncol  = length(xbar)
  xlabel =  modelo$xlevels[[fac]]
  
  # Grafico
  plot(c(1:ncol, 1:ncol), c(xbar+ancho, xbar-ancho), col = 0,
       xlab = fac, xaxt = "n",
       ylab = colnames(modelo$model)[1] )
  axis(side=1, at=seq(1,ncol), paste(xlabel))
  
  arrows(1:ncol,xbar+ancho,1:ncol,xbar-ancho,angle=90,code=3,length=.1,
         lwd = 2, col = 259)
  points(1:ncol, xbar, lwd = 10, col = "white")
  points(1:ncol, xbar, lwd = 3, col = "blue")
  
  # data.frame para la salida
  if (valores){
    salida = data.frame(fac = names(tabla$tables[[fac]]),
                        media = round(xbar,2), 
                        LimInf = round(xbar-ancho,2), 
                        LimSup = round(xbar+ancho,2))
    names(salida) = c(fac, "media", paste(alpha/2*100,"%",sep=""), paste((1-alpha/2)*100,"%",sep=""))
    
    return(salida)
  }

}
