;
; ONTOLOGIA
;

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot Idioma
;+		(comment "Idiomas en los que esta disponible un libro concreto.")
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Es_Genero_De
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Es_Del_Genero)
		(create-accessor read-write))
	(single-slot Nombre
;+		(comment "Nombre")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Es_Autor_De
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Tiene_Como_Autor)
		(create-accessor read-write))
	(single-slot popular_F
;+		(comment "Indica si es un libro popular entre el publico femenino.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad_recomendada
;+		(comment "Edad recomendada para su lectura")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_predecesor_de
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot es_sucesor_se)
		(create-accessor read-write))
	(multislot Se_Adquiere
;+		(comment "Conjunto de objetos que se pueden adquirir en un lugar.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Se_Adquiere_En)
		(create-accessor read-write))
	(single-slot Valoracion
;+		(comment "Valoracion de otros usuarios que han leido el libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot popular_M
;+		(comment "Indica si es un libro popular entre el publico masculino.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Popularidad
;+		(comment "Nivel de popularidad de un autor.")
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Se_Adquiere_En
;+		(comment "Lugares donde se puede adquirir un objeto.")
		(type INSTANCE)
;+		(allowed-classes LugarDeAdquision)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Se_Adquiere)
		(create-accessor read-write))
	(multislot Formato
;+		(comment "Formato en el que un libro esta escrito")
		(type SYMBOL)
		(allowed-values Paper Digital)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot edad_minima
;+		(comment "Edad minima que se debe tener para leer el libro")
		(type INTEGER)
		(default 3)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad_Lenguaje
;+		(comment "Nivel del lenguaje utilizado por un autor concreto.")
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad_Tramas
;+		(comment "Cuan complejas suelen ser las del autor")
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Es_Version_Original
;+		(comment "Es la version original, o una adaptacion.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Es_Del_Genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Es_Genero_De)
		(create-accessor read-write))
	(multislot Tiene_Como_Autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Es_Autor_De)
		(create-accessor read-write))
	(single-slot Nacionalidad
;+		(comment "Lugar de nacimiento del autor.")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Clima
;+		(comment "Ambiente comunmente encontrado en un lugar.")
		(type SYMBOL)
		(allowed-values Tranquilo Ajetreado Silencioso Ruidoso)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NumPag
;+		(comment "Numero de paginas del libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_sucesor_se
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot es_predecesor_de)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot popular_F
;+		(comment "Indica si es un libro popular entre el publico femenino.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad_recomendada
;+		(comment "Edad recomendada para su lectura")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_predecesor_de
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Es_Del_Genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Se_Adquiere_En
;+		(comment "Lugares donde se puede adquirir un objeto.")
		(type INSTANCE)
;+		(allowed-classes LugarDeAdquision)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Idioma
;+		(comment "Idiomas en los que esta disponible un libro concreto.")
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Tiene_Como_Autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Formato
;+		(comment "Formato en el que un libro esta escrito")
		(type SYMBOL)
		(allowed-values Paper Digital)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot Nombre
;+		(comment "Nombre")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad_minima
;+		(comment "Edad minima que se debe tener para leer el libro")
		(type INTEGER)
		(default 3)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valoracion
;+		(comment "Valoracion de otros usuarios que han leido el libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NumPag
;+		(comment "Numero de paginas del libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_sucesor_se
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot popular_M
;+		(comment "Indica si es un libro popular entre el publico masculino.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Es_Version_Original
;+		(comment "Es la version original, o una adaptacion.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Autor
	(is-a USER)
	(role concrete)
	(single-slot Nombre
;+		(comment "Nombre")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad_Lenguaje
;+		(comment "Nivel del lenguaje utilizado por un autor concreto.")
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Es_Autor_De
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Idioma
;+		(comment "Idiomas en los que esta disponible un libro concreto.")
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Popularidad
;+		(comment "Nivel de popularidad de un autor.")
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nacionalidad
;+		(comment "Lugar de nacimiento del autor.")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Lugar
	(is-a USER)
	(role concrete)
	(single-slot Nombre
;+		(comment "Nombre")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass LugarDeAdquision
	(is-a Lugar)
	(role concrete)
	(multislot Se_Adquiere
;+		(comment "Conjunto de objetos que se pueden adquirir en un lugar.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass LugarDeLectura
	(is-a Lugar)
	(role concrete)
	(single-slot Clima
;+		(comment "Ambiente comunmente encontrado en un lugar.")
		(type SYMBOL)
		(allowed-values Tranquilo Ajetreado Silencioso Ruidoso)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Genero "Subgenero dentro de la Sci-Fi"
	(is-a USER)
	(role concrete)
	(multislot Es_Genero_De
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot Nombre
;+		(comment "Nombre")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

;
; INSTANCIAS
;

(definstances instancias
; Mon Dec 16 19:16:11 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 660")

([salu2_Class0] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2_Class10000]
		[salu2_Class10001]
		[salu2_Class20001]
		[salu2con2_Class10018])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Nora Roberts")
	(Popularidad Media))

([salu2_Class1] of  Libro

	(edad_minima 16)
	(edad_recomendada 18)
	(Es_Del_Genero [salu2_Class9])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Ready Player One: A Novel")
	(NumPag 400)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class26])
	(Valoracion 9))

([salu2_Class10] of  Genero

	(Es_Genero_De
		[salu2con2_Class20]
		[salu2con2_Class31]
		[salu2con2_Class10005]
		[salu2con2_Class10010]
		[salu2con2_Class10012]
		[salu2con2_Class10013])
	(Nombre "Exploration"))

([salu2_Class10000] of  Libro

	(edad_minima 15)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class9])
	(es_predecesor_de [salu2_Class10001])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 1")
	(NumPag 448)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 8))

([salu2_Class10001] of  Libro

	(edad_minima 15)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class9])
	(es_predecesor_de [salu2_Class20001])
	(es_sucesor_se [salu2_Class10000])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 2")
	(NumPag 480)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 9))

([salu2_Class11] of  Genero

	(Es_Genero_De
		[salu2con2_Class3]
		[salu2con2_Class23]
		[salu2con2_Class28]
		[salu2con2_Class27])
	(Nombre "FirstContact"))

([salu2_Class13] of  Genero

	(Es_Genero_De
		[salu2con2_Class1]
		[salu2con2_Class3]
		[salu2con2_Class10004]
		[salu2con2_Class10020]
		[salu2con2_Class10021]
		[salu2con2_Class10022])
	(Nombre "GeneticEngineering"))

([salu2_Class14] of  Genero

	(Es_Genero_De
		[salu2con2_Class4]
		[salu2con2_Class10014]
		[salu2con2_Class10015]
		[salu2con2_Class10016]
		[salu2con2_Class10017])
	(Nombre "HardScienceFiction"))

([salu2_Class15] of  Genero

	(Es_Genero_De
		[salu2con2_Class12]
		[salu2con2_Class19]
		[salu2con2_Class10006]
		[salu2con2_Class10007]
		[salu2con2_Class10008])
	(Nombre "History&Criticism"))

([salu2_Class16] of  Genero

	(Es_Genero_De
		[salu2con2_Class28]
		[salu2con2_Class27]
		[salu2con2_Class29]
		[salu2con2_Class10010]
		[salu2con2_Class10012]
		[salu2con2_Class10013])
	(Nombre "Humorous"))

([salu2_Class17] of  Genero

	(Es_Genero_De
		[salu2con2_Class22]
		[salu2con2_Class20]
		[salu2con2_Class23]
		[salu2con2_Class24]
		[salu2con2_Class29]
		[salu2con2_Class10022])
	(Nombre "Military"))

([salu2_Class18] of  Genero

	(Es_Genero_De
		[salu2con2_Class18]
		[salu2con2_Class31]
		[salu2con2_Class10009]
		[salu2con2_Class10010]
		[salu2con2_Class10012]
		[salu2con2_Class10013])
	(Nombre "Post-Apocalyptic"))

([salu2_Class19] of  Genero

	(Es_Genero_De
		[salu2con2_Class6]
		[salu2con2_Class7]
		[salu2con2_Class10]
		[salu2con2_Class10018]
		[salu2con2_Class10019])
	(Nombre "SpaceOpera"))

([salu2_Class20] of  Genero

	(Es_Genero_De
		[salu2con2_Class13]
		[salu2con2_Class14]
		[salu2con2_Class15]
		[salu2con2_Class10000]
		[salu2con2_Class10002])
	(Nombre "ShortStories"))

([salu2_Class20000] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Tren"))

([salu2_Class20001] of  Libro

	(edad_minima 15)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class9])
	(es_sucesor_se [salu2_Class10001])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 3")
	(NumPag 464)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 8))

([salu2_Class20002] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2_Class20003]
		[salu2con2_Class24]
		[salu2con2_Class10002])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "H. P. Lovecraft")
	(Popularidad Alta))

([salu2_Class20003] of  Libro

	(edad_minima 18)
	(edad_recomendada 50)
	(Es_Del_Genero [salu2_Class9])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Tales of Horror")
	(NumPag 768)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2_Class20002])
	(Valoracion 7))

([salu2_Class20004] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2_Class20005]
		[salu2_Class20007]
		[salu2_Class20008]
		[salu2con2_Class27]
		[salu2con2_Class28])
	(Idioma Ingles Aleman)
	(Nacionalidad "China")
	(Nombre "Cixin Liu")
	(Popularidad Baja))

([salu2_Class20005] of  Libro

	(edad_minima 6)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class4])
	(es_predecesor_de [salu2_Class20007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Three-Body Problem")
	(NumPag 416)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 7))

([salu2_Class20007] of  Libro

	(edad_minima 16)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class4])
	(es_predecesor_de [salu2_Class20008])
	(es_sucesor_se [salu2_Class20005])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Dark Forest (Remembrance of Earth's Past)")
	(NumPag 528)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 9))

([salu2_Class20008] of  Libro

	(edad_minima 18)
	(edad_recomendada 42)
	(Es_Del_Genero [salu2_Class4])
	(es_sucesor_se [salu2_Class20007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Death's End (Remembrance of Earth's Past)")
	(NumPag 624)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 8))

([salu2_Class20009] of  Libro

	(edad_minima 21)
	(edad_recomendada 20)
	(Es_Del_Genero [salu2_Class4])
	(Es_Version_Original TRUE)
	(Formato Digital Paper)
	(Idioma Ingles Frances)
	(Nombre "Stories of Your Life and Others")
	(NumPag 304)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20010])
	(Valoracion 6))

([salu2_Class20010] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De
		[salu2_Class20009]
		[salu2con2_Class24]
		[salu2con2_Class10014])
	(Idioma Ingles)
	(Nacionalidad "China")
	(Nombre "Ted Chiang")
	(Popularidad Media))

([salu2_Class20011] of  Libro

	(edad_minima 16)
	(edad_recomendada 25)
	(Es_Del_Genero [salu2_Class4])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Childhood's End: A Novel")
	(NumPag 224)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20012])
	(Valoracion 7))

([salu2_Class20012] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2_Class20011]
		[salu2con2_Class10022])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "Arthur C. Clarke")
	(Popularidad Media))

([salu2_Class20013] of  Libro

	(edad_minima 6)
	(edad_recomendada 20)
	(Es_Del_Genero [salu2_Class8])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Snow Crash")
	(NumPag 200)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20014])
	(Valoracion 6))

([salu2_Class20014] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20013])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Neal Stephenson")
	(Popularidad Alta))

([salu2_Class20015] of  Libro

	(edad_minima 12)
	(edad_recomendada 22)
	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20017])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "City of Golden Shadow (Otherland, Volume 1)")
	(NumPag 800)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 7))

