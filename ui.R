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


# Variables contínuas
continuas <- c("radius", "texture", "perimeter", "area", "smoothness","compactness",
               "concavity", "concave_points", "symmetry","fractal_dimension")

# Variables categóricas
categoricas <- c("mean","se","worst")

shinyUI(
  navbarPage("Shiny Visualización Avanzada",
             tabPanel("Descripción del trabajo",
                      mainPanel(
                        h1("Visualización gráfica WDBC (Wisconsin Diagnostic Breast Cancer)", align = "center"),
                        h2("Datos de la app", align = "center"),
                        p("La información expuesta en esta app se nutre de un archivo cvs con datos sobre el cáncer de mama.
                          Dicha información es accesible también a través del disponible en el siguiente ftp público: ftp.cs.wisc.edu"),
                        p(""),
                        p(""),
                        h2("Objetivo de la app", align = "center"),
                        p("El objetivo no es otro que poder visualizar de manera más clara y cómoda los datos de los que se compone 
                           el dataset anteriormente expuesto. Esta visualización es un complemento a las visualizaciones y cálculos ya realizadas 
                           en el siguiente código en R disponible a través del siguiente enlace de github:", a("https://github.com/alu4216/WDBC", href = "https://github.com/alu4216/WDBC", target="_black"),
                           "o a rpubs:",a("https://rpubs.com/alu4216/WDBC",href="https://rpubs.com/alu4216/WDBC",target="_black"))
                      )
             ),
             tabPanel("Scatterplot",
                      sidebarPanel(
                        selectInput('tipo', 'Elije el grupo a representar', categoricas, categoricas[[1]]),
                        
                        selectInput('x', 'Elige la variable inicial', continuas, continuas[[1]]),
                        selectInput('y', 'Elige la variable final', continuas, continuas[[4]]),
                        selectInput('color', 'Color', c('Ninguno', 'analysis'),'analysis'),
                        checkboxInput('tipo_bool', '¿Incluir columna analysis en la gráfica?')
                        
                      ),
                      
                      mainPanel(
                        plotOutput('plot',height=500)
                      )
             )
           )
        )

