En este fichero .RMD se realizará un análisis sobre un dataset que recopila información sobre el cáncer de mama. 
Concretamente, contiene información sobre diferentes mediciones relacionadas a los núcleos celulares que aparecen en las imágenes digitalizadas a partir de punciones (PAAF, Punción Aspiración Aguja Fina) en tejido mamario 
que presenta células cancerosas. Dicho Dataset se encuentra disponible en el siguiente ftp público: ftp.cs.wisc.edu

Este dataset cuenta con 569 filas por 32 columnas las cuales son:

1.	Id de la muestra
2.	Diagnosis (M = Maligno, B = Benigno)
3.	Agrupados en MEAN (Media), SE(Error estandar) y WORST(Peor) de las siguentes caracteristicas:
	-	radius (mean of distances from center to points on the perimeter)
	-	texture (standard deviation of gray-scale values)
	-	perimeter
	-	area
	-	smoothness (local variation in radius lengths)
	-	compactness (perimeter^2 / area - 1.0)
	-	concavity (severity of concave portions of the contour)
	-	concave points (number of concave portions of the contour)
	-	symmetry
	-	fractal dimension (“coastline approximation” - 1)

Por último, este dataset no contiene missing values(Valores faltantes), estando perfectamente conformado para todas sus filas y columnas.
Lo que se pretende conseguir con este dataset es lo siguiente:

	-	Representación visual del mismo
	-	Análisis de sus componentes principales (PCA)
	-	Comparación de métodos de clasificación (Supervisados y no supervisados)