([salu2_Class20016] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2_Class20015]
		[salu2_Class20017]
		[salu2_Class20018]
		[salu2_Class20019])
	(Idioma Ingles Castellano)
	(Nacionalidad "USA")
	(Nombre "Tad Williams")
	(Popularidad Media))

([salu2_Class20017] of  Libro

	(edad_minima 12)
	(edad_recomendada 22)
	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20018])
	(es_sucesor_se [salu2_Class20015])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "River of Blue Fire (Otherland, Volume 2)")
	(NumPag 704)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 7))

([salu2_Class20018] of  Libro

	(edad_minima 12)
	(edad_recomendada 22)
	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20019])
	(es_sucesor_se [salu2_Class20017])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Mountain of Black Glass (Otherland, Volume 3)")
	(NumPag 784)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 8))

([salu2_Class20019] of  Libro

	(edad_minima 12)
	(edad_recomendada 22)
	(Es_Del_Genero [salu2_Class8])
	(es_sucesor_se [salu2_Class20018])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Sea of Silver Light (Otherland, Volume 4)")
	(NumPag 1072)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 9))

([salu2_Class20020] of  Libro

	(edad_minima 6)
	(edad_recomendada 20)
	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Time Machine")
	(NumPag 113)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20021])
	(Valoracion 8))

([salu2_Class20021] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2_Class20020]
		[salu2con2_Class10017]
		[salu2con2_Class10021])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "H.G. Wells")
	(Popularidad Baja))

([salu2_Class20022] of  Libro

	(edad_minima 16)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "1636: The Atlantic Encounter (28) (Ring of Fire)")
	(NumPag 368)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor
		[salu2_Class20024]
		[salu2_Class20023])
	(Valoracion 7))

([salu2_Class20023] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20022])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Eric Flint")
	(Popularidad Media))

([salu2_Class20024] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20022])
	(Idioma Ingles Frances)
	(Nacionalidad "USA")
	(Nombre "Walter H. Hunt")
	(Popularidad Media))

([salu2_Class20025] of  Libro

	(edad_minima 12)
	(edad_recomendada 66)
	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Digital)
	(Idioma Ingles Aleman)
	(Nombre "How to Stop Time: A Novel")
	(NumPag 352)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20026])
	(Valoracion 7))

([salu2_Class20026] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De [salu2_Class20025])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "Matt Haig")
	(Popularidad Alta))

([salu2_Class20027] of  Libro

	(edad_minima 6)
	(edad_recomendada 10)
	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Lightning")
	(NumPag 372)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20028])
	(Valoracion 6))

([salu2_Class20028] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De [salu2_Class20027])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Dean Koontz")
	(Popularidad Baja))

([salu2_Class20029] of  Libro

	(edad_minima 18)
	(edad_recomendada 30)
	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Paper Digital)
	(Idioma Ingles Aleman Frances Castellano)
	(Nombre "Flatland: A Romance of Many Dimensions")
	(NumPag 119)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20030])
	(Valoracion 10))

([salu2_Class20030] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De
		[salu2_Class20029]
		[salu2con2_Class10015])
	(Idioma Ingles Aleman)
	(Nacionalidad "UK")
	(Nombre "Edwin A. Abbot")
	(Popularidad Alta))

([salu2_Class20031] of  LugarDeLectura

	(Clima Ruidoso)
	(Nombre "Autobus"))

([salu2_Class20032] of  LugarDeLectura

	(Clima Ruidoso)
	(Nombre "Metro"))

([salu2_Class21] of  Genero

	(Es_Genero_De
		[salu2con2_Class5]
		[salu2con2_Class6]
		[salu2con2_Class7]
		[salu2con2_Class10])
	(Nombre "Steampunk"))

([salu2_Class22] of  Genero

	(Es_Genero_De
		[salu2_Class20020]
		[salu2_Class20022]
		[salu2_Class20025]
		[salu2_Class20027]
		[salu2_Class20029])
	(Nombre "TimeTravel"))

([salu2_Class25] of  LugarDeAdquision

	(Nombre "Amazon.com")
	(Se_Adquiere
		[salu2_Class1]
		[salu2_Class10000]
		[salu2_Class10001]
		[salu2_Class20001]
		[salu2_Class20003]
		[salu2_Class20005]
		[salu2_Class20007]
		[salu2_Class20008]
		[salu2_Class20009]
		[salu2_Class20011]
		[salu2_Class20013]
		[salu2_Class20015]
		[salu2_Class20017]
		[salu2_Class20018]
		[salu2_Class20019]
		[salu2_Class20020]
		[salu2_Class20022]
		[salu2_Class20025]
		[salu2_Class20027]
		[salu2_Class20029]
		[salu2con2_Class3]
		[salu2con2_Class4]
		[salu2con2_Class7]
		[salu2con2_Class10]
		[salu2con2_Class15]
		[salu2con2_Class18]
		[salu2con2_Class27]
		[salu2con2_Class28]
		[salu2con2_Class31]
		[salu2con2_Class10002]
		[salu2con2_Class10005]
		[salu2con2_Class10009]
		[salu2con2_Class10015]
		[salu2con2_Class10017]
		[salu2con2_Class10019]
		[salu2con2_Class10021]))

([salu2_Class26] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2_Class1]
		[salu2con2_Class10020])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Ernest_Cline")
	(Popularidad Media))

([salu2_Class3] of  Genero

	(Es_Genero_De
		[salu2con2_Class4]
		[salu2con2_Class5]
		[salu2con2_Class12]
		[salu2con2_Class15]
		[salu2con2_Class19]
		[salu2con2_Class10000])
	(Nombre "Adventure"))

([salu2_Class30001] of  LugarDeLectura

	(Clima Ajetreado)
	(Nombre "Avion"))

([salu2_Class30002] of  LugarDeLectura

	(Clima Ajetreado)
	(Nombre "Restaurante"))

([salu2_Class30003] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Cafeteria"))

([salu2_Class30004] of  LugarDeLectura

	(Clima Silencioso)
	(Nombre "Dormitorio"))

([salu2_Class30005] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Oficina"))

([salu2_Class30006] of  LugarDeLectura

	(Clima Ruidoso)
	(Nombre "Calle"))

([salu2_Class30007] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Montana"))

([salu2_Class30008] of  LugarDeLectura

	(Clima Silencioso)
	(Nombre "Biblioteca"))

([salu2_Class30009] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Coche"))

([salu2_Class30010] of  LugarDeAdquision

	(Nombre "Biblioteca")
	(Se_Adquiere
		[salu2_Class20003]
		[salu2con2_Class1]
		[salu2con2_Class3]
		[salu2con2_Class13]
		[salu2con2_Class22]
		[salu2con2_Class20]
		[salu2con2_Class23]
		[salu2con2_Class24]
		[salu2con2_Class29]
		[salu2con2_Class10000]
		[salu2con2_Class10006]
		[salu2con2_Class10007]
		[salu2con2_Class10008]
		[salu2con2_Class10022]))

([salu2_Class4] of  Genero

	(Es_Genero_De
		[salu2_Class20005]
		[salu2_Class20007]
		[salu2_Class20008]
		[salu2_Class20009]
		[salu2_Class20011]
		[salu2con2_Class10009])
	(Nombre "AlienInvasion"))

([salu2_Class8] of  Genero

	(Es_Genero_De
		[salu2_Class20013]
		[salu2_Class20015]
		[salu2_Class20017]
		[salu2_Class20018]
		[salu2_Class20019])
	(Nombre "Cyberpunk"))

([salu2_Class9] of  Genero

	(Es_Genero_De
		[salu2_Class1]
		[salu2_Class10000]
		[salu2_Class10001]
		[salu2_Class20001]
		[salu2_Class20003]
		[salu2con2_Class1])
	(Nombre "Dystopian"))

([salu2con2_Class0] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2con2_Class1]
		[salu2con2_Class3]
		[salu2con2_Class4]
		[salu2con2_Class5])
	(Idioma Ingles)
	(Nacionalidad "Rusa")
	(Nombre "Isaac Asimov")
	(Popularidad Alta))

([salu2con2_Class1] of  Libro

	(edad_minima 8)
	(edad_recomendada 18)
	(Es_Del_Genero
		[salu2_Class13]
		[salu2_Class9])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Yo, robot")
	(NumPag 253)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class2]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class0])
	(Valoracion 9))

([salu2con2_Class10] of  Libro

	(edad_minima 18)
	(edad_recomendada 30)
	(Es_Del_Genero
		[salu2_Class21]
		[salu2_Class19])
	(es_predecesor_de [salu2con2_Class7])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Aleman Ingles)
	(Nombre "Kawaii Desune(La Novela Cap.2)")
	(NumPag 215)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor
		[salu2con2_Class9]
		[salu2con2_Class11])
	(Valoracion 8))

([salu2con2_Class10000] of  Libro

	(edad_minima 3)
	(edad_recomendada 3)
	(Es_Del_Genero
		[salu2_Class3]
		[salu2_Class20])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano Frances Aleman)
	(Nombre "Docker, Mi ballena Favorita")
	(NumPag 35)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 10))

([salu2con2_Class10002] of  Libro

	(edad_minima 3)
	(edad_recomendada 10)
	(Es_Del_Genero [salu2_Class20])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "The Call of Cthulhu")
	(NumPag 32)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2con2_Class2])
	(Tiene_Como_Autor [salu2_Class20002])
	(Valoracion 10))

([salu2con2_Class10004] of  Libro

	(edad_minima 16)
	(edad_recomendada 16)
	(Es_Del_Genero [salu2_Class13])
	(Formato Digital)
	(Idioma Ingles Aleman)
	(Nombre "Nano, the Future is here")
	(NumPag 176)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 7))

([salu2con2_Class10005] of  Libro

	(edad_minima 3)
	(edad_recomendada 5)
	(Es_Del_Genero [salu2_Class10])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Castellano)
	(Nombre "Las aventuras de Timmy")
	(NumPag 42)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 7))

([salu2con2_Class10006] of  Libro

	(edad_minima 18)
	(edad_recomendada 27)
	(Es_Del_Genero [salu2_Class15])
	(es_predecesor_de [salu2con2_Class10007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Castellano Aleman)
	(Nombre "The day that all began (Part 1)")
	(NumPag 384)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 8))

([salu2con2_Class10007] of  Libro

	(edad_minima 18)
	(edad_recomendada 27)
	(Es_Del_Genero [salu2_Class15])
	(es_predecesor_de [salu2con2_Class10008])
	(es_sucesor_se [salu2con2_Class10006])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Castellano Aleman)
	(Nombre "The day that all began (Part 2)")
	(NumPag 426)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 7))

([salu2con2_Class10008] of  Libro

	(edad_minima 18)
	(edad_recomendada 27)
	(Es_Del_Genero [salu2_Class15])
	(es_sucesor_se [salu2con2_Class10007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Castellano Aleman)
	(Nombre "The day that all began (Part 3)")
	(NumPag 501)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 10))

([salu2con2_Class10009] of  Libro

	(edad_minima 12)
	(edad_recomendada 15)
	(Es_Del_Genero
		[salu2_Class4]
		[salu2_Class18])
	(Formato Digital)
	(Idioma Ingles Frances)
	(Nombre "Starbound")
	(NumPag 364)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class21])
	(Valoracion 8))

([salu2con2_Class10010] of  Libro

	(edad_minima 18)
	(edad_recomendada 18)
	(Es_Del_Genero
		[salu2_Class18]
		[salu2_Class10]
		[salu2_Class16])
	(es_predecesor_de [salu2con2_Class10012])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles Castellano Aleman)
	(Nombre "Borderlands 1")
	(NumPag 200)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 8))

