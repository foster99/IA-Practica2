;
; ONTOLOGIA
;

; Wed Nov 27 17:09:03 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 660")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Es_Del_Genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Es_Genero_De)
		(create-accessor read-write))
	(single-slot NumVentas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad_Tramas
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_sucesor_se
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot es_predecesor_de)
		(create-accessor read-write))
	(single-slot Es_Version_Original
;+		(comment "Es la version original, o una adaptacion.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad_Lenguaje
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Popularidad
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Se_Adquiere_En
		(type INSTANCE)
;+		(allowed-classes LugarDeAdquision)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Se_Adquiere)
		(create-accessor read-write))
	(multislot Formato
		(type SYMBOL)
		(allowed-values Paper Digital)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot Es_Genero_De
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Es_Del_Genero)
		(create-accessor read-write))
	(single-slot Es_Tendencia
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NumPag
;+		(comment "Numero de paginas del libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot es_predecesor_de
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot es_sucesor_se)
		(create-accessor read-write))
	(single-slot Valoracion
;+		(comment "Valoracion de otros usuarios que han leido el libro.")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Se_Adquiere
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Se_Adquiere_En)
		(create-accessor read-write))
	(multislot Idioma
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Clima
		(type SYMBOL)
		(allowed-values Tranquilo Ajetreado Silencioso Ruidoso)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Es_Autor_De
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Tiene_Como_Autor)
		(create-accessor read-write))
	(multislot Tiene_Como_Autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Es_Autor_De)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot es_sucesor_se
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_predecesor_de
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Formato
		(type SYMBOL)
		(allowed-values Paper Digital)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot Es_Version_Original
;+		(comment "Es la version original, o una adaptacion.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
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
	(multislot Es_Del_Genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Tiene_Como_Autor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Idioma
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Se_Adquiere_En
		(type INSTANCE)
;+		(allowed-classes LugarDeAdquision)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Autor
	(is-a USER)
	(role concrete)
	(single-slot Nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Dificultad_Lenguaje
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Es_Autor_De
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Complejidad_Tramas
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Popularidad
		(type SYMBOL)
		(allowed-values Alta Media Baja)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Idioma
		(type SYMBOL)
		(allowed-values Ingles Castellano Frances Aleman)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Lugar
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass LugarDeAdquision
	(is-a Lugar)
	(role concrete)
	(multislot Se_Adquiere
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass LugarDeLectura
	(is-a Lugar)
	(role concrete)
	(single-slot Clima
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
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Es_Tendencia
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

;
; INSTANCIAS
;

; Wed Nov 27 17:09:03 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 660")
(definstances instancias
([salu2_Class0] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Media)
	(Es_Autor_De
		[salu2_Class10000]
		[salu2_Class10001]
		[salu2_Class20001])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Nora Roberts")
	(Popularidad Media))

([salu2_Class1] of  Libro

	(Es_Del_Genero [salu2_Class9])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Ready Player One: A Novel")
	(NumPag 400)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class26])
	(Valoracion 9))

([salu2_Class10] of  Genero

	(Nombre "Exploration"))

([salu2_Class10000] of  Libro

	(Es_Del_Genero [salu2_Class9])
	(es_predecesor_de [salu2_Class10001])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 1")
	(NumPag 448)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 8))

([salu2_Class10001] of  Libro

	(Es_Del_Genero [salu2_Class9])
	(es_predecesor_de [salu2_Class20001])
	(es_sucesor_se [salu2_Class10000])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 2")
	(NumPag 480)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 9))

([salu2_Class11] of  Genero

	(Nombre "FirstContact"))

([salu2_Class12] of  Genero

	(Nombre "GalacticEmpire"))

([salu2_Class13] of  Genero

	(Nombre "GeneticEngineering"))

([salu2_Class14] of  Genero

	(Es_Tendencia TRUE)
	(Nombre "HardScienceFiction"))

([salu2_Class15] of  Genero

	(Nombre "History&Criticism"))

([salu2_Class16] of  Genero

	(Nombre "Humorous"))

([salu2_Class17] of  Genero

	(Es_Tendencia TRUE)
	(Nombre "Military"))

([salu2_Class18] of  Genero

	(Es_Tendencia TRUE)
	(Nombre "Post-Apocalyptic"))

([salu2_Class19] of  Genero

	(Es_Tendencia TRUE)
	(Nombre "SpaceOpera"))

([salu2_Class20] of  Genero

	(Nombre "ShortStories"))

([salu2_Class20000] of  LugarDeLectura

	(Clima Tranquilo)
	(Nombre "Tren"))

([salu2_Class20001] of  Libro

	(Es_Del_Genero [salu2_Class9])
	(es_sucesor_se [salu2_Class10001])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Of Blood and Bone: Chronicles of The One, Book 3")
	(NumPag 464)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class0])
	(Valoracion 8))

