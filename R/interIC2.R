#'
#' Funcion para crear el grafico de interaccion con intervalos de confianza
#'
#' El programa interIC genera el diagrama de interaccion incluyendo intervalos de confianza.
#'
#' @param modelo: variable que define el modelo de analisis de varianza para analizar. Este
#'                modelo se ha debido crear previamente con la funcion "aov".
#' @param facX: corresponde al nombre del factor que se representa en el eje X. IMPORTANTE: Este nombre ha de ir entre comillas.
#' @param facY: corresponde al nombre del otro factor. IMPORTANTE: Este nombre ha de ir entre comillas.
#' @param alpha: Indica el nivel de significacion del intervalo de confianza calculado.
#'               Es un argumento opcional. Por defecto es 0.05.
#' @param valores: devuelve los valores de los intervalos. Por defecto es TRUE.
#' 
#' @export
#' @examples
#'  mod = aov(tiempo ~ ven*ant, data = venenos)
#'  interIC2(mod, "ven","ant")
#'  interIC2(mod, "ven","ant", valores = F)
#'
interIC2 <- function(modelo,facX,facY,alpha=0.05,valores=T){
  #
  # Javier Cara - 03/02/2020
  # --------------------------------------------------------------------
  
  # datos (es un data.frame)
  datos = modelo$model
  
  nx = length(modelo$xlevels[[facX]]) # numero de niveles de facX
  ny = length(modelo$xlevels[[facY]]) # numero de niveles de facY
  nn = nx*ny # numero de categorias total
  
  # ancho de las barras de error
  ta = qt((1-alpha/2),modelo$df.residual)
  sR2 = sum((modelo$residuals)^2)/modelo$df.residual
  sR = sqrt(sR2)
  m = nrow(datos)/nn  # se supone el mismo numero de datos en cada interaccion
  ancho = ta*sR/sqrt(m)
  
  # valores para el data.frame
  df = data.frame(facX = rep(NA,nn), facY = rep(NA,nn), media = rep(0,nn), LimInf = rep(0,nn), LimSup = rep(0,nn))
  k = 1
  for (i in 1:nx){
    for (j in 1:ny){
      facXi = modelo$xlevels[[facX]][i]
      facYj = modelo$xlevels[[facY]][j]
      pos = (facXi == datos[,facX]) & (facYj == datos[,facY])
      df[k,"facX"] = facXi
      df[k,"facY"] = facYj
      ymedia = mean(datos[pos,1])
      df[k,"media"] = round(ymedia,2)
      df[k,"LimInf"] = round(ymedia-ancho,2)
      df[k,"LimSup"] = round(ymedia+ancho,2)
      k = k+1
    }
  }
  
  # Grafico
  # The errorbars overlapped, so use position_dodge to move them horizontally
  pd <- position_dodge(0.1) # move them .05 to the left and right
  
  p <- ggplot(df, aes(x=facX, y=media, group = facY, colour=facY)) + 
    geom_errorbar(aes(ymin=LimInf, ymax=LimSup), width=.1, position=pd) +
    geom_line(position=pd) +
    geom_point(position=pd) +
    labs(x = facX, y = names(datos)[1], colour = facY)
  print(p)

  if (valores){
    return(df)
  }
}