([salu2con2_Class10012] of  Libro

	(edad_minima 18)
	(edad_recomendada 18)
	(Es_Del_Genero
		[salu2_Class10]
		[salu2_Class18]
		[salu2_Class16])
	(es_predecesor_de [salu2con2_Class10013])
	(es_sucesor_se [salu2con2_Class10010])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano Aleman)
	(Nombre "Borderlands 2")
	(NumPag 246)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 8))

([salu2con2_Class10013] of  Libro

	(edad_minima 18)
	(edad_recomendada 18)
	(Es_Del_Genero
		[salu2_Class10]
		[salu2_Class18]
		[salu2_Class16])
	(es_sucesor_se [salu2con2_Class10012])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano Aleman)
	(Nombre "Borderlands 3")
	(NumPag 214)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 6))

([salu2con2_Class10014] of  Libro

	(edad_minima 12)
	(edad_recomendada 14)
	(Es_Del_Genero [salu2_Class14])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Frances)
	(Nombre "Moonlighter")
	(NumPag 222)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2_Class20010])
	(Valoracion 8))

([salu2con2_Class10015] of  Libro

	(edad_minima 3)
	(edad_recomendada 5)
	(Es_Del_Genero [salu2_Class14])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Castellano)
	(Nombre "A Strory About My Uncle")
	(NumPag 46)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20030])
	(Valoracion 5))

([salu2con2_Class10016] of  Libro

	(edad_minima 12)
	(edad_recomendada 16)
	(Es_Del_Genero [salu2_Class14])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Ingles)
	(Nombre "The Duck Game")
	(NumPag 145)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 9))

([salu2con2_Class10017] of  Libro

	(edad_minima 18)
	(edad_recomendada 25)
	(Es_Del_Genero [salu2_Class14])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Scum")
	(NumPag 547)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20021])
	(Valoracion 7))

([salu2con2_Class10018] of  Libro

	(edad_minima 18)
	(edad_recomendada 42)
	(Es_Del_Genero [salu2_Class19])
	(Formato Paper)
	(Idioma Frances Aleman)
	(Nombre "The Truth Behind the Scenes")
	(NumPag 687)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 8))

([salu2con2_Class10019] of  Libro

	(edad_minima 12)
	(edad_recomendada 16)
	(Es_Del_Genero [salu2_Class19])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "International Surfing Day")
	(NumPag 231)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class30])
	(Valoracion 7))

([salu2con2_Class10020] of  Libro

	(edad_minima 10)
	(edad_recomendada 15)
	(Es_Del_Genero [salu2_Class13])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Frances)
	(Nombre "Zingg")
	(NumPag 111)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2_Class26])
	(Valoracion 6))

([salu2con2_Class10021] of  Libro

	(edad_minima 12)
	(edad_recomendada 12)
	(Es_Del_Genero [salu2_Class13])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Frances Aleman)
	(Nombre "Seriatim")
	(NumPag 333)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20021])
	(Valoracion 7))

([salu2con2_Class10022] of  Libro

	(edad_minima 16)
	(edad_recomendada 18)
	(Es_Del_Genero
		[salu2_Class17]
		[salu2_Class13])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Trooper")
	(NumPag 542)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2_Class20012])
	(Valoracion 9))

([salu2con2_Class11] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De
		[salu2con2_Class10]
		[salu2con2_Class12]
		[salu2con2_Class10000]
		[salu2con2_Class10005]
		[salu2con2_Class10010]
		[salu2con2_Class10012]
		[salu2con2_Class10013])
	(Idioma Aleman Castellano)
	(Nacionalidad "Espana")
	(Nombre "B.P. Tomy")
	(Popularidad Alta))

([salu2con2_Class12] of  Libro

	(edad_minima 2)
	(edad_recomendada 6)
	(Es_Del_Genero
		[salu2_Class15]
		[salu2_Class3])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Aleman Castellano)
	(Nombre "Otaku Axe Chan")
	(NumPag 42)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class11])
	(Valoracion 5))

([salu2con2_Class13] of  Libro

	(edad_minima 18)
	(edad_recomendada 21)
	(Es_Del_Genero [salu2_Class20])
	(es_predecesor_de [salu2con2_Class14])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Frances Ingles)
	(Nombre "Mi Visa")
	(NumPag 101)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class8]
		[salu2con2_Class2]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 7))

([salu2con2_Class14] of  Libro

	(edad_minima 3)
	(edad_recomendada 25)
	(Es_Del_Genero [salu2_Class20])
	(es_predecesor_de [salu2con2_Class15])
	(es_sucesor_se [salu2con2_Class13])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Frances Castellano Aleman)
	(Nombre "Mi Mastercard")
	(NumPag 202)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 9))

([salu2con2_Class15] of  Libro

	(edad_minima 15)
	(edad_recomendada 22)
	(Es_Del_Genero
		[salu2_Class20]
		[salu2_Class3])
	(es_sucesor_se [salu2con2_Class14])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Aleman Ingles Castellano Frances)
	(Nombre "The Future is Paypal")
	(NumPag 262)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class8]
		[salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 7))

([salu2con2_Class17] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2con2_Class18]
		[salu2con2_Class19])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Stephen King")
	(Popularidad Alta))

([salu2con2_Class18] of  Libro

	(edad_minima 12)
	(edad_recomendada 16)
	(Es_Del_Genero [salu2_Class18])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles Castellano)
	(Nombre "Apocalipsis")
	(NumPag 150)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class17])
	(Valoracion 8))

([salu2con2_Class19] of  Libro

	(edad_minima 10)
	(edad_recomendada 40)
	(Es_Del_Genero
		[salu2_Class3]
		[salu2_Class15])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Aleman Ingles)
	(Nombre "The Adventure")
	(NumPag 412)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En
		[salu2con2_Class8]
		[salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class17])
	(Valoracion 3))

([salu2con2_Class2] of  LugarDeAdquision

	(Nombre "casadellibro.com")
	(Se_Adquiere
		[salu2con2_Class1]
		[salu2con2_Class4]
		[salu2con2_Class5]
		[salu2con2_Class13]
		[salu2con2_Class19]
		[salu2con2_Class31]
		[salu2con2_Class10002]
		[salu2con2_Class10010]
		[salu2con2_Class10012]
		[salu2con2_Class10013]
		[salu2con2_Class10016]
		[salu2con2_Class10018]))

([salu2con2_Class20] of  Libro

	(edad_minima 6)
	(edad_recomendada 55)
	(Es_Del_Genero
		[salu2_Class10]
		[salu2_Class17])
	(Es_Version_Original TRUE)
	(Formato Digital Paper)
	(Idioma Aleman Castellano Ingles)
	(Nombre "A Hymm Before Battle")
	(NumPag 111)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class8]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class21])
	(Valoracion 5))

([salu2con2_Class21] of  Autor

	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2con2_Class20]
		[salu2con2_Class22]
		[salu2con2_Class23]
		[salu2con2_Class10009])
	(Idioma Ingles Frances)
	(Nacionalidad "USA")
	(Nombre "John Ringo")
	(Popularidad Media))

([salu2con2_Class22] of  Libro

	(edad_minima 6)
	(edad_recomendada 18)
	(Es_Del_Genero [salu2_Class17])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Frances)
	(Nombre "Battle Royale")
	(NumPag 165)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class21])
	(Valoracion 10))

([salu2con2_Class23] of  Libro

	(edad_minima 3)
	(edad_recomendada 12)
	(Es_Del_Genero
		[salu2_Class11]
		[salu2_Class17])
	(Es_Version_Original FALSE)
	(Formato Digital)
	(Idioma Frances Aleman Castellano)
	(Nombre "Talent WarFrame 2")
	(NumPag 444)
	(popular_F TRUE)
	(popular_M TRUE)
	(Se_Adquiere_En
		[salu2_Class30010]
		[salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class21])
	(Valoracion 6))

([salu2con2_Class24] of  Libro

	(edad_minima 12)
	(edad_recomendada 65)
	(Es_Del_Genero [salu2_Class17])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Frances Castellano Ingles)
	(Nombre "Armor")
	(NumPag 600)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class30010])
	(Tiene_Como_Autor
		[salu2_Class20002]
		[salu2_Class20010])
	(Valoracion 8))

([salu2con2_Class27] of  Libro

	(edad_minima 6)
	(edad_recomendada 12)
	(Es_Del_Genero
		[salu2_Class16]
		[salu2_Class11])
	(es_sucesor_se [salu2con2_Class28])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles Frances)
	(Nombre "Shema?")
	(NumPag 563)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 8))

([salu2con2_Class28] of  Libro

	(edad_minima 6)
	(edad_recomendada 12)
	(Es_Del_Genero
		[salu2_Class16]
		[salu2_Class11])
	(es_predecesor_de [salu2con2_Class27])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Frances)
	(Nombre "Ni Sho Shua?")
	(NumPag 450)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 7))

([salu2con2_Class29] of  Libro

	(edad_minima 6)
	(edad_recomendada 12)
	(Es_Del_Genero
		[salu2_Class16]
		[salu2_Class17])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Frances Aleman)
	(Nombre "Old Man's War")
	(NumPag 89)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class8]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class30])
	(Valoracion 7))

([salu2con2_Class3] of  Libro

	(edad_minima 3)
	(edad_recomendada 15)
	(Es_Del_Genero
		[salu2_Class11]
		[salu2_Class13])
	(Es_Version_Original FALSE)
	(Formato Digital Paper)
	(Idioma Ingles Aleman)
	(Nombre "Fundacion")
	(NumPag 230)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2con2_Class0])
	(Valoracion 8))

([salu2con2_Class30] of  Autor

	(Dificultad_Lenguaje Baja)
	(Es_Autor_De
		[salu2con2_Class29]
		[salu2con2_Class31]
		[salu2con2_Class10019])
	(Idioma Ingles Frances)
	(Nacionalidad "India")
	(Nombre "J. K. Paget")
	(Popularidad Alta))

([salu2con2_Class31] of  Libro

	(edad_minima 3)
	(edad_recomendada 15)
	(Es_Del_Genero
		[salu2_Class18]
		[salu2_Class10])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Ingles Frances)
	(Nombre "Call Center Guide")
	(NumPag 156)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class30])
	(Valoracion 8))

([salu2con2_Class4] of  Libro

	(edad_minima 3)
	(edad_recomendada 21)
	(Es_Del_Genero
		[salu2_Class3]
		[salu2_Class14])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Ingles Frances Castellano)
	(Nombre "La ultima pregunta")
	(NumPag 312)
	(popular_F FALSE)
	(popular_M FALSE)
	(Se_Adquiere_En
		[salu2con2_Class2]
		[salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class0])
	(Valoracion 6))

([salu2con2_Class5] of  Libro

	(edad_minima 3)
	(edad_recomendada 25)
	(Es_Del_Genero
		[salu2_Class3]
		[salu2_Class21])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Ingles Frances Castellano Aleman)
	(Nombre "En la arena estelar")
	(NumPag 333)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class2])
	(Tiene_Como_Autor [salu2con2_Class0])
	(Valoracion 7))

([salu2con2_Class6] of  Libro

	(edad_minima 15)
	(edad_recomendada 35)
	(Es_Del_Genero
		[salu2_Class21]
		[salu2_Class19])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Aleman Frances Castellano)
	(Nombre "Leviathan")
	(NumPag 150)
	(popular_F FALSE)
	(popular_M TRUE)
	(Se_Adquiere_En [salu2con2_Class8])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 3))

([salu2con2_Class7] of  Libro

	(edad_minima 18)
	(edad_recomendada 30)
	(Es_Del_Genero
		[salu2_Class21]
		[salu2_Class19])
	(es_sucesor_se [salu2con2_Class10])
	(Es_Version_Original TRUE)
	(Formato Digital)
	(Idioma Castellano Aleman Frances)
	(Nombre "Awa de UwU (La Novela Cap.1)")
	(NumPag 666)
	(popular_F TRUE)
	(popular_M FALSE)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2con2_Class9])
	(Valoracion 3))

