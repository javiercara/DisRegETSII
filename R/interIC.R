interIC<- function(modelo,fac2,fac1,alpha=0.05)
  # Programmed by E.Caro - Version 04/03/2015
{
  
  epsilon = 0.03  
  colores = c(27, 66, 33, 8);
  
  tabla   <- model.tables(modelo, type = "mean")
  
  fac     =   paste(fac1, ":", fac2, sep = "")
  xlabel 	<-  paste('Nivel:', modelo$xlevels[[fac2]])
  xbar    =   tabla$table[[fac]]
  if (length(xbar ) == 0)
  { fac   =   paste(fac2, ":", fac1, sep = "")  
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
   
   
  plot(c(1:ncol, 1:ncol), 
       c( xbar[1,]*0+max(xbar)+ancho, 
          xbar[1,]*0+min(xbar)-ancho), col = 0 ,
       xlab = paste('Factor:', fac2), xaxt = "n", ylab = "medias")
  
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
  
#   legend('top',modelo$xlevel$VEN)
#   legend("top", modelo$xlevel[[fac1]]) 
#   legend('top', paste('Nivel:', modelo$xlevels[[fac1]]), col = colores)

legend("topright", inset=.05, title=paste("Factor:", fac1),
       paste('Nivel:', modelo$xlevels[[fac1]]), fill=colores, horiz = TRUE) 

}
