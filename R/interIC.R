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
#' @export
#' @examples
#'  mod = aov(tiempo ~ ven*ant, data = venenos)
#'  interIC(mod, "ven","ant")
#'  interIC(mod, "ven","ant", leyenda_horiz = F)
#'
interIC<- function(modelo,facX,facY,alpha=0.05,leyenda_horiz=T){
  # Programmed by E.Caro - Version 04/03/2015
  # Javier Cara - Version 09/03/2017: cambiar colores, posicion leyenda, margenes
  # Javier Cara - Version 2018/03/28: leyenda vertical
  
  # separacion en horizontal 
  epsilon = 0.03

  tabla   <- model.tables(modelo, type = "mean")

  fac     =   paste(facY, ":", facX, sep = "")
  xlabel 	<-  modelo$xlevels[[facX]]
  xbar    =   tabla$table[[fac]]
  if (length(xbar ) == 0)
  { fac   =   paste(facX, ":", facY, sep = "")
    xbar  <-  tabla$table[[fac]]
    xbar 	<-  t(xbar )
  }

  tabla 		<- model.tables(modelo, type = "mean")
  num_dat 	<- tabla['n']
  num 		  <- num_dat$n[[fac]]
  t 		    <- qt((1-alpha/2),modelo$df.residual)
  sr2 	   	<- sum((modelo$residuals)^2)/modelo$df.residual
  sr 		    <- sqrt(sr2)
  ancho 	  <- t*sr/sqrt(num)
  dime      <- dim(xbar)
  ncol  	  <- dime[2]
  nrow  	  <- dime[1]
  
  colores = rainbow(nrow)

  maxY = max(xbar)+ancho
  minY = min(xbar)-ancho
  rangoY = maxY - minY
  minX = 0.75
  maxX = ncol+0.25
  rangoX = maxX - minX
  if (leyenda_horiz==T){
    xlim = c(minX, maxX+0.25)
    ylim = c(minY-0.05*rangoY, maxY+0.7*rangoY)
  } else {
    xlim = c(minX, maxX + 0.4*rangoX)
    ylim = c(minY, maxY)
  }
  plot(c(1:ncol, 1:ncol),
       c( xbar[1,]*0+max(xbar)+ancho,
          xbar[1,]*0+min(xbar)-ancho), col = 0 ,
       xlab = paste('Factor:', facX), xaxt = "n", 
       ylab = colnames(modelo$model)[1],
       ylim = ylim, xlim = xlim)
  
  axis(side=1, at=seq(1,ncol), paste(xlabel))


  for (i in 1:nrow){
    for (j in 2:ncol){
      arrows(j-1,xbar[i,j-1],j,
             xbar[i,j],angle=0,code=2,length=.1,
             lwd = 1, col = colores[i])
    }
  }

  for (i in 1:nrow)
  {
    arrows(1:ncol + i*epsilon-.5*epsilon*nrow,
           xbar[i,]+ancho,
           1:ncol + i*epsilon-.5*epsilon*nrow,
           xbar[i,]-ancho, angle=90, code=3,length=.1,
           lwd = 2, col = colores[i])

    points(1:ncol + i*epsilon-.5*epsilon*nrow, xbar[i,] , lwd = 10, col = "white"   , pch = i-1)
    points(1:ncol + i*epsilon-.5*epsilon*nrow, xbar[i,] , cex = 1.3, lwd = 2 , col = colores[i], pch = i-1)
  }

  #
  # box.lty = 0: no lines around the legend
  legend("topright", inset=.05, title=paste("Factor:", facY),
        paste(modelo$xlevels[[facY]]), fill = colores, horiz = leyenda_horiz, 
        box.lty = 0, cex = .85)

}