([salu2con2_Class8] of  LugarDeAdquision

	(Nombre "elCorteIngles")
	(Se_Adquiere
		[salu2con2_Class6]
		[salu2con2_Class12]
		[salu2con2_Class13]
		[salu2con2_Class14]
		[salu2con2_Class15]
		[salu2con2_Class19]
		[salu2con2_Class20]
		[salu2con2_Class23]
		[salu2con2_Class29]
		[salu2con2_Class10004]
		[salu2con2_Class10009]
		[salu2con2_Class10014]
		[salu2con2_Class10020]))

([salu2con2_Class9] of  Autor

	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2con2_Class6]
		[salu2con2_Class7]
		[salu2con2_Class10]
		[salu2con2_Class13]
		[salu2con2_Class14]
		[salu2con2_Class15]
		[salu2con2_Class10004]
		[salu2con2_Class10006]
		[salu2con2_Class10007]
		[salu2con2_Class10008]
		[salu2con2_Class10016])
	(Idioma Castellano Ingles)
	(Nacionalidad "Espana")
	(Nombre "P.B. Fowoster")
	(Popularidad Alta))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; CLASES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Una recomendacion es un libro asociado a unas justificaciones.
(defclass Recomendacion
	(is-a USER)
	(role concrete)
    (single-slot libro
		(type INSTANCE)
		(create-accessor read-write))
    (single-slot puntuacion
		(type INTEGER)
		(create-accessor read-write))
)

; Clase donde cuardar las 3 recomendaciones que hagamos
(defclass Veredicto
	(is-a USER)
	(role concrete)
	(multislot recomendaciones
		(type INSTANCE)
		(create-accessor read-write))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULOS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; ------------------------------ Modulo general del sistema. --------------------
(defmodule MAIN (export ?ALL))

; ---------------- Modulos dedicados a la recopilacion de datos. ---------------
(defmodule recopilacion_datos_personales
	(import MAIN ?ALL)
	(export ?ALL)
)

; -------------- Modulos dedicados a la abstraccion de los datos. --------------
(defmodule abstraccion_de_datos
	(import MAIN ?ALL)
	;(import recopilacion-datos-personales deftemplate ?ALL)
	(export ?ALL)
)

; ---------------- Modulos dedicados a la asociacion heuristica. ---------------
(defmodule asociacion_heuristica
	(import MAIN ?ALL)
	(export ?ALL)
)

; -------------- Modulos dedicados al refinamiento de la solucion. -------------
(defmodule refinamiento_de_soluciones
	(import MAIN ?ALL)
	(export ?ALL)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MESSAGE HANDLERS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmessage-handler Autor print ()
    (printout t "Autor: %s" (dynamic-get Nombre))
)

(defmessage-handler Genero print ()
    (printout t "Genero: %s" (dynamic-get Nombre))
)

(defmessage-handler Libro print ()
	(format t "Titulo: %s" (dynamic-get Nombre))
    (printout t crlf)

    (printout t "Genero:" crlf)
    (bind $?gen ?self:Es_Del_Genero)
    (loop-for-count (?j 1 (length$ $?gen)) do    
        (bind ?genName (send (nth$ ?j $?gen) get-Nombre))
        (format t "- %s" ?genName)
        (printout t crlf)  
    )
    (printout t crlf) 

    (printout t "Autor:" crlf)
    (bind $?aut ?self:Tiene_Como_Autor)
    (loop-for-count (?j 1 (length$ $?aut)) do    
        (bind ?autorName (send (nth$ ?j $?aut) get-Nombre))
		(bind ?autorDificultad (send (nth$ ?j $?aut) get-Dificultad_Lenguaje))
        (format t "- %s" ?autorName)
		(format t " (Dificultad: %s)" ?autorDificultad)
        (printout t crlf)  
    )
    (printout t crlf) 

    (format t "Numero de paginas: %d" ?self:NumPag)
    (printout t crlf)
    (printout t crlf)

    (format t "Valoracion de 1 a 10: %d" ?self:Valoracion)
	(printout t crlf)
    (printout t crlf) 
	
	(format t "Popular entre hombres: %s" ?self:popular_M)
	(printout t crlf)
    (printout t crlf) 
	
	(format t "Popular entre mujeres: %s" ?self:popular_F)
	(printout t crlf)
    (printout t crlf) 

    (format t "Version original: %s" ?self:Es_Version_Original)
    (printout t crlf)
    (printout t crlf) 

    (printout t "Idiomas disponibles:" crlf)
    (bind $?lang ?self:Idioma)
    (loop-for-count (?j 1 (length$ $?lang)) do    
        (bind ?langName (nth$ ?j $?lang))
        (format t "- %s" ?langName)
        (printout t crlf)  
    )
    (printout t crlf) 
	
	(printout t "Formatos disponibles:" crlf)
    (bind $?form ?self:Formato)
    (loop-for-count (?j 1 (length$ $?form)) do    
        (format t "- %s" (nth$ ?j $?form))
        (printout t crlf)  
    )
    (printout t crlf) 

    (printout t "Puede adquirirlo en:" crlf)
    (bind $?tienda ?self:Se_Adquiere_En)
    (loop-for-count (?j 1 (length$ $?tienda)) do    
        (bind ?tiendaName (send (nth$ ?j $?tienda) get-Nombre))
        (format t "- %s" ?tiendaName)
        (printout t crlf)  
    )
)

(defmessage-handler Recomendacion print ()
	(send ?self:libro print)
	(printout t "---------------------------------------------------" crlf)
	(printout t "Puntuacion: " (dynamic-get puntuacion) crlf)
)

(defmessage-handler Veredicto print ()
	(printout t "***************************************************" crlf)
	(bind $?recs ?self:recomendaciones)
	(progn$ (?curr-rec $?recs)
		(printout t crlf "===================================================" crlf)
		(send ?curr-rec print)
		(printout t "===================================================" crlf crlf)
	)
	(printout t "***************************************************" crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TEMPLATES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftemplate MAIN::datos_usuario
	(slot sexo (type STRING))				; sexo del usuario
	(slot edad (type INTEGER))			        ; edad del usuario
	(slot idioma (type STRING))		        ; idiomas que lee el usuario
	(slot lugar_de_lectura (type INSTANCE))                 ; lugares de lectura del usuario
    (multislot lugares_de_adquisicion(type INSTANCE))         ; lugares de adquisicion de libros del usuario	
    (multislot formatos (type SYMBOL))                        ; formatos en los que lee el usuario
    (slot sagas (type INTEGER))				    ; Le gustan o no las sagas
	(slot longitud (type INTEGER))		        ; Como de largos le gustan los libros
	(slot VO (type INTEGER))      		        ; Prioriza versiones originales
	(slot confianza_valoraciones (type INTEGER))	; Confia en las valoraciones de la gente
	(slot cantidad_libros_leidos (type INTEGER)) 	; Cantidad de libros leidos por el usuario
	(multislot generos_fav (type INSTANCE))			; Generos favoritos del usuario
	(multislot autores_fav (type INSTANCE))			; Autores que le gustan al usuario
)

(deftemplate MAIN::problema_abstracto
    (multislot formatos (type SYMBOL))
    (slot longitud_libro (type STRING))
    (slot puede_ser_de_saga (type STRING))
    (slot mejor_si_es_VO (type STRING))
    (slot valoraciones_cuentan (type STRING))
    (slot nivel_lector (type STRING))
    (multislot generos_validos (type INSTANCE))
    (multislot autores_validos (type INSTANCE))
    (slot tipo_lugar_de_lectura (type STRING))
    (multislot lugares_de_adquisicion(type INSTANCE)) 
    (slot etapa_edad (type STRING))
    (slot sexo_lector (type STRING))
    (slot idioma_lector (type STRING))
    
    
)

(deftemplate MAIN::solucion_abstracta
    (slot solucion_no_refinada(type INSTANCE))
    (slot targeted_rec (type INSTANCE))
    (multislot libros_recomendados(type INSTANCE))
    (multislot libros_no_tratados (type INSTANCE))
    (multislot recomendaciones_ordenadas(type INSTANCE))
    
)

(deftemplate MAIN::solucion_refinada
    (slot solucion(type INSTANCE))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FUNCIONES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction ask_question (?question $?allowed_values)
   (printout t ?question)
   (printout t crlf)
   (bind ?answer (read))
   (while (not (member ?answer ?allowed_values)) do
      (printout t ?question)
      (bind ?answer (read))
   )
   (printout t crlf)
   ?answer
)
(deffunction MAIN::pregunta_numerica (?pregunta ?rangini ?rangfi)
	(format t "%s (De %d hasta %d) " ?pregunta ?rangini ?rangfi)
	(printout t crlf)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s (De %d hasta %d) " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	(printout t crlf)
	?respuesta
)

(deffunction MAIN::pregunta_opciones (?question $?allowed_values)
   (printout t ?question crlf)
   (progn$ (?curr-value $?allowed_values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (readline))
   (while (not (member$ ?answer ?allowed_values)) do
      (printout t ?question crlf)
	  (progn$ (?curr-value $?allowed_values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (readline))
   )
   (printout t crlf)
   ?answer
)

(deffunction MAIN::pregunta_multirespuesta (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los numeros referentes a las preferencias separados por un espacio: ")
    (printout t crlf)
	(bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$))
    (progn$ (?var ?numeros)
        (if (and (integerp ?var) (and (>= ?var 0) (<= ?var (length$ ?valores-posibles))))
            then
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        )
    )
    (if (or(member$ 0 ?lista)(= (length$ ?lista) 0)) then (bind ?lista (create$ )))
	(printout t crlf)
    ?lista
)

(deffunction MAIN::pregunta_unirespuesta (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles)
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?resp (read))
    (bind $?lista (create$))
        (if (and (integerp ?resp) (and (>= ?resp 0) (<= ?resp (length$ ?valores-posibles))))
            then (bind ?lista (insert$ ?lista 1 ?resp))
        )
    (if (or(member$ 0 ?lista)(= (length$ ?lista) 0)) then (bind ?lista (create$ )))
	(printout t crlf)
    ?lista
)

(deffunction MAIN::max_libro ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?punt (send ?curr-rec get-puntuacion))
		(if (> ?punt ?maximo) then 
			(bind ?maximo ?punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FACTS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts recopilacion_datos_personales::controladores_preguntas
	(generosF not_deff)
	(autoresF not_deff)
    (lugarLect not_deff)
    (lugaresAdq not_deff)
    (formatos not_deff)
    (sexo not_deff)
    (edad not_deff)
    (idiomas not_deff)
    (qlibros not_deff)
    (longL not_deff)
    (cval not_deff)
    (cvo not_deff)
    (csa not_deff)
)

(deffacts abstraccion_de_datos::controladores_abstraccion
	(generos_v not_deff)
	(autores_v not_deff)
    (tipo_lugar_lect not_deff)
    (edad not_deff)
    (lugaresA not_deff)
    (formatos not_deff)
)

(deffacts asociacion_heuristica::controladores_asociacion_heuristica
    (libros_obtenidos not_deff)    ; Controla inicializacion de la solucion abstracta
    (target_mode off)              ; Modo target apagado
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; RULES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule MAIN::system-banner ""
    (declare (salience 1000))
    =>
    (printout t crlf crlf)
    (printout t "----El Recomendador de Libros----")
    (printout t crlf crlf)
)

(defrule MAIN::crea_datos_usuario_inicial
	(declare (salience 100))
    (not (datos_usuario))
	=>
	(assert (datos_usuario))
    (focus recopilacion_datos_personales)
)

(defrule MAIN::crea_problema_abstracto
	(declare (salience 80))
    (datos_usuario)
    (not (problema_abstracto))
	=>
	(assert (problema_abstracto))
    (focus abstraccion_de_datos)
)

(defrule MAIN:crea_solucion_abstracta
	(declare (salience 60))
    (problema_abstracto)
    (not (solucion_abstracta))
	=>
	(assert (solucion_abstracta))
    (focus asociacion_heuristica)
)

(defrule MAIN:iniciar_refinamiento
    (declare (salience 40))
    (solucion_abstracta)
    (not (solucion_refinada))
    =>
    (assert (solucion_refinada))
    (assert (goprint))
    (assert (inicializar))
    (focus refinamiento_de_soluciones)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;; RECOPILACION DE DATOS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule recopilacion_datos_personales::sexo_usuario
    ?fact <-(sexo not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?s (ask_question "- Cual es tu genero (Hombre/Mujer)? " Hombre Mujer))
	(retract ?fact)
    (modify ?d (sexo ?s))
)

(defrule recopilacion_datos_personales::edad_usuario 
    ?fact <-(edad not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?e (pregunta_numerica "- Cual es tu edad? " 3 120))
	(retract ?fact)
    (modify ?d (edad ?e))
)

(defrule recopilacion_datos_personales::idiomas_usuario
    ?fact <-(idiomas not_deff)
    ?d <- (datos_usuario)
	=>
	(bind ?s (ask_question "- En que idioma prefieres leer(Ingles | Castellano | Frances | Aleman)? " Ingles Castellano Frances Aleman))
    (retract ?fact) 
	(modify ?d (idioma ?s))
)

(defrule recopilacion_datos_personales::assignar_cantidad_libros
    ?fact <-(qlibros not_deff)    
    ?d <- (datos_usuario)
    =>
    (bind ?l (pregunta_numerica "- Cuantos libros has leido?" 0 100))
    (retract ?fact)    
    (modify ?d (cantidad_libros_leidos ?l))
)

(defrule recopilacion_datos_personales::assignar_lugar_lectura
    ?hecho <- (lugarLect not_deff)
	?p-user <- (datos_usuario)
	=>
	(bind $?lugares (find-all-instances ((?inst LugarDeLectura)) TRUE))
	(bind $?nombre_lugares (create$ ))
	(loop-for-count (?i 1 (length$ $?lugares)) do
		(bind ?obj (nth$ ?i ?lugares))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?nombre_lugares(insert$ $?nombre_lugares (+ (length$ $?nombre_lugares) 1) ?nombre))
	)
	(bind ?escogido (pregunta_unirespuesta "- Donde le gusta leer (elija 1 lugar)? " $?nombre_lugares))
    
    (bind ?index (nth$ 1 ?escogido))
	(bind ?l (nth$ ?index $?lugares))
    (retract ?hecho)
	(modify ?p-user (lugar_de_lectura $?l))
)

(defrule recopilacion_datos_personales::asignar_lugares_adquisicion
    ?fact <- (lugaresAdq not_deff)
    ?p-user <- (datos_usuario)
	=>
    (bind $?lugares (find-all-instances ((?inst LugarDeAdquision)) TRUE))
	(bind $?nombre_lugares (create$ ))    
    (loop-for-count (?i 1 (length$ $?lugares)) do
		(bind ?obj (nth$ ?i ?lugares))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?nombre_lugares(insert$ $?nombre_lugares (+ (length$ $?nombre_lugares) 1) ?nombre))
	)
	(bind ?escogido (pregunta_multirespuesta "- Donde le gusta adquirir los libros? " $?nombre_lugares))
    (bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		(bind ?lug (nth$ ?index ?lugares))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?lug))
	)
	(retract ?fact)
	(modify ?p-user (lugares_de_adquisicion $?respuesta))
)

