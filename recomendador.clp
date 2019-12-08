;
; ONTOLOGIA
;
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
		(Nombre "Dystopian"))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; CLASES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Una recomendacion es un libro asociado a unas justificaciones.
(defclass Recomendacion
	(is-a USER)
	(role concrete)
    (single-slot Libro
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






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PRINTING ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmessage-handler Libro print ()
	(format t "Titulo: %s %n" ?self:Nombre)
	(printout t crlf)
	(format t "Autor: %s" (send ?self:Tiene_Como_Autor get-Nombre))
	(printout t crlf)
    (format t "Genero: %s" (send ?self:Es_Del_Genero get-Nombre))
	(printout t crlf)
    ;(format t "Version original: %s" ?self:Es_Version_Original)
	;(printout t crlf)
    (format t "Numero de paginas: %d" ?self:NumPag)
	(printout t crlf)
    (format t "Idiomas disponibles: %s" ?self:Idioma)
	(printout t crlf)
    (format t "Valoracion de 1 a 10: %d" ?self:Valoracion)
	(printout t crlf)
	(format t "Formatos disponibles: %s" ?self:Formato)
	(printout t crlf)
	(format t "Puede adquirirlo en: %s" (send ?self:Se_Adquiere_En get-Nombre))
	(printout t crlf)

)

(defmessage-handler Recomendacion print ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:Libro print))
	(printout t crlf)
	(printout t "Puntuacion: " crlf)
	;(progn$ (?curr-just ?self:justificaciones)
	;	(printout t ?curr-just crlf)
	;)
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)

(defmessage-handler Veredicto print ()
	(printout t "============================================" crlf)
	(bind $?recs ?self:recomendaciones)
	(progn$ (?curr-rec $?recs)
		(printout t (send ?curr-rec print))
	)
	(printout t "============================================" crlf)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TEMPLATES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftemplate MAIN::datos_usuario
	(slot sexo (type STRING)(default "null"))				; sexo del usuario
	(slot edad (type INTEGER)(default -1))			        ; edad del usuario
	(multislot idiomas (type STRING))				        ; idiomas que lee el usuario
	(slot lugar_de_lectura (type STRING)(default "null"))   ; lugares de lectura del usuario
	(slot sagas (type INTEGER)(default -1))				    ; Le gustan o no las sagas
	(slot longitud (type INTEGER)(default -1))		        ; Como de largos le gustan los libros
	(slot VO (type INTEGER)(default -1))      		        ; Prioriza versiones originales
	(slot confianza_valoraciones (type INTEGER)(default -1))				; Confia en las valoraciones de la gente
	(slot cantidad_libros_leidos (type INTEGER)(default -1)) 	; Cantidad de libros leidos por el usuario
	(multislot generos_fav (type INSTANCE))			; Generos favoritos del usuario
	(multislot autores_fav (type INSTANCE))			; Autores que le gustan al usuario
	(multislot libros_gustado (type INSTANCE))		; Libros que le hayan gustado
	(multislot libros_disgustado (type INSTANCE))	; Libros que NO le hayan gustado
)

(deftemplate MAIN::problema_abstracto
    (slot longitud_libro (type STRING))
    (slot puede_ser_de_saga (type STRING))
    (slot mejor_si_es_VO (type STRING))
    (slot valoraciones_cuentan (type STRING))
    (slot nivel_lector (type STRING))
    (multislot generos_validos (type INSTANCE))
    (multislot autores_validos (type INSTANCE))
)

(deftemplate MAIN::solucion_abstracta
    (multislot libros_recomendados(type INSTANCE))
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FUNCIONES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction ask_question (?question $?allowed_values)
   (printout t ?question)
   (bind ?answer (read))
   (while (not (member ?answer ?allowed_values)) do
      (printout t ?question)
      (bind ?answer (read))
   )
   ?answer)