([salu2_Class20002] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Media)
	(Es_Autor_De [salu2_Class20003])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "H. P. Lovecraft")
	(Popularidad Alta))

([salu2_Class20003] of  Libro

	(Es_Del_Genero [salu2_Class9])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Tales of Horror")
	(NumPag 768)
	(Se_Adquiere_En
		[salu2_Class25]
		[salu2_Class30010])
	(Tiene_Como_Autor [salu2_Class20002])
	(Valoracion 7))

([salu2_Class20004] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Alta)
	(Es_Autor_De
		[salu2_Class20005]
		[salu2_Class20007]
		[salu2_Class20008])
	(Idioma Ingles Aleman)
	(Nacionalidad "China")
	(Nombre "Cixin Liu")
	(Popularidad Baja))

([salu2_Class20005] of  Libro

	(Es_Del_Genero [salu2_Class4])
	(es_predecesor_de [salu2_Class20007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Three-Body Problem")
	(NumPag 416)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 7))

([salu2_Class20007] of  Libro

	(Es_Del_Genero [salu2_Class4])
	(es_predecesor_de [salu2_Class20008])
	(es_sucesor_se [salu2_Class20005])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Dark Forest (Remembrance of Earth's Past)")
	(NumPag 528)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 9))

([salu2_Class20008] of  Libro

	(Es_Del_Genero [salu2_Class4])
	(es_sucesor_se [salu2_Class20007])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Death's End (Remembrance of Earth's Past)")
	(NumPag 624)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20004])
	(Valoracion 8))

([salu2_Class20009] of  Libro

	(Es_Del_Genero [salu2_Class4])
	(Es_Version_Original TRUE)
	(Formato Digital Paper)
	(Idioma Ingles Frances)
	(Nombre "Stories of Your Life and Others")
	(NumPag 304)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20010])
	(Valoracion 6))

([salu2_Class20010] of  Autor

	(Complejidad_Tramas Baja)
	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20009])
	(Idioma Ingles)
	(Nacionalidad "China")
	(Nombre "Ted Chiang")
	(Popularidad Media))

([salu2_Class20011] of  Libro

	(Es_Del_Genero [salu2_Class4])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Childhood's End: A Novel")
	(NumPag 224)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20012])
	(Valoracion 7))

([salu2_Class20012] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Media)
	(Es_Autor_De [salu2_Class20011])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "Arthur C. Clarke")
	(Popularidad Media))

([salu2_Class20013] of  Libro

	(Es_Del_Genero [salu2_Class8])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "Snow Crash")
	(NumPag 440)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20014])
	(Valoracion 6))

([salu2_Class20014] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20013])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Neal Stephenson")
	(Popularidad Alta))

([salu2_Class20015] of  Libro

	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20017])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "City of Golden Shadow (Otherland, Volume 1)")
	(NumPag 800)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 7))

([salu2_Class20016] of  Autor

	(Complejidad_Tramas Baja)
	(Dificultad_Lenguaje Baja)
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

	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20018])
	(es_sucesor_se [salu2_Class20015])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "River of Blue Fire (Otherland, Volume 2)")
	(NumPag 704)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 7))

([salu2_Class20018] of  Libro

	(Es_Del_Genero [salu2_Class8])
	(es_predecesor_de [salu2_Class20019])
	(es_sucesor_se [salu2_Class20017])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Mountain of Black Glass (Otherland, Volume 3)")
	(NumPag 784)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 8))

([salu2_Class20019] of  Libro

	(Es_Del_Genero [salu2_Class8])
	(es_sucesor_se [salu2_Class20018])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles Castellano)
	(Nombre "Sea of Silver Light (Otherland, Volume 4)")
	(NumPag 1072)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20016])
	(Valoracion 9))

([salu2_Class20020] of  Libro

	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original TRUE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "The Time Machine")
	(NumPag 113)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20021])
	(Valoracion 8))

([salu2_Class20021] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Alta)
	(Es_Autor_De [salu2_Class20020])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "H.G. Wells")
	(Popularidad Baja))