(defrule recopilacion_datos_personales::formatos_usuario
    ?fact <- (formatos not_deff)
    ?d <- (datos_usuario)
	=>
	(bind ?escogido (pregunta_multirespuesta "- En que formatos lees? " Paper Digital))
    (bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
        (if (= ?index 1) then (bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) Paper)))
		(if (= ?index 2) then (bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) Digital)))
	)
	(modify ?d (formatos ?respuesta))
    (retract ?fact)
)

(defrule recopilacion_datos_personales::longitud_libros
    ?fact <-(longL not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?l (pregunta_numerica "- Longitud de los libros (paginas) (0 si te es indiferente)? " 0 1000))
    (retract ?fact)	
    (modify ?d (longitud ?l))
)

(defrule recopilacion_datos_personales::confianza_valoraciones
    ?fact <-(cval not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?e (pregunta_numerica "- Cuanto confias en las valoraciones (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (confianza_valoraciones ?e))
    (retract ?fact)
)

(defrule recopilacion_datos_personales::VO
    ?fact <-(cvo not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?e (pregunta_numerica "- Cuanto te importan los libros en VO (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (VO ?e))
    (retract ?fact)
)

(defrule recopilacion_datos_personales::sagas
    ?fact <-(csa not_deff)    
    ?d <- (datos_usuario)
	=>
	(bind ?e (pregunta_numerica "- Cuanto te importa que los libros pertenezcan a sagas (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (sagas ?e))
    (retract ?fact)
)

(defrule recopilacion_datos_personales::assignar_generos
	?hecho <- (generosF not_deff)
	?p-user <- (datos_usuario)
	=>
	(bind $?generos (find-all-instances ((?inst Genero)) TRUE))
	(bind $?tipo_genero (create$ ))
	(loop-for-count (?i 1 (length$ $?generos)) do
		(bind ?obj (nth$ ?i ?generos))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?tipo_genero(insert$ $?tipo_genero (+ (length$ $?tipo_genero) 1) ?nombre))
	)
	(bind ?escogido (pregunta_multirespuesta "- Escoja sus generos favoritos (o 0 si no tiene): " $?tipo_genero))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		(bind ?gen (nth$ ?index ?generos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?gen))
	)

	(retract ?hecho)
	(modify ?p-user (generos_fav $?respuesta))
)

(defrule recopilacion_datos_personales::assignar_autores
	?hecho <- (autoresF not_deff)
	?p-user <- (datos_usuario)
	=>
	(bind $?autores (find-all-instances ((?inst Autor)) TRUE))
	(bind $?nombre_autores (create$ ))
	(loop-for-count (?i 1 (length$ $?autores)) do
		(bind ?obj (nth$ ?i ?autores))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?nombre_autores(insert$ $?nombre_autores (+ (length$ $?nombre_autores) 1) ?nombre))
	)
	(bind ?escogido (pregunta_multirespuesta "- Escoja sus autores favoritos (o 0 si no tiene): " $?nombre_autores))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		(bind ?aut (nth$ ?index ?autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?aut))
	)
	(retract ?hecho)
	(modify ?p-user (autores_fav $?respuesta))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;; ABSTRACCION DE DATOS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule abstraccion_de_datos::generos_viables
    ?fact <- (generos_v not_deff)
    ?p-pab <- (problema_abstracto)
    ?p-du <- (datos_usuario(generos_fav $?fav))
    =>
    (assert (generos_v TRUE))
    (bind $?res (create$))
    (loop-for-count (?i 1 (length$ $?fav)) do
        (bind ?obj (nth ?i ?fav))
        (bind $?res(insert$ $?res (+ (length$ $?res) 1) ?obj))
    )
    (modify ?p-pab (generos_validos ?res))    
    (retract ?fact)
)

(defrule abstraccion_de_datos::autores_viables
    ?fact <- (autores_v not_deff)
    ?p-pab <- (problema_abstracto)
    ?p-du <- (datos_usuario(autores_fav $?fav))
    =>
    (bind $?res (create$))
    (loop-for-count (?i 1 (length$ $?fav)) do
        (bind ?obj (nth ?i ?fav))
        (bind $?res(insert$ $?res (+ (length$ $?res) 1) ?obj))
    )
    (modify ?p-pab (autores_validos ?res))    
    (retract ?fact)
)
	
(defrule abstraccion_de_datos:longitud_nulo
    ?pa <- (problema_abstracto (longitud_libro ?l))
    ?d <- (datos_usuario (longitud ?x))
    (test (eq ?x 0)) 
    =>
    (modify ?pa (longitud_libro "nulo"))
    (modify ?d (longitud -1))
)
(defrule abstraccion_de_datos:longitud_corto
    ?pa <- (problema_abstracto (longitud_libro ?l))
    ?d <- (datos_usuario (longitud ?x))
    (test (< ?x 100))
    (test (> ?x 0))
    =>
    (modify ?pa (longitud_libro "corto"))
    (modify ?d (longitud -1))
)
(defrule abstraccion_de_datos:longitud_medio
    ?pa <- (problema_abstracto (longitud_libro ?l))
    ?d <- (datos_usuario (longitud ?x))
    (test (>= ?x 100))
    (test (< ?x 300))
    =>
    (modify ?pa (longitud_libro "medio"))
    (modify ?d (longitud -1))
)
(defrule abstraccion_de_datos:longitud_largo
    ?d <- (datos_usuario (longitud ?x))
    ?pa <- (problema_abstracto (longitud_libro ?l))
    (test (>= ?x 300))
    =>
    (modify ?pa (longitud_libro "largo"))
    (modify ?d (longitud -1))
)

(defrule abstraccion_de_datos:importancia_valoracion_nulo
    ?pa <- (problema_abstracto (valoraciones_cuentan ?l))
    ?d <- (datos_usuario (confianza_valoraciones ?x))  
    (test (eq ?x 0)) 
    =>
    (modify ?pa (valoraciones_cuentan "nulo"))
    (modify ?d (confianza_valoraciones -1))
)
(defrule abstraccion_de_datos:importancia_valoracion_bajo
    ?pa <- (problema_abstracto (valoraciones_cuentan ?l))
    ?d <- (datos_usuario (confianza_valoraciones ?x))
    (test (> ?x 0))    
    (test (< ?x 4)) 
    =>
    (modify ?pa (valoraciones_cuentan "bajo"))
    (modify ?d (confianza_valoraciones -1))
)
(defrule abstraccion_de_datos:importancia_valoracion_medio
    ?pa <- (problema_abstracto (valoraciones_cuentan ?l))
    ?d <- (datos_usuario (confianza_valoraciones ?x))
    (test (>= ?x 4))
    (test (< ?x 7))
    =>
    (modify ?pa (valoraciones_cuentan "medio"))
    (modify ?d (confianza_valoraciones -1))
)
(defrule abstraccion_de_datos:importancia_valoracion_alto
    ?pa <- (problema_abstracto (valoraciones_cuentan ?l))
    ?d <- (datos_usuario (confianza_valoraciones ?x))
    (test (>= ?x 7))
    =>
    (modify ?pa (valoraciones_cuentan "alto"))
    (modify ?d (confianza_valoraciones -1))
)

(defrule abstraccion_de_datos:importancia_VO_nulo
    ?pa <- (problema_abstracto (mejor_si_es_VO ?l))
    ?d <- (datos_usuario (VO ?x))  
    (test (eq ?x 0)) 
    =>
    (modify ?pa (mejor_si_es_VO "nulo"))
    (modify ?d (VO -1))
)
(defrule abstraccion_de_datos:importancia_VO_bajo
    ?pa <- (problema_abstracto (mejor_si_es_VO ?l))
    ?d <- (datos_usuario (VO ?x))
    (test (> ?x 0))    
    (test (< ?x 4)) 
    =>
    (modify ?pa (mejor_si_es_VO "bajo"))
    (modify ?d (VO -1))
)
(defrule abstraccion_de_datos:importancia_VO_medio
    ?pa <- (problema_abstracto (mejor_si_es_VO ?l))
    ?d <- (datos_usuario (VO ?x))
    (test (>= ?x 4))
    (test (< ?x 7))
    =>
    (modify ?pa (mejor_si_es_VO "medio"))
    (modify ?d (VO -1))
)
(defrule abstraccion_de_datos:importancia_VO_alto
    ?pa <- (problema_abstracto (mejor_si_es_VO ?l))
    ?d <- (datos_usuario (VO ?x))
    (test (>= ?x 7))
    =>
    (modify ?pa (mejor_si_es_VO "alto"))
    (modify ?d (VO -1))
)

(defrule abstraccion_de_datos:importancia_sagas_nulo
    ?pa <- (problema_abstracto (puede_ser_de_saga ?l))
    ?d <- (datos_usuario (sagas ?x))  
    (test (eq ?x 0)) 
    =>
    (modify ?pa (puede_ser_de_saga "nulo"))
    (modify ?d (sagas -1))
)
(defrule abstraccion_de_datos:importancia_sagas_bajo
    ?pa <- (problema_abstracto (puede_ser_de_saga ?l))
    ?d <- (datos_usuario (sagas ?x))
    (test (> ?x 0))    
    (test (< ?x 4)) 
    =>
    (modify ?pa (puede_ser_de_saga "bajo"))
    (modify ?d (sagas -1))
)
(defrule abstraccion_de_datos:importancia_sagas_medio
    ?pa <- (problema_abstracto (puede_ser_de_saga ?l))
    ?d <- (datos_usuario (sagas ?x))
    (test (>= ?x 4))
    (test (< ?x 7))
    =>
    (modify ?pa (puede_ser_de_saga "medio"))
    (modify ?d (sagas -1))
)
(defrule abstraccion_de_datos:importancia_sagas_alto
    ?pa <- (problema_abstracto (puede_ser_de_saga ?l))
    ?d <- (datos_usuario (sagas ?x))
    (test (>= ?x 7))
    =>
    (modify ?pa (puede_ser_de_saga "alto"))
    (modify ?d (sagas -1))
)

(defrule abstraccion_de_datos:nivel_bajo
    ?pa <- (problema_abstracto (nivel_lector ?l))
    ?d <- (datos_usuario (cantidad_libros_leidos ?x))
    (test (>= ?x 0))    
    (test (< ?x 4)) 
    =>
    (modify ?pa (nivel_lector "bajo"))
    (modify ?d (cantidad_libros_leidos -1))
)
(defrule abstraccion_de_datos:nivel_medio
    ?pa <- (problema_abstracto (nivel_lector ?l))
    ?d <- (datos_usuario (cantidad_libros_leidos ?x))
    (test (>= ?x 4))
    (test (< ?x 7))
    =>
    (modify ?pa (nivel_lector "medio"))
    (modify ?d (cantidad_libros_leidos -1))
)
(defrule abstraccion_de_datos:nivel_alto
    ?pa <- (problema_abstracto (nivel_lector ?l))
    ?d <- (datos_usuario (cantidad_libros_leidos ?x))
    (test (>= ?x 7))
    =>
    (modify ?pa (nivel_lector "alto"))
    (modify ?d (cantidad_libros_leidos -1))
)


(defrule abstraccion_de_datos::lugar_lectura
    ?fact <- (tipo_lugar_lect not_deff)
    ?pa <- (problema_abstracto)
    ?d <- (datos_usuario (lugar_de_lectura ?x))
    
    =>
    (bind ?c (send ?x get-Clima))
    (if (eq ?c Tranquilo) 
	then 
		(modify ?pa (tipo_lugar_de_lectura "Tranquilo"))
	else 
		(if (eq ?c Ruidoso)
		then
			(modify ?pa (tipo_lugar_de_lectura "Ruidoso"))
		else
			(if (eq ?c Ajetreado)
			then
				(modify ?pa (tipo_lugar_de_lectura "Ajetreado"))
			else
				(if (eq ?c Silencioso)
				then
					(modify ?pa (tipo_lugar_de_lectura "Silencioso"))
				)
			)
		)
	)
    (retract ?fact)
    
    
)
(defrule abstraccion_de_datos::lugares_adquisicion
    ?fact <- (lugaresA not_deff)
    ?p-pab <- (problema_abstracto)
    ?p-du <- (datos_usuario(lugares_de_adquisicion $?lugares))
    =>
    (bind $?res (create$))
    (loop-for-count (?i 1 (length$ $?lugares)) do
        (bind ?obj (nth ?i ?lugares))
        (bind $?res(insert$ $?res (+ (length$ $?res) 1) ?obj))
    )
    (modify ?p-pab (lugares_de_adquisicion ?res))    
    (retract ?fact)
)

(defrule abstraccion_de_datos::formatos
    ?fact <- (formatos not_deff)
    ?p-pab <- (problema_abstracto)
    ?p-du <- (datos_usuario(formatos $?formatos))
    =>
    (bind $?res (create$))
    (loop-for-count (?i 1 (length$ $?formatos)) do
        (bind ?obj (nth ?i ?formatos))
        (bind $?res(insert$ $?res (+ (length$ $?res) 1) ?obj))
    )
    (modify ?p-pab (formatos ?res))    
    (retract ?fact)
)

(defrule abstraccion_de_datos:edad_lector_nino
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (edad ?x))
    ?fact <- (edad not_deff)
    (test (>= ?x 3))
    (test (< ?x 12))
    =>
    (modify ?pa (etapa_edad "Nino"))
    (retract ?fact)
)
(defrule abstraccion_de_datos:edad_lector_adolescente
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (edad ?x))
    ?fact <- (edad not_deff)
    (test (>= ?x 12))
    (test (< ?x 20))
    =>
    (modify ?pa (etapa_edad "Adolescente"))
    (retract ?fact)
)
(defrule abstraccion_de_datos:edad_lector_joven
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (edad ?x))
    ?fact <- (edad not_deff)
    (test (>= ?x 20))
    (test (< ?x 35))
    =>
    (modify ?pa (etapa_edad "Joven"))
    (retract ?fact)
)
(defrule abstraccion_de_datos:edad_lector_maduro
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (edad ?x))
    ?fact <- (edad not_deff)
    (test (>= ?x 35))
    (test (< ?x 60))
    =>
    (modify ?pa (etapa_edad "Maduro"))
    (retract ?fact)
)
(defrule abstraccion_de_datos:edad_lector_tercera_edad
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (edad ?x))
    ?fact <- (edad not_deff)
    (test (>= ?x 60))
    (test (<= ?x 120))
    =>
    (modify ?pa (etapa_edad "Tercera edad"))
    (retract ?fact)
)

