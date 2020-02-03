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
#'  mod = aov(tiempo ~ ven*ant, data = venenos)
#'  ICplot(mod, "ven")
#'
ICplot2 <- function(modelo, fac, alpha = 0.05, valores = TRUE){
  #
  # Javier Cara - 03/02/2020
  # --------------------------------------------------------------------
  
  library(ggplot2)
  
  # datos (es un data.frame)
  datos = modelo$model
  
  # numero de datos de cada nivel del factor y medias
  nfac = length(modelo$xlevels[[fac]]) # numero de niveles del factor
  
  # ancho de las barras de error
  ta = qt((1-alpha/2),modelo$df.residual)
  sR2 = sum((modelo$residuals)^2)/modelo$df.residual
  sR = sqrt(sR2)
  
  # data.frame con los datos para el ggplot2 y para la salida
  df = data.frame(fac = rep(NA,nfac), media = rep(0,nfac), LimInf = rep(0,nfac), LimSup = rep(0,nfac))
  for (i in 1:nfac){
    df[i,"fac"] = modelo$xlevels[[fac]][i]
    pos = modelo$xlevels[[fac]][i] == datos[,fac]
    ni = sum(pos)
    ymedia = mean(datos[pos,1])
    ancho = ta*sR/sqrt(ni)
    df[i,"media"] = round(ymedia,2)
    df[i,"LimInf"] = round(ymedia-ancho,2)
    df[i,"LimSup"] = round(ymedia+ancho,2)
  }
  
  # Grafico
  p <- ggplot(df, aes(x=fac, y=media, colour=fac)) +
    geom_errorbar(aes(ymin=LimInf, ymax=LimSup), width=.1) +
    geom_point() +
    labs(x = fac, y = names(datos)[1], colour = fac)
  print(p)
  
  # data.frame para la salida
  if (valores){
    return(df)
  }
}
