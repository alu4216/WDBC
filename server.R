####################################################
# Mastér Big Data UNED.                            #
# Trabajo Final de Máster.                         #
# Alumno: Josué Delgado Martín                     #
#################################################### 


if(!is.element("GGally", installed.packages()[, 1]))
  install.packages("GGally",repos = 'http://cran.us.r-project.org')

if(!is.element("ggplot2", installed.packages()[, 1]))
  install.packages("ggplot2",repos = 'http://cran.us.r-project.org')

suppressPackageStartupMessages(library(shiny))
suppressPackageStartupMessages(library(GGally))
suppressPackageStartupMessages(library(ggplot2))

# Cargamos los datos 
WDBC <- read.csv("datos/WDBC.dat",header=FALSE)

#Poneamos cabeceras
tipos <- c("mean", "se", "worst")
mediciones <- c("radius", "texture", "perimeter", "area", "smoothness","compactness",
                "concavity", "concave_points", "symmetry","fractal_dimension")

names <- c("id","analysis", paste0(rep(mediciones, 3), "_", rep(tipos, each=10)))
colnames(WDBC) <- c(names)

#Eliminamos columna que no nos sirve
WDBC <- WDBC[,-1]

shinyServer(function(input, output) {
 
  output$plot <- renderPlot({
    
    custom_colums = c(names[which(names == (paste(input$x, input$tipo, sep = "_"))) : 
                                         which(names == (paste(input$y, input$tipo, sep = "_")))])
    if (input$tipo_bool)
      custom_colums = c("analysis",custom_colums)
    
     
    if(input$color != 'Ninguno') {
      

      p <- ggpairs(
        WDBC, 
        aes(alpha = 0.65,color = analysis), 
        columns =  custom_colums,
        legend = 1,
        upper = list(continuous = wrap("cor", alpha = 1, size = 3, alignPercent=1)),
        lower = list(continuous = wrap("points", alpha=0.35)),
        title = paste("Cancer Features.", input$tipo))
      p <- p + theme_minimal()
      p <- p + theme(legend.position = "bottom",legend.title = element_blank())
      
      print(p)
    }
    else {
      p <- ggpairs(
        WDBC, 
        columns = custom_colums,
        upper = list(continuous = wrap("cor", alpha = 1, size = 3, alignPercent=1)),
        lower = list(continuous = wrap("points", alpha=0.35)),
        title = paste("Cancer Features.", input$tipo))
      p <- p + theme_minimal()
      
      print(p)
    }
  })
})