(defrule abstraccion_de_datos:sexo_lector
    ?pa <- (problema_abstracto (etapa_edad ?l))
    ?d <- (datos_usuario (sexo ?x))
    (test (neq ?x "null"))
    =>
    (if (eq ?x Hombre) then (modify ?pa (sexo_lector "Hombre"))
    else (modify ?pa (sexo_lector "Mujer")))
    (modify ?d (sexo "null"))
)

(defrule abstraccion_de_datos:idioma_lector
    ?pa <- (problema_abstracto)
    ?d <- (datos_usuario (idioma ?x))
    (test (neq ?x "null"))
    =>
    (modify ?pa (idioma_lector ?x))    
    (modify ?d (idioma "null"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;; ASOCIACION HEURISTICA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule asociacion_heuristica::inicializar_lista_libros
    ?ctrl <- (libros_obtenidos not_deff)
    ?sol <- (solucion_abstracta)
    ?target <- (target_mode off)
    ?duser <- (problema_abstracto (idioma_lector ?ulang) (lugares_de_adquisicion $?lugares) (formatos $?usrformat))
    ?du <-(datos_usuario(edad ?edadUsr))
	=>
    (bind $?listaRec (create$ ))
    (bind $?allLibros (find-all-instances ((?inst Libro)) TRUE))
    (loop-for-count (?i 1 (length$ $?allLibros)) do
        
		(bind ?obj (nth$ ?i ?allLibros))
		(bind $?lib_formats (send ?obj get-Formato))
		(bind $?lib_lugares (send ?obj get-Se_Adquiere_En))
        (bind $?lang (send ?obj get-Idioma))
        (bind ?edadMin (send ?obj get-edad_minima))
		
		(bind ?Valido 0)
		(progn$ (?f $?lib_formats)
			(if (= ?Valido 1) then (break))
			(if (member$ ?f $?usrformat) then (bind ?Valido 1))
		)
		
		(if (= ?Valido 1) then
			(bind ?Valido 0)
			(progn$ (?l $?lib_lugares)
				(if (= ?Valido 1) then (break))
				(if (member$ ?l $?lugares) then (bind ?Valido 1))
			)
		)
		
        (if (and (= ?Valido 1) (member$ ?ulang $?lang) (>= ?edadUsr ?edadMin)) then
            (bind ?elem (make-instance (gensym) of Recomendacion (libro ?obj)(puntuacion 0)))
    		(bind $?listaRec(insert$ $?listaRec (+ (length$ $?listaRec) 1) ?elem))
        )
    )
    (retract ?ctrl)
    (assert (libros_obtenidos deff))
    (retract ?target)
    (assert (target_mode on))
    (modify ?sol (libros_no_tratados $?listaRec))
)

(defrule asociacion_heuristica::target
    ?target <- (target_mode on)
    ?sol <- (solucion_abstracta (libros_no_tratados $?lnt))
    (test (> (length $?lnt) 0)) ; si aun quedan libros por tratar (la lista no esta vacia)
    =>
    ; APAGAR EL MODO TARGET
    (retract ?target)
    (assert (target_mode off))

    ; ENCENDER TODOS LOS TRATAMIENTOS DEL LIBRO
    (assert (targeted_genero on))
    (assert (targeted_autor on))
    (assert (targeted_valoraciones on))
    (assert (targeted_VO on))
    (assert (targeted_sagas on))
    (assert (targeted_nivel on))
    (assert (targeted_longitud on))
    (assert (targeted_franED on))
    (assert (targeted_sexoXlib on))
    (assert (targeted_tipolugarlectura on))

    ; ESTABLECER LIBRO TARGETEADO
    (bind ?lt (nth$ 1 $?lnt))

    ; ELIMINAR TARGETEADO DE LA LISTA DE NO TRATADOS
    (bind $?F (delete$ $?lnt 1 1))
    (modify ?sol (targeted_rec ?lt)(libros_no_tratados $?F))
)

(defrule asociacion_heuristica::end_tratamiento_targeteado
    ?target <- (target_mode off)
    ?sol <- (solucion_abstracta (targeted_rec ?lt) (libros_recomendados $?rec))
    (libros_obtenidos deff)   
    ?cgen<-(targeted_genero off)
    ?caut <-(targeted_autor off)
    ?cval <-(targeted_valoraciones off)
    ?cVO <-(targeted_VO off)
    ?csag <-(targeted_sagas off)
    ?cniv <-(targeted_nivel off)
    ?clon <-(targeted_longitud off)
    ?cfed <- (targeted_franED off)
    ?csexl <-(targeted_sexoXlib off)
    ?clug <-(targeted_tipolugarlectura off)
    =>
    
    ; GUARDAR LIBRO TARGETEADO
    
    (bind $?rec (insert$ $?rec (+ (length$ $?rec) 1) ?lt))
    (modify ?sol (libros_recomendados $?rec))
    
    
    ; BORRAR HECHOS CONTROL
    
    (retract ?cgen)
    (retract ?caut)
    (retract ?cVO)
    (retract ?cval)
    (retract ?csag)
    (retract ?clon)
    (retract ?cniv)
    (retract ?cfed)
    (retract ?csexl)
    (retract ?clug)  
	
    ; ENCENDER EL MODO TARGET
    
    (retract ?target)
    (assert (target_mode on))
)

(defrule asociacion_heuristica::coincidencia_genero
    ?ctrl <- (targeted_genero on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (generos_validos $?all_gen))
    =>
    (retract ?ctrl)
    (assert (targeted_genero off))
    (bind ?libro (send ?obj get-libro))
    (bind $?gen (send ?libro get-Es_Del_Genero))
    (loop-for-count (?j 1 (length$ $?gen)) do    
        (bind ?genName (send (nth$ ?j $?gen) get-Nombre))
        
        (loop-for-count (?i 1 (length$ $?all_gen)) do   
            (bind ?ithName (send (nth$ ?i $?all_gen) get-Nombre))
            
            (if (eq ?genName ?ithName) then
                (bind ?punt (send ?obj get-puntuacion))
                (bind ?punt (+ ?punt 50))
                ;(printout t ?punt crlf)
                (modify-instance ?obj (puntuacion ?punt))
                (break)
            )
        )
    )
)

(defrule asociacion_heuristica::coincidencia_autor
    ?ctrl <- (targeted_autor on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (autores_validos $?all_aut))
    =>
    (retract ?ctrl)
    (assert (targeted_autor off))
    (bind ?libro (send ?obj get-libro))
    (bind $?aut (send ?libro get-Tiene_Como_Autor))
    (loop-for-count (?j 1 (length$ $?aut)) do    
        (bind ?autName (send (nth$ ?j $?aut) get-Nombre))
        
        (loop-for-count (?i 1 (length$ $?all_aut)) do   
            (bind ?ithName (send (nth$ ?i $?all_aut) get-Nombre))
            
            (if (eq ?autName ?ithName) then
                (bind ?punt (send ?obj get-puntuacion))
                (bind ?punt (+ ?punt 200))
                ;(printout t ?punt crlf)
                (modify-instance ?obj (puntuacion ?punt))
                (break)
            )
        )
    )
)

(defrule asociacion_heuristica::coincidencia_VO_nulo
    ?ctrl <- (targeted_VO on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (mejor_si_es_VO ?typeVO))
    (test (eq ?typeVO "nulo"))
    =>
    (retract ?ctrl)
    (assert (targeted_VO off))
    
)
(defrule asociacion_heuristica::coincidencia_VO_bajo
    ?ctrl <- (targeted_VO on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (mejor_si_es_VO ?typeVO))
    (test (eq ?typeVO "bajo"))
    =>
    (retract ?ctrl)
    (assert (targeted_VO off))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?punt (+ ?punt 30))
    (modify-instance ?obj (puntuacion ?punt))
)
(defrule asociacion_heuristica::coincidencia_VO_medio
    ?ctrl <- (targeted_VO on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (mejor_si_es_VO ?typeVO))
    (test (eq ?typeVO "medio"))
    =>
    (retract ?ctrl)
    (assert (targeted_VO off))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?punt (+ ?punt 60))
    (modify-instance ?obj (puntuacion ?punt))
)
(defrule asociacion_heuristica::coincidencia_VO_alto
    ?ctrl <- (targeted_VO on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (mejor_si_es_VO ?typeVO))
    (test (eq ?typeVO "alto"))
    =>
    (retract ?ctrl)
    (assert (targeted_VO off))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?punt (+ ?punt 100))
    (modify-instance ?obj (puntuacion ?punt))
)

