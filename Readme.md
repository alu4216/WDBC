En este fichero .RMD se realizar� un an�lisis sobre un dataset que recopila informaci�n sobre el c�ncer de mama. 
Concretamente, contiene informaci�n sobre diferentes mediciones relacionadas a los n�cleos celulares que aparecen en las im�genes digitalizadas a partir de punciones (PAAF, Punci�n Aspiraci�n Aguja Fina) en tejido mamario 
que presenta c�lulas cancerosas. Dicho Dataset se encuentra disponible en el siguiente ftp p�blico: ftp.cs.wisc.edu

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
	-	fractal dimension (�coastline approximation� - 1)

Por �ltimo, este dataset no contiene missing values(Valores faltantes), estando perfectamente conformado para todas sus filas y columnas.
Lo que se pretende conseguir con este dataset es lo siguiente:

	-	Representaci�n visual del mismo
	-	An�lisis de sus componentes principales (PCA)
	-	Comparaci�n de m�todos de clasificaci�n (Supervisados y no supervisados)