;;; Hace una pregunta a la que hay que responder si o no
(deffunction si_o_no_p (?question)
   (bind ?response (ask_question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)

;;; Funcion para hacer una pregunta numerica-univalor
(deffunction MAIN::pregunta_numerica (?pregunta ?rangini ?rangfi)
	(format t "%s (De %d hasta %d) " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s (De %d hasta %d) " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction MAIN::pregunta_opciones (?question $?allowed-values)
   (format t "%s "?question)
   (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (format t "%s "?question)
	  (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
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
    ?lista
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FACTS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts recopilacion_datos_personales::controladores_preguntas
	(generosF not_deff)
	(autoresF not_deff)
	(librosG not_deff)
	(librosD not_deff)
)

(deffacts abstraccion_de_datos::controladores_abstraccion
	;(longitud_libro not_deff)
	;(puede_ser_de_saga not_deff)
	;(mejor_si_es_VO not_deff)
	;(valoraciones_cuentan not_deff)
	;(nivel_lector not_deff)
	(generos_v not_deff)
	(autores_v not_deff)
)

(deffacts asociacion_heuristica::controladores_asociacion_heuristica
    (libros_obtenidos not_deff)
    (libros_printed not_deff)
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;; RECOPILACION DE DATOS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule recopilacion_datos_personales::duracion_libros
    ?d <- (datos_usuario (longitud -1))
	=>
	(bind ?l (pregunta_numerica "¿Duracion de los libros (paginas) (0 si te es indiferente)? " 0 1000))
	(modify ?d (longitud ?l))
)

(defrule recopilacion_datos_personales::sexo_usuario
    ?d <- (datos_usuario (sexo "null"))
	=>
	(bind ?s (ask_question "¿Cual es tu genero (hombre/mujer)? " hombre mujer))
	(modify ?d (sexo ?s))
)

(defrule recopilacion_datos_personales::lugar_lectura
    ?d <- (datos_usuario (lugar_de_lectura "null"))
	=>
	(bind ?s (ask_question "¿Lugar de lectura favorito? (Cafeteria, Calle, Oficina, Biblioteca, Coche)? " Cafeteria Calle Oficina Biblioteca Coche))
	(modify ?d (lugar_de_lectura ?s))
)

(defrule recopilacion_datos_personales::edad_usuario
    ?d <- (datos_usuario (edad -1))
	=>
	(bind ?e (pregunta_numerica "¿Cual es tu edad? " 3 120))
	(modify ?d (edad ?e))
)

(defrule recopilacion_datos_personales::assignar_cantidad_libros
    ?d <- (datos_usuario (cantidad_libros_leidos -1))
    =>
    (bind ?l (pregunta_numerica "¿Cuantos libros has leido?" 0 100))
    (modify ?d (cantidad_libros_leidos ?l))
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
	(bind ?escogido (pregunta_multirespuesta "Escoja sus generos favoritos (o 0 si no tiene): " $?tipo_genero))
	;(assert (generosF TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		;(if (= ?index 0) then (assert (generosF FALSE)))
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
	(bind ?escogido (pregunta_multirespuesta "Escoja sus autores favoritos (o 0 si no tiene): " $?nombre_autores))
	;(assert (autoresF TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		;(if (= ?index 0) then (assert (autoresF FALSE)))
		(bind ?aut (nth$ ?index ?autores))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?aut))
	)
	(retract ?hecho)
	(modify ?p-user (autores_fav $?respuesta))
)

(defrule recopilacion_datos_personales::confianza_valoraciones
    ?d <- (datos_usuario (confianza_valoraciones -1))
	=>
	(bind ?e (pregunta_numerica "¿Cuanto confias en las valoraciones (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (confianza_valoraciones ?e))
)

(defrule recopilacion_datos_personales::VO
    ?d <- (datos_usuario (VO -1))
	=>
	(bind ?e (pregunta_numerica "¿Cuanto te importan los libros en VO (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (VO ?e))
)

(defrule recopilacion_datos_personales::sagas
    ?d <- (datos_usuario (sagas -1))
	=>
	(bind ?e (pregunta_numerica "¿Cuanto te importa que los libros pertenezcan a sagas (introduce 0 si no lo tienes en cuenta)? " 0 10))
	(modify ?d (sagas ?e))
)

(defrule recopilacion_datos_personales::assignar_libros_gustado
	?hecho <- (librosG not_deff)
	?p-user <- (datos_usuario)
	=>
	(bind $?libros (find-all-instances ((?inst Libro)) TRUE))
	(bind $?nombre_libros (create$ ))
	(loop-for-count (?i 1 (length$ $?libros)) do
		(bind ?obj (nth$ ?i ?libros))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?nombre_libros(insert$ $?nombre_libros (+ (length$ $?nombre_libros) 1) ?nombre))
	)
	(bind ?escogido (pregunta_multirespuesta "Escoja libros que ha leido y le han gustado (o 0 si no tiene): " $?nombre_libros))
	;(assert (autoresF TRUE))
		(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		;(if (= ?index 0) then (assert (autoresF FALSE)))
		(bind ?lib (nth$ ?index ?libros))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?lib))
	)
	(retract ?hecho)
	(modify ?p-user (libros_gustado $?respuesta))
)

(defrule recopilacion_datos_personales::assignar_libros_disgustado
	?hecho <- (librosD not_deff)
	?p-user <- (datos_usuario)
	=>
	(bind $?libros (find-all-instances ((?inst Libro)) TRUE))
	(bind $?nombre_libros (create$ ))
	(loop-for-count (?i 1 (length$ $?libros)) do
		(bind ?obj (nth$ ?i ?libros))
		(bind ?nombre (send ?obj get-Nombre))
		(bind $?nombre_libros(insert$ $?nombre_libros (+ (length$ $?nombre_libros) 1) ?nombre))
	)
	(bind ?escogido (pregunta_multirespuesta "Escoja libros que ha leido y no le han gustado (o 0 si no tiene): " $?nombre_libros))
	;(assert (autoresF TRUE))
		(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?index (nth$ ?i ?escogido))
		;(if (= ?index 0) then (assert (autoresF FALSE)))
		(bind ?lib (nth$ ?index ?libros))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?lib))
	)
	(retract ?hecho)
	(modify ?p-user (libros_disgustado $?respuesta))
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
    (assert (autores_v TRUE))
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




;;;;;;;;;;;;;;;;;;;;;;;;;;; ASOCIACION HEURISTICA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule asociacion_heuristica::inicializar_lista_libros
    ?fact <- (libros_obtenidos not_deff)
    ?l <- (solucion_abstracta)
	=>
    (bind $?allLibros (find-all-instances ((?inst Libro)) TRUE))
    (progn$ (?curr-con ?allLibros)
		(make-instance (gensym) of Recomendacion (Libro ?curr-con)(puntuacion 0))
	)	
    (retract ?fact)
    (modify ?l (libros_recomendados $?allLibros))
)


(defrule asociacion_heuristica::saludos
    ?fact <- (libros_printed not_deff)
    ?sol <- (solucion_abstracta (libros_recomendados $?libs))
	=>
    (printout t "ESTOS SON LOS LIBROS RECOMENDADOS:" crlf)
    (loop-for-count (?i 1 (length$ $?libs)) do
        (bind ?obj (nth$ ?i $?libs))
        (printout t (send ?obj print))
        ;(bind ?nombre (send ?obj get-Nombre))
        ;(printout t ?nombre crlf)
    )
    (retract ?fact)
    ;(modify ?all (libros $?all))
)

;;;;;; cositas ;;;;;

;(defrule generacion_soluciones::crea-lista-ordenada "Regla para pasar lista, a lista ordenada"
;	(not (lista-rec-ordenada))
;	(lista-rec-desordenada (recomendaciones $?lista))
;	=>
;	(bind $?resultado (create$ ))
;	(while (not (eq (length$ $?lista) 0))  do
;		(bind ?curr-rec (maximo-puntuacion $?lista))
;		(bind $?lista (delete-member$ $?lista ?curr-rec))
;		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
;	)
;	(assert (lista-rec-ordenada (recomendaciones $?resultado)))
;    (printout t "Ordenando obras de arte..." crlf)
;)