(defrule asociacion_heuristica::coincidencia_valoraciones_nulo
    ?ctrl <- (targeted_valoraciones on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (valoraciones_cuentan ?typeVA))
    (test (eq ?typeVA "nulo"))
    =>
    (retract ?ctrl)
    (assert (targeted_valoraciones off))
    
)
(defrule asociacion_heuristica::coincidencia_valoraciones_bajo
    ?ctrl <- (targeted_valoraciones on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (valoraciones_cuentan ?typeVA))
    (test (eq ?typeVA "bajo"))
    =>
    (retract ?ctrl)
    (assert (targeted_valoraciones off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?val (send ?libro get-Valoracion))
    (bind ?val (* ?val 3))
    (bind ?punt (+ ?punt ?val))
    (modify-instance ?obj (puntuacion ?punt))
    
)
(defrule asociacion_heuristica::coincidencia_valoraciones_medio
    ?ctrl <- (targeted_valoraciones on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (valoraciones_cuentan ?typeVA))
    (test (eq ?typeVA "medio"))
    =>
    (retract ?ctrl)
    (assert (targeted_valoraciones off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?val (send ?libro get-Valoracion))
    (bind ?val (* ?val 6))
    (bind ?punt (+ ?punt ?val))
    (modify-instance ?obj (puntuacion ?punt))
    
)
(defrule asociacion_heuristica::coincidencia_valoraciones_alto
    ?ctrl <- (targeted_valoraciones on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (valoraciones_cuentan ?typeVA))
    (test (eq ?typeVA "alto"))
    =>
    (retract ?ctrl)
    (assert (targeted_valoraciones off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind ?val (send ?libro get-Valoracion))
    (bind ?val (* ?val 10))
    (bind ?punt (+ ?punt ?val))
    (modify-instance ?obj (puntuacion ?punt))
)

(defrule asociacion_heuristica::coincidencia_saga_nulo
    ?ctrl <- (targeted_sagas on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (puede_ser_de_saga ?typeSAG))
    (test (eq ?typeSAG "nulo"))
    =>
    (retract ?ctrl)
    (assert (targeted_sagas off))
)
(defrule asociacion_heuristica::coincidencia_saga_bajo
    ?ctrl <- (targeted_sagas on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (puede_ser_de_saga ?typeSAG))
    (test (eq ?typeSAG "bajo"))
    =>
    (retract ?ctrl)
    (assert (targeted_sagas off))
    (bind ?libro (send ?obj get-libro))
    (bind ?pre (send ?libro get-es_predecesor_de))
    (bind ?post (send ?libro get-es_sucesor_se))
    (bind ?elem 0)    
    (if (neq ?pre nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (neq ?post nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (> ?elem 0) then
        (bind ?punt (send ?obj get-puntuacion))
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_saga_medio
    ?ctrl <- (targeted_sagas on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (puede_ser_de_saga ?typeSAG))
    (test (eq ?typeSAG "medio"))
    =>
    (retract ?ctrl)
    (assert (targeted_sagas off))
    (bind ?libro (send ?obj get-libro))
    (bind ?pre (send ?libro get-es_predecesor_de))
    (bind ?post (send ?libro get-es_sucesor_se))
    (bind ?elem 0)    
    (if (neq ?pre nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (neq ?post nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (> ?elem 0) then
        (bind ?punt (send ?obj get-puntuacion))
        (bind ?punt (+ ?punt 60))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_saga_alto
    ?ctrl <- (targeted_sagas on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (puede_ser_de_saga ?typeSAG))
    (test (eq ?typeSAG "alto"))
    =>
    (retract ?ctrl)
    (assert (targeted_sagas off))
    (bind ?libro (send ?obj get-libro))
    (bind ?pre (send ?libro get-es_predecesor_de))
    (bind ?post (send ?libro get-es_sucesor_se))
    (bind ?elem 0)    
    (if (neq ?pre nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (neq ?post nil) then
        (bind ?elem (+ ?elem 1))
    )
    (if (> ?elem 0) then
        (bind ?punt (send ?obj get-puntuacion))
        (bind ?punt (+ ?punt 100))
        (modify-instance ?obj (puntuacion ?punt))
    )
)

(defrule asociacion_heuristica::coincidencia_longitud_nulo
    ?ctrl <- (targeted_longitud on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (longitud_libro ?typeLON))
    (test (eq ?typeLON "nulo"))
    =>
    (retract ?ctrl)
    (assert (targeted_longitud off))    
)
(defrule asociacion_heuristica::coincidencia_longitud_corto
    ?ctrl <- (targeted_longitud on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (longitud_libro ?typeLON))
    (test (eq ?typeLON "corto"))
    =>
    (retract ?ctrl)
    (assert (targeted_longitud off))
    (bind ?libro (send ?obj get-libro))
    (bind ?lon (send ?libro get-NumPag))
    (bind ?punt (send ?obj get-puntuacion))
    (if (<= ?lon 100) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))                
    )
    (if (and (> ?lon 100) (<= ?lon 300)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))                
    )
)
(defrule asociacion_heuristica::coincidencia_longitud_medio
    ?ctrl <- (targeted_longitud on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (longitud_libro ?typeLON))
    (test (eq ?typeLON "medio"))
    =>
    (retract ?ctrl)
    (assert (targeted_longitud off))
    (bind ?libro (send ?obj get-libro))
    (bind ?lon (send ?libro get-NumPag))
    (bind ?punt (send ?obj get-puntuacion))
    (if (<= ?lon 100) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (and (> ?lon 100) (<= ?lon 300)) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (> ?lon 300) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )    
)
(defrule asociacion_heuristica::coincidencia_longitud_largo
    ?ctrl <- (targeted_longitud on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (longitud_libro ?typeLON))
    (test (eq ?typeLON "largo"))
    =>
    (retract ?ctrl)
    (assert (targeted_longitud off))
    (bind ?libro (send ?obj get-libro))
    (bind ?lon (send ?libro get-NumPag))
    (bind ?punt (send ?obj get-puntuacion))
    (if (and (> ?lon 100) (<= ?lon 300)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))                
    )
    (if (> ?lon 300) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
    )    
)

(defrule asociacion_heuristica::coincidencia_nivel_bajo
    ?ctrl <- (targeted_nivel on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?typeLVL "bajo"))
    =>
    (retract ?ctrl)
    (assert (targeted_nivel off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Baja) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?diff Media) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_nivel_medio
    ?ctrl <- (targeted_nivel on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?typeLVL "medio"))
    =>
    (retract ?ctrl)
    (assert (targeted_nivel off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Baja) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?diff Media) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?diff Alta) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_nivel_alto
    ?ctrl <- (targeted_nivel on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?typeLVL "alto"))
    =>
    (retract ?ctrl)
    (assert (targeted_nivel off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Media) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?diff Alta) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
    )
)

(defrule asociacion_heuristica::coincidencia_fran_nino
   ?ctrl <-(targeted_franED on)
   ?sol <- (solucion_abstracta (targeted_rec ?obj))
   ?pa <- (problema_abstracto (etapa_edad ?typeED))
   (test (eq ?typeED "Nino"))
   =>
   (retract ?ctrl)
   (assert (targeted_franED off))
   (bind ?libro (send ?obj get-libro))
   (bind ?ed (send ?libro get-edad_recomendada))
   (bind ?punt (send ?obj get-puntuacion))
   (if (and (>= ?ed 3)(< ?ed 12)) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 12) (< ?ed 20) ) then
       (bind ?punt (+ ?punt 25))
       (modify-instance ?obj (puntuacion ?punt))
   )
   
)
(defrule asociacion_heuristica::coincidencia_fran_adolescente
   ?ctrl <-(targeted_franED on)
   ?sol <- (solucion_abstracta (targeted_rec ?obj))
   ?pa <- (problema_abstracto (etapa_edad ?typeED))
   (test (eq ?typeED "Adolescente"))
   =>
   (retract ?ctrl)
   (assert (targeted_franED off))
   (bind ?libro (send ?obj get-libro))
   (bind ?ed (send ?libro get-edad_recomendada))
   (bind ?punt (send ?obj get-puntuacion))
   (if (and (>= ?ed 3)(< ?ed 12)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 12) (< ?ed 20) ) then
       (bind ?punt (+ ?punt 50))
       (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 20)(< ?ed 35)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
   
)
(defrule asociacion_heuristica::coincidencia_fran_joven
   ?ctrl <-(targeted_franED on)
   ?sol <- (solucion_abstracta (targeted_rec ?obj))
   ?pa <- (problema_abstracto (etapa_edad ?typeED))
   (test (eq ?typeED "Joven"))
   =>
   (retract ?ctrl)
   (assert (targeted_franED off))
   (bind ?libro (send ?obj get-libro))
   (bind ?ed (send ?libro get-edad_recomendada))
   (bind ?punt (send ?obj get-puntuacion))
   (if (and (>= ?ed 12) (< ?ed 20) ) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 20)(< ?ed 35) ) then
       (bind ?punt (+ ?punt 50))
       (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 35) (< ?ed 60) ) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
   
)
(defrule asociacion_heuristica::coincidencia_fran_maduro
   ?ctrl <-(targeted_franED on)
   ?sol <- (solucion_abstracta (targeted_rec ?obj))
   ?pa <- (problema_abstracto (etapa_edad ?typeED))
   (test (eq ?typeED "Maduro"))
   =>
   (retract ?ctrl)
   (assert (targeted_franED off))
   (bind ?libro (send ?obj get-libro))
   (bind ?ed (send ?libro get-edad_recomendada))   
   (bind ?punt (send ?obj get-puntuacion))
   (if (and (>= ?ed 20)(< ?ed 35) ) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 35) (< ?ed 60) ) then
       (bind ?punt (+ ?punt 50))
       (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 60) (<= ?ed 120) ) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
   )
)
(defrule asociacion_heuristica::coincidencia_fran_tercera
   ?ctrl <-(targeted_franED on)
   ?sol <- (solucion_abstracta (targeted_rec ?obj))
   ?pa <- (problema_abstracto (etapa_edad ?typeED))
   (test (eq ?typeED "Tercera edad"))
   =>
   (retract ?ctrl)
   (assert (targeted_franED off))
   (bind ?libro (send ?obj get-libro))
   (bind ?ed (send ?libro get-edad_recomendada))   
   (bind ?punt (send ?obj get-puntuacion))
   (if (and (>= ?ed 35) (< ?ed 60) ) then
       (bind ?punt (+ ?punt 25))
       (modify-instance ?obj (puntuacion ?punt))
   )
   (if (and (>= ?ed 60) (<= ?ed 120) ) then
        (bind ?punt (+ ?punt 50))
        (modify-instance ?obj (puntuacion ?punt))
   )
)