([salu2_Class20022] of  Libro

	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original TRUE)
	(Formato Paper Digital)
	(Idioma Ingles)
	(Nombre "1636: The Atlantic Encounter (28) (Ring of Fire)")
	(NumPag 368)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor
		[salu2_Class20023]
		[salu2_Class20024])
	(Valoracion 7))

([salu2_Class20023] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20022])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Eric Flint")
	(Popularidad Media))

([salu2_Class20024] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20022])
	(Idioma Ingles Frances)
	(Nacionalidad "USA")
	(Nombre "Walter H. Hunt")
	(Popularidad Media))

([salu2_Class20025] of  Libro

	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Digital)
	(Idioma Ingles Aleman)
	(Nombre "How to Stop Time: A Novel")
	(NumPag 352)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20026])
	(Valoracion 7))

([salu2_Class20026] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Media)
	(Es_Autor_De [salu2_Class20025])
	(Idioma Ingles)
	(Nacionalidad "UK")
	(Nombre "Matt Haig")
	(Popularidad Alta))

([salu2_Class20027] of  Libro

	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Paper)
	(Idioma Ingles)
	(Nombre "Lightning")
	(NumPag 372)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20028])
	(Valoracion 6))

([salu2_Class20028] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Alta)
	(Es_Autor_De [salu2_Class20027])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Dean Koontz")
	(Popularidad Baja))

([salu2_Class20029] of  Libro

	(Es_Del_Genero [salu2_Class22])
	(Es_Version_Original FALSE)
	(Formato Paper Digital)
	(Idioma Ingles Aleman Frances Castellano)
	(Nombre "Flatland: A Romance of Many Dimensions")
	(NumPag 119)
	(Se_Adquiere_En [salu2_Class25])
	(Tiene_Como_Autor [salu2_Class20030])
	(Valoracion 10))

([salu2_Class20030] of  Autor

	(Complejidad_Tramas Alta)
	(Dificultad_Lenguaje Baja)
	(Es_Autor_De [salu2_Class20029])
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

	(Nombre "Steampunk"))

([salu2_Class22] of  Genero

	(Es_Genero_De
		[salu2_Class20020]
		[salu2_Class20022]
		[salu2_Class20025]
		[salu2_Class20027]
		[salu2_Class20029])
	(Es_Tendencia TRUE)
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
		[salu2_Class20029]))

([salu2_Class26] of  Autor

	(Complejidad_Tramas Media)
	(Dificultad_Lenguaje Media)
	(Es_Autor_De [salu2_Class1])
	(Idioma Ingles)
	(Nacionalidad "USA")
	(Nombre "Ernest_Cline")
	(Popularidad Media))

([salu2_Class3] of  Genero

	(Es_Tendencia TRUE)
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
	(Se_Adquiere [salu2_Class20003]))

([salu2_Class4] of  Genero

	(Es_Genero_De
		[salu2_Class20005]
		[salu2_Class20007]
		[salu2_Class20008]
		[salu2_Class20009]
		[salu2_Class20011])
	(Es_Tendencia TRUE)
	(Nombre "AlienInvasion"))

([salu2_Class40001] of  Autor
)

([salu2_Class5] of  Genero

	(Es_Tendencia TRUE)
	(Nombre "AlternateHistory"))

([salu2_Class6] of  Genero

	(Nombre "Anthologies"))

([salu2_Class7] of  Genero

	(Nombre "Colonization"))

([salu2_Class8] of  Genero

	(Es_Genero_De
		[salu2_Class20013]
		[salu2_Class20015]
		[salu2_Class20017]
		[salu2_Class20018]
		[salu2_Class20019])
	(Es_Tendencia TRUE)
	(Nombre "Cyberpunk"))

([salu2_Class9] of  Genero

	(Es_Genero_De
		[salu2_Class1]
		[salu2_Class10000]
		[salu2_Class10001]
		[salu2_Class20001]
		[salu2_Class20003])
	(Es_Tendencia TRUE)
	(Nombre "Dystopian")))



;;;;;;;;;;;;;;;;;;;;;;;;; MODULOS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Modulo principal de utilidades


;
; REGLAS
;

(deftemplate MAIN::templ
	(slot sl (type STRING))
)


(defrule retorna_instancies
    (not (retorna_instancies))
    =>
    (bind ?llista_instancies ( find-instance (?lib Libro) TRUE) )
    (assert retorna_instancies)
)
;(defrule MAIN::system-banner ""
;  =>
  ;  (printout t crlf crlf)
   ; (printout t "----El Recomendador de Libros----")
    ;(printout t crlf crlf)
    ;(focus obtencion-datos)
;)