(defrule asociacion_heuristica::coincidencia_sexoH
    ?ctrl <-(targeted_sexoXlib on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (sexo_lector ?typeSE)(valoraciones_cuentan ?typeVA))
    (test (eq ?typeSE "Hombre"))
    =>
    (retract ?ctrl)
    (assert (targeted_sexoXlib off))
    (bind ?libro (send ?obj get-libro))
    (bind ?p (send ?libro get-popular_M))   
    (bind ?punt (send ?obj get-puntuacion))
    (if (and (neq ?typeVA "nulo")(eq ?p TRUE)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_sexoM
    ?ctrl <-(targeted_sexoXlib on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (sexo_lector ?typeSE)(valoraciones_cuentan ?typeVA))
    (test (eq ?typeSE "Mujer"))
    =>
    (retract ?ctrl)
    (assert (targeted_sexoXlib off))
    (bind ?libro (send ?obj get-libro))
    (bind ?p (send ?libro get-popular_F))   
    (bind ?punt (send ?obj get-puntuacion))
    (if (and (neq ?typeVA "nulo")(eq ?p TRUE)) then
        (bind ?punt (+ ?punt 25))
        (modify-instance ?obj (puntuacion ?punt))
    )
)

(defrule asociacion_heuristica::coincidencia_tipolugarlectura_silencioso
    ?ctrl <- (targeted_tipolugarlectura on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (tipo_lugar_de_lectura ?tipo_lug))
    ?pa2 <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?tipo_lug "Silencioso"))
    =>
    (retract ?ctrl)
    (assert (targeted_tipolugarlectura off))
)
(defrule asociacion_heuristica::coincidencia_tipolugarlectura_tranquilo
    ?ctrl <- (targeted_tipolugarlectura on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (tipo_lugar_de_lectura ?tipo_lug))
    ?pa2 <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?tipo_lug "Tranquilo"))
    =>
    (retract ?ctrl)
    (assert (targeted_tipolugarlectura off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Baja) then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?typeLVL "bajo") then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_tipolugarlectura_ruidoso
    ?ctrl <- (targeted_tipolugarlectura on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (tipo_lugar_de_lectura ?tipo_lug))
    ?pa2 <- (problema_abstracto (nivel_lector ?typeLVL))
    (test (eq ?tipo_lug "Ruidoso"))
    =>
    (retract ?ctrl)
    (assert (targeted_tipolugarlectura off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Baja) then
        (bind ?punt (+ ?punt 60))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?typeLVL "bajo") then
        (bind ?punt (+ ?punt 60))
        (modify-instance ?obj (puntuacion ?punt))
    )
    
    (if (eq ?diff Media) then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?typeLVL "medio") then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
)
(defrule asociacion_heuristica::coincidencia_tipolugarlectura_ajetreado
    ?ctrl <- (targeted_tipolugarlectura on)
    ?sol <- (solucion_abstracta (targeted_rec ?obj))
    ?pa <- (problema_abstracto (tipo_lugar_de_lectura ?tipo_lug)(nivel_lector ?typeLVL))
    (test (eq ?tipo_lug "Ajetreado"))
    =>
    (retract ?ctrl)
    (assert (targeted_tipolugarlectura off))
    (bind ?libro (send ?obj get-libro))
    (bind ?punt (send ?obj get-puntuacion))
    (bind $?autores (send $?libro get-Tiene_Como_Autor))
    (bind ?diff (send (nth$ 1 $?autores) get-Dificultad_Lenguaje))
    (if (eq ?diff Baja) then
        (bind ?punt (+ ?punt 100))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?typeLVL "bajo") then
        (bind ?punt (+ ?punt 100))
        (modify-instance ?obj (puntuacion ?punt))
    )
    
    (if (eq ?diff Media) then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
    (if (eq ?typeLVL "medio") then
        (bind ?punt (+ ?punt 30))
        (modify-instance ?obj (puntuacion ?punt))
    )
)


(defrule asociacion_heuristica::ordenar_recomendaciones
    ?sol <- (solucion_abstracta (libros_no_tratados $?lnt) (libros_recomendados $?lista) (recomendaciones_ordenadas $?resultado))
    ?target <- (target_mode on)    
    (test (eq (length $?lnt) 0))
    =>
    (retract ?target)
	(while (not (eq (length$ $?lista) 0))  do
		(bind ?curr-rec (max_libro $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(modify ?sol (recomendaciones_ordenadas $?resultado))
    (printout t "Recomendaciones ordenadas con exito!!" crlf)
    (assert (veredicto not_deff))
)

(defrule asociacion_heuristica::veredicto_inicial
    ?fact <- (veredicto not_deff)
    ?sol <- (solucion_abstracta (recomendaciones_ordenadas $?libs))
    =>
	; Anadiremos 3 ganadores, si los hay
	(bind ?num 3)
	(if (> ?num (length$ $?libs)) then (bind ?num (length$ $?libs)))
	(if (> ?num 0) then
		; Anadir los libros ganadores
		(bind $?ganadores (create$ ))
		(loop-for-count (?i 1 ?num) do
			(bind ?elem (nth$ ?i $?libs)) 
			(bind $?ganadores(insert$ $?ganadores (+ (length$ $?ganadores) 1) ?elem))
		)
		; Eliminar ganadores de la lista ordenada
		(bind $?F (delete$ $?libs 1 ?num))
		
		; Metemos el veredicto dentro del template
		(bind ?inst (make-instance (gensym) of Veredicto (recomendaciones $?ganadores)))    
		
		(modify ?sol (solucion_no_refinada ?inst) (recomendaciones_ordenadas $?F))
	)
    (retract ?fact)
    (assert (veredicto inicial))
)
;;;;;;;;;;;;;;;;;;;;;;;; REFINAMIENTO DE SOLUCIONES ;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule refinamiento_de_soluciones::inicializar_solucion_refinada
    (declare (salience 100))
    ?sol_ref <- (solucion_refinada (solucion ?s))
    ?sol_abs <- (solucion_abstracta (solucion_no_refinada ?veredicto))
    ?fact <- (inicializar)
    =>
    (retract ?fact)
    (modify ?sol_ref (solucion ?veredicto))
)

(defrule refinamiento_de_soluciones::printing
    ?fact <- (goprint)
    ?sol <- (solucion_refinada (solucion ?veredicto))
    (not (fin))
	=>
	(printout t crlf crlf "###################################################")
	(printout t crlf "################# RECOMENDACIONES #################" crlf)
	(printout t "###################################################" crlf crlf)
    (printout t (send ?veredicto print) crlf)
    (assert (pregunta_final))
    (retract ?fact)
)

(defrule refinamiento_de_soluciones::add_siguiente_recomendacion
    (declare (salience 100)) ; Para que se ejecute antes que saludos
    ?fact <- (add_siguiente)
    ?sol_ref <- (solucion_refinada (solucion ?s))
    ?sol_abs <- (solucion_abstracta (recomendaciones_ordenadas $?rec_ord))
    =>
    (bind ?next_rec (nth$ 1 $?rec_ord))
    (slot-insert$ ?s recomendaciones 3 ?next_rec)
    (printout t crlf crlf "**** Las recomendaciones han sido actualizadas ****" crlf crlf)
    (if (neq (length$ $?rec_ord) 0) then 
		(bind $?F (delete$ $?rec_ord 1 1))
		(modify ?sol_abs (recomendaciones_ordenadas $?F))
	)
    (retract ?fact)
)

(defrule refinamiento_de_soluciones::pregunta_final
    ?fact <- (pregunta_final)
    ?sol_ref <- (solucion_refinada (solucion ?s))
    ?sol_abs <- (solucion_abstracta (recomendaciones_ordenadas $?rec_ord))
	(test (> (length$ $?rec_ord) 0))
    =>
    (bind ?veredicto (send ?s get-recomendaciones))
    (bind $?nombre_libros (create$ ))
    (loop-for-count (?i 1 (length$ $?veredicto)) do
		(bind ?recomendacion (nth$ ?i ?veredicto))
		(bind ?libro (send ?recomendacion get-libro))
        (bind ?nombre_libro (send ?libro get-Nombre))
		(bind $?nombre_libros(insert$ $?nombre_libros (+ (length$ $?nombre_libros) 1) ?nombre_libro))
	)
	(bind ?escogido (pregunta_unirespuesta "Si deseas eliminar UNO de estos libros (ya lo has leido, no te gusta...) introduce su numero (0 si te gustan todos): " $?nombre_libros))
    (if (eq 0 (length$ ?escogido)) then (assert (fin))
    else (if (not(= (length$ $?rec_ord) 0)) then (assert (add_siguiente))))	
	(bind ?index (nth$ 1 ?escogido))
    (if (neq 0 (length$ ?escogido)) then (slot-delete$ ?s recomendaciones ?index ?index))
    (assert (goprint))
    (retract ?fact)   
)

(defrule refinamiento_de_soluciones::no_mas_preguntas
	?fact <- (pregunta_final)
	?sol_abs <- (solucion_abstracta (recomendaciones_ordenadas $?rec_ord))
	(test (<= (length$ $?rec_ord) 0))
	=>
	(assert (fin))
	(printout t "No podemos ofrecer ningun cambio en las recomendaciones." crlf)
	(printout t "Todos los libros mostrados hasta el momento son los unicos que cumplen con los requisitos solicitados." crlf)
)
















