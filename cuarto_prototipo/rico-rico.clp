; Sat May 13 20:14:37 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")

(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Bebida_Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Fecha_Celebracion
		(type INTEGER)
		(range 1 12)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type SYMBOL)
		(allowed-values Moderno Tradicional Clasico Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Platos_Incompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Mes_Inicio_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Mes_Final_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Cantidad
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Origen
		(type SYMBOL)
		(allowed-values Japonesa Italiana Espa%C3%B1a China)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante Peque%C3%B1a)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AptoNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_Evento_Familiar
		(type SYMBOL)
		(allowed-values Boda Bautizo)
		(default Boda)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ontologia_Class40001
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreAlergia
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo_Evento_Congreso
		(type SYMBOL)
		(allowed-values Cena Comida)
		(default Comida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Primero
		(type INSTANCE)
;+		(allowed-classes Primero)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AptoCena
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Segundo
		(type INSTANCE)
;+		(allowed-classes Segundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Numero_Comensales
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Vino
	(is-a Bebida)
	(role concrete))

(defclass Tinto
	(is-a Vino)
	(role concrete))

(defclass Cava
	(is-a Vino)
	(role concrete))

(defclass Blanco
	(is-a Vino)
	(role concrete))

(defclass Evento
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Numero_Comensales
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Fecha_Celebracion
		(type INTEGER)
		(range 1 12)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Familiar
	(is-a Evento)
	(role concrete)
	(single-slot Tipo_Evento_Familiar
		(type SYMBOL)
		(allowed-values Boda Bautizo)
		(default Boda)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Congreso
	(is-a Evento)
	(role concrete)
	(single-slot Tipo_Evento_Congreso
		(type SYMBOL)
		(allowed-values Cena Comida)
		(default Comida)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(single-slot Origen
		(type SYMBOL)
		(allowed-values Japonesa Italiana Espa%C3%B1a China)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Racion
		(type SYMBOL)
		(allowed-values Normal Abundante Peque%C3%B1a)
		(default Normal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bebida_Menu
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot AptoCena
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Estilo
		(type SYMBOL)
		(allowed-values Moderno Tradicional Clasico Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Platos_Incompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot AptoNinos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Primero
	(is-a Plato)
	(role concrete))

(defclass Segundo
	(is-a Plato)
	(role concrete))

(defclass Postre
	(is-a Plato)
	(role concrete))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Lactosa
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mes_Inicio_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Gluten
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PVP
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mes_Final_Temporada
		(type INTEGER)
		(range 1 12)
		(default 1)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Carne
	(is-a Ingrediente)
	(role concrete))

(defclass Pescado
	(is-a Ingrediente)
	(role concrete))

(defclass Cereal
	(is-a Ingrediente)
	(role concrete))

(defclass Derivado
	(is-a Ingrediente)
	(role concrete))

(defclass Verdura
	(is-a Ingrediente)
	(role concrete))

(defclass Fruta
	(is-a Ingrediente)
	(role concrete))

(defclass Grasas
	(is-a Ingrediente)
	(role concrete))

(defclass Condimento
	(is-a Ingrediente)
	(role concrete))

(defclass Marisco
	(is-a Ingrediente)
	(role concrete))

(defclass Frutos_secos
	(is-a Ingrediente)
	(role concrete))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Segundo
		(type INSTANCE)
;+		(allowed-classes Segundo)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Bebida
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Primero
		(type INSTANCE)
;+		(allowed-classes Primero)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Relacion_Menu_Postre
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass %3AUNDEFINED
	(is-a USER)
	(role concrete))

; Fri May 05 01:04:46 CEST 2017
;
;+ (version "3.5")
;+ (build "Build 663")

(definstances instances
	([ontologia_Class0] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class29]
			[ontologia_Class22]
			[ontologia_Class10003]
			[ontologia_Class10005]
			[ontologia_Class31]
			[ontologia_Class10007]
			[ontologia_Class10009]
			[ontologia_Class10010]
			[ontologia_Class10011]
			[ontologia_Class80012])
		(Nombre "Tosta tibia de salmón en conserva con tartar de sus huevas")
		(Platos_Incompatibles [ontologia_Class36])
		(PVP 6.0)
		(Racion Normal))

	([ontologia_Class1] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lechuga")
		(PVP 0.6))

	([ontologia_Class10000] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10002]
			[ontologia_Class10001]
			[ontologia_Class52])
		(Nombre "Sopa fría de sandía con bolas de melón")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class20007]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class10001] of  Fruta

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 5)
		(Nombre "Sandia")
		(PVP 0.5))

	([ontologia_Class10002] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Melon")
		(PVP 0.75))

	([ontologia_Class10003] of  Verdura

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Calabacín")
		(PVP 0.8))

	([ontologia_Class10004] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class10012]
			[ontologia_Class10014]
			[ontologia_Class10015]
			[ontologia_Class10016]
			[ontologia_Class10017])
		(Nombre "Carpaccio de presa de cerdo duroc")
		(Platos_Incompatibles [ontologia_Class17])
		(PVP 8.0)
		(Racion Peque%C3%B1a)
		(Vegetariano FALSE))

	([ontologia_Class10005] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Puerro")
		(PVP 1.0))

	([ontologia_Class10007] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche de coco")
		(PVP 0.7))

	([ontologia_Class10008] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Masa fresca")
		(PVP 1.2))

	([ontologia_Class10009] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Limón")
		(PVP 0.4))

	([ontologia_Class10010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimienta negra")
		(PVP 0.3))

	([ontologia_Class10011] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebollino")
		(PVP 0.5))

	([ontologia_Class10012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Presa de cerdo")
		(PVP 5.0))

	([ontologia_Class10014] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pasas")
		(PVP 0.4))

	([ontologia_Class10015] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Orejones")
		(PVP 0.8))

	([ontologia_Class10016] of  Fruta

		(Mes_Final_Temporada 8)
		(Mes_Inicio_Temporada 6)
		(Nombre "Frambuesa")
		(PVP 3.0))

	([ontologia_Class10017] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Calabaza")
		(PVP 0.9))

	([ontologia_Class10018] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cochinillo de cerdo")
		(PVP 8.0))

	([ontologia_Class10019] of  Verdura

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 3)
		(Nombre "Boniato")
		(PVP 0.8))

	([ontologia_Class10020] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento verde")
		(PVP 0.7))

	([ontologia_Class10021] of  Pescado

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Atún fresco")
		(PVP 2.0))

	([ontologia_Class10022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Wasabi")
		(PVP 0.3))

	([ontologia_Class10023] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 6)
		(Nombre "Nabo japones")
		(PVP 1.0))

	([ontologia_Class10024] of  Pescado

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Cabracho")
		(PVP 8.0))

	([ontologia_Class10025] of  Marisco

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 4)
		(Nombre "Erizo de mar")
		(PVP 5.0))

	([ontologia_Class10026] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomillo")
		(PVP 0.2))

	([ontologia_Class10027] of  Cereal

		(Gluten TRUE)
		(Lactosa FALSE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz")
		(PVP 0.6))

	([ontologia_Class10030] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lentejas")
		(PVP 0.7))

	([ontologia_Class10031] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gambas")
		(PVP 3.0))

	([ontologia_Class10032] of  Fruta

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 4)
		(Nombre "Naranja")
		(PVP 0.4))

	([ontologia_Class10033] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 4)
		(Nombre "Pomelo")
		(PVP 0.5))

	([ontologia_Class10034] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Comino")
		(PVP 0.2))

	([ontologia_Class15] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de oliva")
		(PVP 0.2))

	([ontologia_Class16] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinagre de Modena")
		(PVP 0.7))

	([ontologia_Class17] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class1]
			[ontologia_Class2]
			[ontologia_Class15]
			[ontologia_Class16]
			[ontologia_Class3]
			[ontologia_Class4])
		(Nombre "Ensalada de queso de cabra y nueces")
		(Platos_Incompatibles [ontologia_Class40018])
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class2] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate Natural")
		(PVP 0.8))

	([ontologia_Class20] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ajo")
		(PVP 0.1))

	([ontologia_Class20000] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class22]
			[ontologia_Class10020]
			[ontologia_Class20008]
			[ontologia_Class20015]
			[ontologia_Class20001]
			[ontologia_Class41]
			[ontologia_Class30011]
			[ontologia_Class15]
			[ontologia_Class50]
			[ontologia_Class35])
		(Nombre "Canelones caseros")
		(Platos_Incompatibles
			[ontologia_Class17]
			[ontologia_Class30025]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class20001] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Láminas de canelones")
		(PVP 0.5))

	([ontologia_Class20002] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Oregano")
		(PVP 0.1))

	([ontologia_Class20003] of  Fruta

		(Mes_Final_Temporada 5)
		(Mes_Inicio_Temporada 2)
		(Nombre "Fresa")
		(PVP 1.0))

	([ontologia_Class20004] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class20003]
			[ontologia_Class30]
			[ontologia_Class2]
			[ontologia_Class20]
			[ontologia_Class35]
			[ontologia_Class15])
		(Nombre "Gazpacho de fresas")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class20005] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10018]
			[ontologia_Class41]
			[ontologia_Class10019]
			[ontologia_Class10020])
		(Nombre "Cochinillo con puré de boniato ahumado y pimiento verde frito")
		(Platos_Incompatibles
			[ontologia_Class17]
			[ontologia_Class28])
		(PVP 7.0)
		(Racion Abundante))

	([ontologia_Class20006] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class10021]
			[ontologia_Class10022]
			[ontologia_Class10023]
			[ontologia_Class33])
		(Nombre "Tartar de atún con mayonesa de wasabi, jengibre encurtido y nabo japonés")
		(Origen Japonesa)
		(Platos_Incompatibles [ontologia_Class10004])
		(PVP 6.0)
		(Racion Peque%C3%B1a))

	([ontologia_Class20007] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class10024]
			[ontologia_Class10005]
			[ontologia_Class20008]
			[ontologia_Class44]
			[ontologia_Class26]
			[ontologia_Class10025])
		(Nombre "Pudding de cabracho con salsa de erizos de mar")
		(Platos_Incompatibles
			[ontologia_Class20006]
			[ontologia_Class0])
		(PVP 9.0)
		(Racion Normal))

	([ontologia_Class20008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Tomate frito")
		(PVP 0.4))

	([ontologia_Class20009] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class20010]
			[ontologia_Class20]
			[ontologia_Class20008]
			[ontologia_Class24]
			[ontologia_Class10026]
			[ontologia_Class15]
			[ontologia_Class20011]
			[ontologia_Class70001])
		(Nombre "Asadura de cordero")
		(Platos_Incompatibles
			[ontologia_Class10004]
			[ontologia_Class17]
			[ontologia_Class20007]
			[ontologia_Class0])
		(PVP 5.0)
		(Racion Abundante))

	([ontologia_Class20010] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vino blanco")
		(PVP 0.4))

	([ontologia_Class20011] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Laurel")
		(PVP 0.1))

	([ontologia_Class20012] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cava")
		(PVP 0.7))

	([ontologia_Class20013] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10027]
			[ontologia_Class20012]
			[ontologia_Class20014]
			[ontologia_Class22]
			[ontologia_Class44]
			[ontologia_Class15]
			[ontologia_Class20015]
			[ontologia_Class35])
		(Nombre "Arroz al cava")
		(Platos_Incompatibles
			[ontologia_Class80026]
			[ontologia_Class70051]
			[ontologia_Class70053]
			[ontologia_Class70041])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class20014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne picada")
		(PVP 0.5))

	([ontologia_Class20015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de oveja")
		(PVP 0.5))

	([ontologia_Class20016] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class10030]
			[ontologia_Class15]
			[ontologia_Class10009]
			[ontologia_Class10031]
			[ontologia_Class10032]
			[ontologia_Class10033]
			[ontologia_Class22]
			[ontologia_Class26]
			[ontologia_Class20011]
			[ontologia_Class10026])
		(Nombre "Ensalada con gambas, citricos y comino")
		(Platos_Incompatibles
			[ontologia_Class80026]
			[ontologia_Class40018]
			[ontologia_Class70050]
			[ontologia_Class80033]
			[ontologia_Class80030])
		(PVP 5.5)
		(Racion Abundante))

	([ontologia_Class22] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cebolla")
		(PVP 0.2))

	([ontologia_Class23] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimientos Choriceros")
		(PVP 0.9))

	([ontologia_Class24] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimenton de la Vera dulce")
		(PVP 0.5))

	([ontologia_Class25] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimenton de la Vera picante")
		(PVP 0.5))

	([ontologia_Class26] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zanahoria")
		(PVP 0.4))

	([ontologia_Class28] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class24]
			[ontologia_Class25]
			[ontologia_Class26]
			[ontologia_Class23]
			[ontologia_Class20]
			[ontologia_Class22]
			[ontologia_Class70000])
		(Nombre "Carne guisada")
		(Origen Espa%C3%B1a)
		(PVP 1.2)
		(Racion Normal))

	([ontologia_Class29] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lomo de salmon")
		(PVP 5.0))

	([ontologia_Class3] of  Frutos_secos

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nueces")
		(PVP 0.3))

	([ontologia_Class30] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento rojo")
		(PVP 0.6))

	([ontologia_Class30000] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema de cacao")
		(PVP 0.2))

	([ontologia_Class30001] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class30000]
			[ontologia_Class35]
			[ontologia_Class70078]
			[ontologia_Class70074])
		(Nombre "Crepes de Nutella")
		(PVP 0.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30002] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10001])
		(Nombre "Bol de Sandia")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30003] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Macarrones")
		(PVP 0.2))

	([ontologia_Class30004] of  Segundo

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30003]
			[ontologia_Class40005]
			[ontologia_Class20002]
			[ontologia_Class20008]
			[ontologia_Class40006])
		(Nombre "Macarrones gratinados con chorizo")
		(Origen Espa%C3%B1a)
		(Platos_Incompatibles
			[ontologia_Class20000]
			[ontologia_Class37]
			[ontologia_Class36]
			[ontologia_Class28]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025])
		(PVP 2.0)
		(Racion Abundante))

	([ontologia_Class30005] of  Postre

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class50]
			[ontologia_Class30008]
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class30009]
			[ontologia_Class54]
			[ontologia_Class10009]
			[ontologia_Class30007])
		(Nombre "Torrijas")
		(Origen Espa%C3%B1a)
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class37])
		(PVP 1.25)
		(Racion Abundante)
		(Vegetariano TRUE))

	([ontologia_Class30006] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan")
		(PVP 0.1))

	([ontologia_Class30007] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de girasol")
		(PVP 0.2))

	([ontologia_Class30008] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Agua")
		(PVP 0.1))

	([ontologia_Class30009] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coñac")
		(PVP 0.4))

	([ontologia_Class30010] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30012]
			[ontologia_Class30013]
			[ontologia_Class30014]
			[ontologia_Class15]
			[ontologia_Class30015]
			[ontologia_Class35]
			[ontologia_Class70078])
		(Nombre "Muffins salados de pavo con queso Cheedar")
		(Platos_Incompatibles
			[ontologia_Class20016]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class20007])
		(PVP 1.1)
		(Racion Peque%C3%B1a))

	([ontologia_Class30011] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Harina")
		(PVP 0.4))

	([ontologia_Class30012] of  Derivado

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Levadura")
		(PVP 0.2))

	([ontologia_Class30013] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso cheddar")
		(PVP 0.7))

	([ontologia_Class30014] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pavo")
		(PVP 0.5))

	([ontologia_Class30015] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Yogur natural")
		(PVP 0.25))

	([ontologia_Class30016] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30017]
			[ontologia_Class52]
			[ontologia_Class32]
			[ontologia_Class30015])
		(Nombre "Crema fría de kiwi")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class20016]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class10004]
			[ontologia_Class20007]
			[ontologia_Class36])
		(PVP 1.15)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30017] of  Fruta

		(Mes_Final_Temporada 9)
		(Mes_Inicio_Temporada 4)
		(Nombre "Kiwi")
		(PVP 1.0))

	([ontologia_Class30018] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Galleta")
		(PVP 0.1))

	([ontologia_Class30019] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cuajada")
		(PVP 0.8))

	([ontologia_Class30020] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate blanco")
		(PVP 0.2))

	([ontologia_Class30021] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate con leche")
		(PVP 0.2))

	([ontologia_Class30022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chocolate negro")
		(PVP 0.4))

	([ontologia_Class30023] of  Postre

		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class30018]
			[ontologia_Class44]
			[ontologia_Class50]
			[ontologia_Class30019]
			[ontologia_Class30008]
			[ontologia_Class30020]
			[ontologia_Class30021]
			[ontologia_Class30022]
			[ontologia_Class70074])
		(Nombre "Tarta de tres chocolates")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class20016]
			[ontologia_Class20009]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.4)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class30024] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jamon iberico")
		(PVP 3.0))

	([ontologia_Class30025] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class2]
			[ontologia_Class30006]
			[ontologia_Class20]
			[ontologia_Class15]
			[ontologia_Class30008]
			[ontologia_Class35]
			[ontologia_Class30024])
		(Nombre "Salmorejo cordoves")
		(PVP 17.0)
		(Racion Normal))

	([ontologia_Class30027] of  Fruta

		(Mes_Final_Temporada 10)
		(Mes_Inicio_Temporada 5)
		(Nombre "Aguacate")
		(PVP 0.4))

	([ontologia_Class30028] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Patata")
		(PVP 0.8))

	([ontologia_Class30029] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de verduras")
		(PVP 0.4))

	([ontologia_Class30030] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente FALSE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class30028]
			[ontologia_Class10005]
			[ontologia_Class30027]
			[ontologia_Class30031]
			[ontologia_Class10009]
			[ontologia_Class44]
			[ontologia_Class10011]
			[ontologia_Class41]
			[ontologia_Class30029]
			[ontologia_Class35])
		(Nombre "Vichyssoise de aguacate y langostinos")
		(PVP 5.0)
		(Racion Normal))

	([ontologia_Class30031] of  Marisco

		(Mes_Final_Temporada 6)
		(Mes_Inicio_Temporada 3)
		(Nombre "Langostinos")
		(PVP 4.0))

	([ontologia_Class30032] of  Verdura

		(Mes_Final_Temporada 11)
		(Mes_Inicio_Temporada 9)
		(Nombre "Setas variadas")
		(PVP 2.0))

	([ontologia_Class30033] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30032]
			[ontologia_Class30034]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class30008]
			[ontologia_Class10034]
			[ontologia_Class24]
			[ontologia_Class35]
			[ontologia_Class80011])
		(Nombre "Gazpacho de setas")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class28]
			[ontologia_Class30025]
			[ontologia_Class20006]
			[ontologia_Class0]
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class30034] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de ave")
		(PVP 0.3))

	([ontologia_Class30035] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinage de vino")
		(PVP 0.4))

	([ontologia_Class31] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa de soja")
		(PVP 0.6))

	([ontologia_Class32] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Miel")
		(PVP 0.8))

	([ontologia_Class33] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Jengibre fresco")
		(PVP 1.3))

	([ontologia_Class34] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceite de sesamo")
		(PVP 0.1))

	([ontologia_Class35] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Sal")
		(PVP 0.1))

	([ontologia_Class36] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class29]
			[ontologia_Class22]
			[ontologia_Class30]
			[ontologia_Class34]
			[ontologia_Class33]
			[ontologia_Class32]
			[ontologia_Class31]
			[ontologia_Class35])
		(Nombre "Salmon al horno")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class20016]
			[ontologia_Class17]
			[ontologia_Class20006]
			[ontologia_Class0])
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class37] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class38]
			[ontologia_Class20]
			[ontologia_Class32]
			[ontologia_Class40]
			[ontologia_Class35])
		(Nombre "Pollo al ajillo")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class20016])
		(PVP 2.0)
		(Racion Normal))

	([ontologia_Class38] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pollo de corral")
		(PVP 0.75))

	([ontologia_Class4] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso de cabra")
		(PVP 0.5))

	([ontologia_Class40] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class40000] of  Tinto

		(Nombre "Vina Albali Tinto Reserva")
		(PVP 2.99))

	([ontologia_Class40003] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Manzana")
		(PVP 0.55))

	([ontologia_Class40004] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class30017])
		(Nombre "Bol de Kiwis")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40005] of  Carne

		(Gluten FALSE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Chorizo")
		(PVP 0.2))

	([ontologia_Class40006] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso parmesano")
		(PVP 1.0))

	([ontologia_Class40007] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa rosa")
		(PVP 0.25))

	([ontologia_Class40008] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30027]
			[ontologia_Class10031]
			[ontologia_Class40007]
			[ontologia_Class22]
			[ontologia_Class1])
		(Nombre "Coctel de gambas")
		(Platos_Incompatibles
			[ontologia_Class40018]
			[ontologia_Class70050]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40009] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Judias")
		(PVP 0.8))

	([ontologia_Class40010] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class40009]
			[ontologia_Class40005]
			[ontologia_Class40012]
			[ontologia_Class40011]
			[ontologia_Class35])
		(Nombre "Judias con chorizo y panceta")
		(Origen Espa%C3%B1a)
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class40008]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 2.45)
		(Racion Normal)
		(Vegetariano FALSE))

	([ontologia_Class40011] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Panceta")
		(PVP 0.75))

	([ontologia_Class40012] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Morcilla")
		(PVP 0.9))

	([ontologia_Class40013] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class54]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class70078])
		(Nombre "Natillas caseras")
		(Platos_Incompatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 1.25)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40014] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class50]
			[ontologia_Class10009]
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class70054]
			[ontologia_Class70074])
		(Nombre "Arroz con leche casero")
		(Origen Espa%C3%B1a)
		(Platos_Incompatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 1.25)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class40015] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Guisantes")
		(PVP 0.4))

	([ontologia_Class40016] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Aceitunas verdes")
		(PVP 0.8))

	([ontologia_Class40017] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mayonesa")
		(PVP 0.5))

	([ontologia_Class40018] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class40016]
			[ontologia_Class40015]
			[ontologia_Class30028]
			[ontologia_Class26]
			[ontologia_Class40019])
		(Nombre "Ensaladilla rusa")
		(Platos_Incompatibles
			[ontologia_Class28]
			[ontologia_Class40008]
			[ontologia_Class17]
			[ontologia_Class30033]
			[ontologia_Class30025]
			[ontologia_Class20000]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 9.0)
		(Racion Normal))

	([ontologia_Class40019] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Atún en lata")
		(PVP 0.5))

	([ontologia_Class41] of  Grasas

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mantequilla")
		(PVP 0.5))

	([ontologia_Class42] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Esencia de vainilla")
		(PVP 0.5))

	([ontologia_Class43] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso philadelphia")
		(PVP 0.4))

	([ontologia_Class44] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Nata")
		(PVP 0.4))

	([ontologia_Class46] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class55]
			[ontologia_Class50]
			[ontologia_Class54]
			[ontologia_Class56])
		(Nombre "Flan de Huevo")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class20009]
			[ontologia_Class28]
			[ontologia_Class20005]
			[ontologia_Class37]
			[ontologia_Class36])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50] of  Derivado

		(Gluten FALSE)
		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche de vaca")
		(PVP 0.25))

	([ontologia_Class50000] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class44]
			[ontologia_Class35]
			[ontologia_Class10026]
			[ontologia_Class30032])
		(Nombre "Crema de hongos y setas al tomillo")
		(PVP 2.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50001] of  Tinto

		(Nombre "Marques del Cerro")
		(PVP 3.99))

	([ontologia_Class50002] of  Tinto

		(Nombre "Garnacha tintorera, Syrah y Monastrell")
		(PVP 5.25))

	([ontologia_Class50003] of  Tinto

		(Nombre "Fincas St Martin")
		(PVP 6.9))

	([ontologia_Class50004] of  Tinto

		(Nombre "Vina Izadi")
		(PVP 8.9))

	([ontologia_Class50005] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10002])
		(Nombre "Bol de Melon")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50006] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class32]
			[ontologia_Class30012]
			[ontologia_Class30008]
			[ontologia_Class30000]
			[ontologia_Class70078])
		(Nombre "Dorayakis caseros de chocolate")
		(Origen Japonesa)
		(PVP 0.4)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50007] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10032])
		(Nombre "Bol de Naranjas")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50008] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes [ontologia_Class10033])
		(Nombre "Bol de Pomelos")
		(PVP 0.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50009] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class10009]
			[ontologia_Class55]
			[ontologia_Class3]
			[ontologia_Class70074])
		(Nombre "Tarta de Santiago")
		(PVP 1.8)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50010] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class50]
			[ontologia_Class55]
			[ontologia_Class10009]
			[ontologia_Class54])
		(Nombre "Crema catalana")
		(Origen Espa%C3%B1a)
		(PVP 2.95)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class50011] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class4]
			[ontologia_Class20002]
			[ontologia_Class20014])
		(Nombre "Mini Hamburguesa rellena de queso Cabrales")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50012] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburguesa")
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50013] of  Segundo

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class41]
			[ontologia_Class10032]
			[ontologia_Class52]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class22]
			[ontologia_Class50014])
		(Nombre "Pato a la naranja")
		(PVP 14.0)
		(Racion Normal))

	([ontologia_Class50014] of  Carne

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pato")
		(PVP 1.5))

	([ontologia_Class50018] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevo")
		(PVP 0.5))

	([ontologia_Class50022] of  Primero

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class20014]
			[ontologia_Class30006])
		(Nombre "Hamburgesa")
		(Platos_Incompatibles
			[ontologia_Class20000]
			[ontologia_Class50012]
			[ontologia_Class50011])
		(PVP 1.0)
		(Racion Normal))

	([ontologia_Class50023] of  Primero

		(AptoCena TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class10031]
			[ontologia_Class30028]
			[ontologia_Class30]
			[ontologia_Class25]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class2]
			[ontologia_Class54])
		(Nombre "Leon come gambas")
		(PVP 80.0)
		(Racion Normal))

	([ontologia_Class50024] of  Primero

		(AptoCena FALSE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class10012]
			[ontologia_Class20002]
			[ontologia_Class35]
			[ontologia_Class20008]
			[ontologia_Class30014]
			[ontologia_Class38]
			[ontologia_Class70078])
		(Nombre "Pizza de Carne")
		(Platos_Incompatibles
			[ontologia_Class20009]
			[ontologia_Class20000]
			[ontologia_Class10004]
			[ontologia_Class70040]
			[ontologia_Class20005]
			[ontologia_Class50012]
			[ontologia_Class80028]
			[ontologia_Class40010]
			[ontologia_Class70057]
			[ontologia_Class37]
			[ontologia_Class70062])
		(PVP 7.75)
		(Racion Normal))

	([ontologia_Class52] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Azucar")
		(PVP 0.12))

	([ontologia_Class54] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vainilla")
		(PVP 0.8))

	([ontologia_Class55] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Canela")
		(PVP 0.6))

	([ontologia_Class56] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zumo de limon")
		(PVP 0.2))

	([ontologia_Class57] of  Bebida

		(Nombre "Agua")
		(PVP 0.0))

	([ontologia_Class58] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class59]
			[ontologia_Class60]
			[ontologia_Class44]
			[ontologia_Class43]
			[ontologia_Class54]
			[ontologia_Class70074])
		(Nombre "Tarta de queso")
		(Platos_Incompatibles
			[ontologia_Class20013]
			[ontologia_Class20009]
			[ontologia_Class28]
			[ontologia_Class10004]
			[ontologia_Class20016]
			[ontologia_Class37]
			[ontologia_Class20007]
			[ontologia_Class36]
			[ontologia_Class20006]
			[ontologia_Class0])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class59] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gelatina en polvo")
		(PVP 0.2))

	([ontologia_Class60] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mermelada de fresa")
		(PVP 0.7))

	([ontologia_Class60000] of  Primero

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30006]
			[ontologia_Class50018]
			[ontologia_Class50]
			[ontologia_Class35]
			[ontologia_Class15])
		(Nombre "Cascarrollas del rio")
		(Platos_Incompatibles
			[ontologia_Class50012]
			[ontologia_Class50011])
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class60001] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de pollo")
		(PVP 1.2))

	([ontologia_Class60002] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class15]
			[ontologia_Class60003]
			[ontologia_Class70005]
			[ontologia_Class20]
			[ontologia_Class70008]
			[ontologia_Class20002]
			[ontologia_Class70006]
			[ontologia_Class70007])
		(Nombre "Crema de coliflor con gambones y piñones al aroma de trufa")
		(Platos_Incompatibles
			[ontologia_Class70050]
			[ontologia_Class80033])
		(PVP 3.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class60003] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coliflor")
		(PVP 0.51))

	([ontologia_Class60005] of  Tinto

		(Nombre "Cathar Roble Ribera del Duero")
		(PVP 9.0))

	([ontologia_Class60006] of  Tinto

		(Nombre "Vina Alberdi Tinto Crianza")
		(PVP 11.9))

	([ontologia_Class60007] of  Tinto

		(Nombre "Vina Real Cuvee Especial Reserva")
		(PVP 15.0))

	([ontologia_Class60008] of  Tinto

		(Nombre "Baron de Ley")
		(PVP 18.25))

	([ontologia_Class60009] of  Blanco

		(Nombre "Pluvium")
		(PVP 1.35))

	([ontologia_Class60010] of  Blanco

		(Nombre "Castelo de Rueda")
		(PVP 4.76))

	([ontologia_Class60011] of  Blanco

		(Nombre "Montespina Sauvignon")
		(PVP 5.0))

	([ontologia_Class60012] of  Blanco

		(Nombre "Pilas Bonas")
		(PVP 6.25))

	([ontologia_Class60013] of  Blanco

		(Nombre "Condes de Albarei Albarino")
		(PVP 8.2))

	([ontologia_Class60014] of  Blanco

		(Nombre "Naia")
		(PVP 9.4))

	([ontologia_Class60015] of  Blanco

		(Nombre "Dominio de Tares, Cepas Viejas")
		(PVP 12.95))

	([ontologia_Class60016] of  Blanco

		(Nombre "Vina Godeval")
		(PVP 14.5))

	([ontologia_Class60017] of  Blanco

		(Nombre "Abadia Retuerta Seleccion Especial")
		(PVP 18.9))

	([ontologia_Class60018] of  Cava

		(Nombre "Rene Barbier Petillan")
		(PVP 2.2))

	([ontologia_Class60019] of  Cava

		(Nombre "Mas Fontallada Brut Nature")
		(PVP 4.25))

	([ontologia_Class60020] of  Cava

		(Nombre "Alberte Ribeiro")
		(PVP 5.6))

	([ontologia_Class60021] of  Cava

		(Nombre "Peralada Brut Reserva")
		(PVP 6.29))

	([ontologia_Class60022] of  Cava

		(Nombre "Anna Codorniu Brut Nature")
		(PVP 8.0))

	([ontologia_Class60023] of  Cava

		(Nombre "Babel")
		(PVP 9.0))

	([ontologia_Class60024] of  Cava

		(Nombre "Conde de Haro")
		(PVP 12.0))

	([ontologia_Class60025] of  Cava

		(Nombre "Cuvee Maria del Mar Gran Reserva")
		(PVP 15.0))

	([ontologia_Class60026] of  Cava

		(Nombre "Gramona Imperial")
		(PVP 18.0))

	([ontologia_Class60027] of  Bebida

		(Nombre "Refresco")
		(PVP 0.8))

	([ontologia_Class60028] of  Bebida

		(Nombre "Cerveza")
		(PVP 1.2))

	([ontologia_Class70000] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne de ternera")
		(PVP 0.2))

	([ontologia_Class70001] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cordero")
		(PVP 7.2))

	([ontologia_Class70005] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Trufa")
		(PVP 4.5))

	([ontologia_Class70006] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pinones")
		(PVP 0.4))

	([ontologia_Class70007] of  Marisco

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gambones")
		(PVP 4.5))

	([ontologia_Class70008] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Caldo de ave")
		(PVP 1.2))

	([ontologia_Class70010] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70012]
			[ontologia_Class70011]
			[ontologia_Class20]
			[ontologia_Class35]
			[ontologia_Class56]
			[ontologia_Class15]
			[ontologia_Class70013])
		(Nombre "Humus de garbanzos")
		(PVP 13.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70011] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Garbanzos")
		(PVP 0.62))

	([ontologia_Class70012] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Comino")
		(PVP 0.71))

	([ontologia_Class70013] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Huevos de codorniz")
		(PVP 2.3))

	([ontologia_Class70014] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30015]
			[ontologia_Class35]
			[ontologia_Class15]
			[ontologia_Class70016]
			[ontologia_Class70015])
		(Nombre "Crema de pepino y yogur")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70015] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pepino")
		(PVP 0.23))

	([ontologia_Class70016] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Hoja de menta")
		(PVP 0.1))

	([ontologia_Class70017] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class70018]
			[ontologia_Class40]
			[ontologia_Class35]
			[ontologia_Class70019]
			[ontologia_Class70020]
			[ontologia_Class43])
		(Nombre "Crema fria de remolacha")
		(PVP 1.2)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70018] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Remolacha")
		(PVP 0.2))

	([ontologia_Class70019] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Zumo de tomate")
		(PVP 0.65))

	([ontologia_Class70020] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Apio")
		(PVP 0.1))

	([ontologia_Class70021] of  Marisco

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Bogavante")
		(PVP 9.5))

	([ontologia_Class70022] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70021]
			[ontologia_Class10031]
			[ontologia_Class30035]
			[ontologia_Class15]
			[ontologia_Class34]
			[ontologia_Class1])
		(Nombre "Ensalada de bogavante")
		(Platos_Incompatibles
			[ontologia_Class70050]
			[ontologia_Class40018])
		(PVP 7.9)
		(Racion Normal))

	([ontologia_Class70024] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Espinacas")
		(PVP 0.45))

	([ontologia_Class70025] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Trompetas de la muerte")
		(PVP 1.75))

	([ontologia_Class70026] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perrechicos")
		(PVP 1.65))

	([ontologia_Class70028] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class70011]
			[ontologia_Class70026]
			[ontologia_Class30032]
			[ontologia_Class70025]
			[ontologia_Class30029]
			[ontologia_Class22]
			[ontologia_Class20]
			[ontologia_Class20011]
			[ontologia_Class24]
			[ontologia_Class35]
			[ontologia_Class10026])
		(Nombre "Garbanzos con setas variadas")
		(PVP 6.75)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70029] of  Primero

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class70030]
			[ontologia_Class70032]
			[ontologia_Class40005]
			[ontologia_Class70031]
			[ontologia_Class70034]
			[ontologia_Class70035]
			[ontologia_Class40012]
			[ontologia_Class70033]
			[ontologia_Class70036]
			[ontologia_Class30028]
			[ontologia_Class20])
		(Nombre "Cocido Montanes")
		(Platos_Incompatibles
			[ontologia_Class20009]
			[ontologia_Class10004]
			[ontologia_Class70040]
			[ontologia_Class20005]
			[ontologia_Class50012]
			[ontologia_Class40010]
			[ontologia_Class30004]
			[ontologia_Class70057]
			[ontologia_Class50013]
			[ontologia_Class37]
			[ontologia_Class70062])
		(PVP 7.2)
		(Racion Normal))

	([ontologia_Class70030] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Alubias blancas")
		(PVP 0.65))

	([ontologia_Class70031] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Costilla adobada de cerdo")
		(PVP 4.3))

	([ontologia_Class70032] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carne de cerdo")
		(PVP 1.65))

	([ontologia_Class70033] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Oreja de cerdo")
		(PVP 3.6))

	([ontologia_Class70034] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Lonchas gordas de panceta")
		(PVP 1.25))

	([ontologia_Class70035] of  Carne

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Manitas de cerdo")
		(PVP 2.56))

	([ontologia_Class70036] of  Verdura

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Col")
		(PVP 0.25))

	([ontologia_Class70037] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Carrilleras de cerdo")
		(PVP 11.2))

	([ontologia_Class70038] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vino tinto")
		(PVP 5.2))

	([ontologia_Class70039] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pimiento choricero")
		(PVP 0.56))

	([ontologia_Class70040] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class70037]
			[ontologia_Class22]
			[ontologia_Class10020]
			[ontologia_Class26]
			[ontologia_Class20]
			[ontologia_Class60001]
			[ontologia_Class20011]
			[ontologia_Class70039]
			[ontologia_Class35]
			[ontologia_Class10026]
			[ontologia_Class70038])
		(Nombre "Carrilleras de cerdo guisadas")
		(PVP 2.85)
		(Racion Normal))

	([ontologia_Class70041] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70042]
			[ontologia_Class70047]
			[ontologia_Class70045]
			[ontologia_Class35]
			[ontologia_Class30008]
			[ontologia_Class70043]
			[ontologia_Class70048]
			[ontologia_Class52])
		(Nombre "Sushi de buey de mar con gildasbuew")
		(PVP 6.5)
		(Racion Normal))

	([ontologia_Class70042] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Buey de mar")
		(PVP 12.35))

	([ontologia_Class70043] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vinagre de arroz")
		(PVP 0.95))

	([ontologia_Class70045] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Algas nori")
		(PVP 1.25))

	([ontologia_Class70047] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gildas")
		(PVP 4.25))

	([ontologia_Class70048] of  Cereal

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz de sushi")
		(PVP 2.5))

	([ontologia_Class70049] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Navajas")
		(PVP 17.8))

	([ontologia_Class70050] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70049]
			[ontologia_Class20]
			[ontologia_Class40]
			[ontologia_Class56]
			[ontologia_Class15])
		(Nombre "Navajas a la plancha")
		(PVP 5.0)
		(Racion Normal))

	([ontologia_Class70051] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class22]
			[ontologia_Class70024]
			[ontologia_Class30008]
			[ontologia_Class35]
			[ontologia_Class70054])
		(Nombre "Risotto de espinacas")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70052] of  Marisco

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cigalas")
		(PVP 14.6))

	([ontologia_Class70053] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70052]
			[ontologia_Class22]
			[ontologia_Class70054]
			[ontologia_Class10005]
			[ontologia_Class70055]
			[ontologia_Class20])
		(Nombre "Rissoto de cigalas")
		(PVP 3.5)
		(Racion Normal))

	([ontologia_Class70054] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Arroz sin gluten")
		(PVP 0.8))

	([ontologia_Class70055] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Perejil")
		(PVP 0.1))

	([ontologia_Class70056] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Fume de pesacdo")
		(PVP 3.45))

	([ontologia_Class70057] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70058]
			[ontologia_Class35]
			[ontologia_Class70059])
		(Nombre "Paletilla de cordero lechal macerada en Salsa Teriyaki")
		(PVP 3.0)
		(Racion Normal))

	([ontologia_Class70058] of  Carne

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Paletilla de lechal")
		(PVP 8.5))

	([ontologia_Class70059] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa teriyaki")
		(PVP 2.7))

	([ontologia_Class70061] of  Cereal

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Espaguetis")
		(PVP 2.3))

	([ontologia_Class70062] of  Segundo

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class20]
			[ontologia_Class60001]
			[ontologia_Class10010]
			[ontologia_Class35]
			[ontologia_Class20010]
			[ontologia_Class50018]
			[ontologia_Class22]
			[ontologia_Class10005]
			[ontologia_Class38]
			[ontologia_Class70063])
		(Nombre "Pollo en pepitoria")
		(PVP 2.7)
		(Racion Normal))

	([ontologia_Class70063] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Almendras")
		(PVP 0.4))

	([ontologia_Class70064] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class20003]
			[ontologia_Class30017]
			[ontologia_Class70067]
			[ontologia_Class40003]
			[ontologia_Class70065]
			[ontologia_Class70068]
			[ontologia_Class70066])
		(Nombre "Macedonia de frutas con zumo de mango")
		(PVP 0.9)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70065] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Melocoton")
		(PVP 0.7))

	([ontologia_Class70066] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Platano")
		(PVP 1.1))

	([ontologia_Class70067] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mango")
		(PVP 1.1))

	([ontologia_Class70068] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pera")
		(PVP 0.5))

	([ontologia_Class70069] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class30022]
			[ontologia_Class50]
			[ontologia_Class50018]
			[ontologia_Class52]
			[ontologia_Class70066]
			[ontologia_Class60])
		(Nombre "Mousse de chocolate con Platano y mermelada de frutos rojos")
		(PVP 1.2)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70070] of  Derivado

		(Gluten FALSE)
		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Queso mascarpone")
		(PVP 1.2))

	([ontologia_Class70071] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class50018]
			[ontologia_Class70070]
			[ontologia_Class70072]
			[ontologia_Class50]
			[ontologia_Class52])
		(Nombre "Flan de queso mascarpone")
		(PVP 2.3)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70072] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Leche condensada")
		(PVP 0.25))

	([ontologia_Class70073] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70074]
			[ontologia_Class70075]
			[ontologia_Class30008]
			[ontologia_Class52]
			[ontologia_Class70079]
			[ontologia_Class70077]
			[ontologia_Class70080]
			[ontologia_Class70076]
			[ontologia_Class70081]
			[ontologia_Class10032]
			[ontologia_Class70078]
			[ontologia_Class50018]
			[ontologia_Class35]
			[ontologia_Class3])
		(Nombre "Pastel Gales")
		(PVP 4.75)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70074] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Mantequilla sin gluten")
		(PVP 0.7))

	([ontologia_Class70075] of  Fruta

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Uva")
		(PVP 1.2))

	([ontologia_Class70076] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Ron")
		(PVP 1.3))

	([ontologia_Class70077] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cafe soluble")
		(PVP 0.4))

	([ontologia_Class70078] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Harina sin gluten")
		(PVP 0.8))

	([ontologia_Class70079] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Bicarbonato de sodio")
		(PVP 0.75))

	([ontologia_Class70080] of  Condimento

		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Especias para pastel")
		(PVP 0.9))

	([ontologia_Class70081] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Frutas desecadas")
		(PVP 2.56))

	([ontologia_Class70084] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class30020]
			[ontologia_Class50018]
			[ontologia_Class54]
			[ontologia_Class70070]
			[ontologia_Class10016]
			[ontologia_Class70063]
			[ontologia_Class70086]
			[ontologia_Class70085])
		(Nombre "Tarta Mont Blanc")
		(PVP 3.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70085] of  Frutos_secos

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Castanas")
		(PVP 1.4))

	([ontologia_Class70086] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema de leche")
		(PVP 1.1))

	([ontologia_Class70087] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class52]
			[ontologia_Class30020]
			[ontologia_Class70089]
			[ontologia_Class56]
			[ontologia_Class50018]
			[ontologia_Class70090]
			[ontologia_Class70092]
			[ontologia_Class70091]
			[ontologia_Class70078]
			[ontologia_Class10009]
			[ontologia_Class70074])
		(Nombre "Sablee de Cardamomo, Crema Limon e interior de Yogur y Chocolate Blanco")
		(PVP 2.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70089] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Gelatina")
		(PVP 1.2))

	([ontologia_Class70090] of  Derivado

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Yogur griego")
		(PVP 1.3))

	([ontologia_Class70091] of  Verdura

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Vainas de cardomomo")
		(PVP 1.1))

	([ontologia_Class70092] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Cremor tartaro")
		(PVP 2.5))

	([ontologia_Class70093] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70095]
			[ontologia_Class70094]
			[ontologia_Class70096]
			[ontologia_Class20003])
		(Nombre "Stilt Fisherman Indulgence")
		(PVP 5.6)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70094] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Crema irlandesa")
		(PVP 2.3))

	([ontologia_Class70095] of  Cereal

		(Gluten TRUE)
		(Mes_Final_Temporada 1)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan de oro")
		(PVP 3.1))

	([ontologia_Class70096] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Salsa de champapana")
		(PVP 5.3))

	([ontologia_Class70097] of  Postre

		(Bebida_Menu [ontologia_Class57])
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class70074]
			[ontologia_Class30021]
			[ontologia_Class70098])
		(Nombre "Macarons Haute Couture")
		(PVP 6.7)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class70098] of  Grasas

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Merengue")
		(PVP 1.2))

	([ontologia_Class80001] of  Primero

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class44]
			[ontologia_Class30011]
			[ontologia_Class50018]
			[ontologia_Class52]
			[ontologia_Class30012]
			[ontologia_Class43])
		(Nombre "Panecillos de nata")
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80002] of  Primero

		(AptoCena TRUE)
		(AptoNinos FALSE)
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class80003]
			[ontologia_Class22]
			[ontologia_Class2]
			[ontologia_Class15]
			[ontologia_Class20]
			[ontologia_Class10009]
			[ontologia_Class40016]
			[ontologia_Class30006]
			[ontologia_Class35]
			[ontologia_Class10010])
		(Nombre "Berenjenas al Horno")
		(Origen Italiana)
		(Platos_Incompatibles [ontologia_Class80032])
		(PVP 8.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80003] of  Verdura

		(Mes_Final_Temporada 4)
		(Mes_Inicio_Temporada 10)
		(Nombre "Berenjena")
		(PVP 0.2))

	([ontologia_Class80004] of  Postre

		(AptoCena TRUE)
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class32]
			[ontologia_Class52]
			[ontologia_Class80005]
			[ontologia_Class30009])
		(Nombre "Cerezas rostisadas")
		(PVP 12.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80005] of  Fruta

		(Mes_Final_Temporada 8)
		(Mes_Inicio_Temporada 5)
		(Nombre "Cereza")
		(PVP 1.1))

	([ontologia_Class80006] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Ingredientes
			[ontologia_Class70066]
			[ontologia_Class80007])
		(Nombre "Helado de platano")
		(PVP 3.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80007] of  Derivado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Dulce de leche")
		(PVP 0.3))

	([ontologia_Class80008] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class80009]
			[ontologia_Class80010]
			[ontologia_Class41]
			[ontologia_Class30011]
			[ontologia_Class52]
			[ontologia_Class50018]
			[ontologia_Class50])
		(Nombre "Pastel de coco con guayaba")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80009] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Coco")
		(PVP 2.0))

	([ontologia_Class80010] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Guayaba")
		(PVP 3.0))

	([ontologia_Class80011] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Pan sin gluten")
		(PVP 0.1))

	([ontologia_Class80012] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Masa fresca sin gluten")
		(PVP 1.2))

	([ontologia_Class80013] of  Postre

		(AptoCena TRUE)
		(Caliente TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class41]
			[ontologia_Class70038]
			[ontologia_Class30007]
			[ontologia_Class70094])
		(Nombre "Cannoli")
		(Origen Italiana)
		(PVP 2.5)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80014] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class30011]
			[ontologia_Class52]
			[ontologia_Class50018]
			[ontologia_Class42])
		(Nombre "Macarons")
		(PVP 20.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80015] of  Primero

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30028]
			[ontologia_Class10011]
			[ontologia_Class44])
		(Nombre "Patatas campesinas")
		(Platos_Incompatibles
			[ontologia_Class80027]
			[ontologia_Class20005]
			[ontologia_Class40018]
			[ontologia_Class80028]
			[ontologia_Class80035])
		(PVP 6.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80016] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10002]
			[ontologia_Class70065]
			[ontologia_Class10016]
			[ontologia_Class56]
			[ontologia_Class52]
			[ontologia_Class30008])
		(Nombre "Copa de melon y melocoton")
		(PVP 1.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80017] of  Postre

		(AptoCena TRUE)
		(Caliente FALSE)
		(Ingredientes
			[ontologia_Class54]
			[ontologia_Class50018]
			[ontologia_Class52]
			[ontologia_Class41])
		(Nombre "Martin di-frazcco")
		(PVP 7.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80018] of  Primero

		(AptoCena TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class80019]
			[ontologia_Class80020])
		(Nombre "Caviar vegetal y kaki")
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80019] of  Pescado

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Falsas huevas de salmon")
		(PVP 10.0))

	([ontologia_Class80020] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Kaki")
		(PVP 3.0))

	([ontologia_Class80021] of  Primero

		(AptoCena TRUE)
		(Caliente TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class50018]
			[ontologia_Class80023]
			[ontologia_Class80022])
		(Nombre "Huevo a 65º, maiz y trufa negra")
		(PVP 16.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80022] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Trufa negra")
		(PVP 10.0))

	([ontologia_Class80023] of  Cereal

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Maiz")
		(PVP 0.5))

	([ontologia_Class80024] of  Postre

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Ingredientes
			[ontologia_Class70078]
			[ontologia_Class30012]
			[ontologia_Class35]
			[ontologia_Class10017]
			[ontologia_Class52]
			[ontologia_Class55])
		(Nombre "Tarta de calabaza")
		(PVP 6.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80026] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class10027]
			[ontologia_Class15]
			[ontologia_Class22]
			[ontologia_Class26]
			[ontologia_Class10020]
			[ontologia_Class50018]
			[ontologia_Class34])
		(Nombre "Arroz chino frito")
		(Origen China)
		(PVP 0.1)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80027] of  Segundo

		(AptoCena TRUE)
		(AptoNinos FALSE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class15]
			[ontologia_Class10019]
			[ontologia_Class22]
			[ontologia_Class20]
			[ontologia_Class10030]
			[ontologia_Class30029]
			[ontologia_Class30015])
		(Nombre "Boniato con lentejas al curry")
		(PVP 2.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80028] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class30028]
			[ontologia_Class30013]
			[ontologia_Class4]
			[ontologia_Class40006]
			[ontologia_Class70070])
		(Nombre "Horneado de patatas a los cuatro quesos")
		(PVP 3.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80029] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Clasico)
		(Ingredientes
			[ontologia_Class15]
			[ontologia_Class22]
			[ontologia_Class70078]
			[ontologia_Class50]
			[ontologia_Class41]
			[ontologia_Class10017]
			[ontologia_Class10023]
			[ontologia_Class30]
			[ontologia_Class40006]
			[ontologia_Class40]
			[ontologia_Class3])
		(Nombre "Gratinado de verduras")
		(PVP 5.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80030] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Caliente TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class10003]
			[ontologia_Class2]
			[ontologia_Class80031])
		(Nombre "Tallarines de calabacin con cubierta de tomate funghi")
		(PVP 13.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80031] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Champinon")
		(PVP 1.0))

	([ontologia_Class80032] of  Segundo

		(AptoCena TRUE)
		(AptoNinos TRUE)
		(Estilo Tradicional)
		(Ingredientes
			[ontologia_Class10003]
			[ontologia_Class80003]
			[ontologia_Class2]
			[ontologia_Class40]
			[ontologia_Class4])
		(Nombre "Calabazitas a la italiana")
		(Origen Italiana)
		(PVP 16.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80033] of  Segundo

		(AptoCena TRUE)
		(Estilo Moderno)
		(Ingredientes
			[ontologia_Class60003]
			[ontologia_Class20]
			[ontologia_Class56]
			[ontologia_Class15]
			[ontologia_Class35]
			[ontologia_Class10010]
			[ontologia_Class70015]
			[ontologia_Class40]
			[ontologia_Class80034]
			[ontologia_Class10011])
		(Nombre "Tabule de coliflor")
		(PVP 20.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80034] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Menta")
		(PVP 0.4))

	([ontologia_Class80035] of  Segundo

		(AptoCena TRUE)
		(Caliente TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class30028]
			[ontologia_Class40009]
			[ontologia_Class26]
			[ontologia_Class70025]
			[ontologia_Class40015]
			[ontologia_Class20]
			[ontologia_Class15]
			[ontologia_Class35])
		(Nombre "La menestra en la patata")
		(PVP 21.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80036] of  Segundo

		(AptoCena TRUE)
		(Caliente TRUE)
		(Estilo Sibarita)
		(Ingredientes
			[ontologia_Class80037]
			[ontologia_Class80038]
			[ontologia_Class80039]
			[ontologia_Class10010]
			[ontologia_Class24]
			[ontologia_Class35])
		(Nombre "Curry de piña con raita de remolacha")
		(PVP 25.0)
		(Racion Normal)
		(Vegetariano TRUE))

	([ontologia_Class80037] of  Fruta

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Piña")
		(PVP 1.0))

	([ontologia_Class80038] of  Condimento

		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Curry")
		(PVP 0.5))

	([ontologia_Class80039] of  Condimento

		(Lactosa TRUE)
		(Mes_Final_Temporada 12)
		(Mes_Inicio_Temporada 1)
		(Nombre "Raita")
		(PVP 3.0))
)


;                   ======================================================================
;                   ======================  Declaracion de modulos =======================
;                   ======================================================================

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule abstraccion
    (import MAIN ?ALL)
    (import recopilacion ?ALL)
    (export ?ALL)
)

(defmodule solucionAbstracta
	 (import MAIN ?ALL)
	 (import recopilacion ?ALL)
	 (import abstraccion ?ALL)
	 (export ?ALL)
)

(defmodule solucionConcreta
	 	(import MAIN ?ALL)
	 	(import recopilacion ?ALL)
	 	(import abstraccion ?ALL)
		(import solucionAbstracta ?ALL)
		(export ?ALL)
)

;                   ======================================================================
;                   =====================  Declaracion de templates ======================
;                   ======================================================================

(deftemplate MAIN::Entrada
	(slot numComensales (type INTEGER) (default -1))
	(slot presupuestoMax (type INTEGER) (default -1))
	(slot tipoEvento (type SYMBOL) (allowed-values Boda Comunion Bautizo Congreso UNDEF) (default UNDEF))
	(slot bebidaPorPlato (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot mesEvento (type INTEGER) (default -1))
	(slot vino (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE)) ;;;nuevo
	(slot alcohol (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF)) ;;;nuevo
	(slot numComensalesVino (type FLOAT) (default 0.0)) ;;;nuevo
	(slot ninos (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF)) ;;;nuevo
	(slot numComensalesNinos (type INTEGER) (default 0));;; nuevo
	(slot comida (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot estilo (type SYMBOL) (allowed-values Sibarita Moderno Clasico Tradicional UNDEF) (default UNDEF))
	(slot vegetariano (type SYMBOL) (allowed-values FALSE TRUE UNDEF) (default UNDEF))
	(slot numAlergicosGluten (type INTEGER) (default 0))
	(slot numAlergicosLactosa (type INTEGER) (default 0))
	(slot numVegetarianos (type INTEGER) (default 0))
	(slot numGenteNormal (type INTEGER) (default 0))
)

(deftemplate MAIN::ProblemaAbstracto
    ; Presupuesto(bajo, medio, alto, muy alto) => ([10,20),[20,40),[40,80),>80)
    ; NumComensales(bajo, medio, alto, muy alto) => ([20,30),[30,50),[50,100),[100, 500))
    ; Complejidad(facil, normal, alto) => ([tradicional,sibarita], clasico, moderno)
    ; Temporada(invierno, primavera, verano, otoño) => [12-3] [4-5] [6-9] [10-11]
    (slot presupuesto (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto UNDEF) (default UNDEF))
    (slot numComensales (type SYMBOL) (allowed-values Bajo Medio Alto MuyAlto UNDEF) (default UNDEF))
    (slot complejidad (type SYMBOL) (allowed-values Facil Normal Alto UNDEF) (default UNDEF))
    (slot temporada (type SYMBOL) (allowed-values Invierno Primavera Verano Otono UNDEF) (default UNDEF))
)

;                   ======================================================================
;                   =====================   Declaracion de clases   ======================
;                   ======================================================================

(defclass VinoAbstracto (is-a USER) (role concrete)
	(slot Vino (type INSTANCE) (create-accessor read-write))
	(slot Nombre (type STRING) (create-accessor read-write))
	(slot PVP (type FLOAT) (create-accessor read-write))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
)

(defclass MenuAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Menu (type INSTANCE) (create-accessor read-write))
)

(defclass PlatoAbstracto (is-a USER) (role concrete)
	(slot Precio (type FLOAT) (create-accessor read-write) (default 0.0))
	(slot Categoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot SubCategoria (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Puntuacion (type INTEGER) (create-accessor read-write) (default 0))
	(slot Complejidad (type SYMBOL) (allowed-values Bajo Medio Alto) (create-accessor read-write))
	(slot Plato (type INSTANCE) (create-accessor read-write))
	(multislot Alergias (type STRING) (create-accessor read-write))
	(multislot DescripcionPuntos (type STRING) (create-accessor read-write))
)

;                   ======================================================================
;                   =================   Declaracion de handler DBEUG   ===================
;                   ======================================================================

(defmessage-handler MAIN::PlatoAbstracto imprimir-debug ()
	(printout t "------------------- Informacion del plato  ----------------" crlf)

	(printout t "Puntuacion   : " ?self:Puntuacion crlf)
	(printout t "Puntuaciones : " crlf)
	(loop-for-count (?i 1 (length$ ?self:DescripcionPuntos)) do
			(bind ?descripcion (nth$ ?i ?self:DescripcionPuntos))
			(printout t ?descripcion crlf)
	)
	(bind ?plato ?self:Plato)
	;(printout t "Nombre Plato: " (send ?plato get-Nombre) crlf)
	(send ?plato imprimir-debug)
	;(printout t "Precio       : " ?self:Precio crlf)
	;(printout t "Categoria    : " ?self:Categoria crlf)
	;(printout t "Sub-Categoria: " ?self:SubCategoria crlf)
	;(printout t "Complejidad  : " ?self:Complejidad crlf)
)

(defmessage-handler MAIN::MenuAbstracto imprimir-debug ()
	(printout t "------------------- Informacion del Menu  ----------------" crlf)
	(bind ?menu ?self:Menu)
	(send ?menu imprimir)
	(printout t "Precio       : " ?self:Precio crlf)
)

(defmessage-handler MAIN::Ingrediente imprimir-debug ()
	;(format t "%s - %n" ?self:Nombre)
	(bind ?lactosa ?self:Lactosa)
	(bind ?gluten ?self:Gluten)
	(if (eq ?lactosa TRUE)
		then (format t "%t Lactosa: Si %n")
		else (format t "%t Lactosa: No %n")
	)
	(if (eq ?gluten TRUE)
		then (format t "%t Gluten: Si %n")
		else (format t "%t Gluten: No %n")
	)
	;(format t "%t Temporada Inicio: %d %n" ?self:Mes_Inicio_Temporada)
	;(format t "%t Temporada Final: %d %n" ?self:Mes_Final_Temporada)
)

(defmessage-handler MAIN::Plato imprimir-debug ()
	(printout t "Nombre  : " ?self:Nombre crlf)
	;(printout t crlf)
	;(bind ?vegetariano ?self:Vegetariano)
	;(if (eq ?vegetariano TRUE)
	;	then (format t "%t Es un plato vegetariano? Si %n")
	;	else (format t "%t Es un plato vegetariano? No %n")
	;)

	;(bind ?caliente ?self:Caliente)
	;(if (eq ?caliente TRUE)
	;	then (format t "%t Es un plato caliente? Si %n")
	;	else (format t "%t Es un plato caliente? No %n")
	;)

	;(printout t "Ingredientes del plato: ")
	;(bind $?listaIngredientes ?self:Ingredientes)
	;(format t "(" )
	;(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
	;	(bind ?ingrediente (nth$ ?i ?listaIngredientes))
	;	(send ?ingrediente imprimir-debug)
	;)
	;(printout t ")" crlf)
	(printout t crlf)
	(printout t crlf)
)

;                   ======================================================================
;                   ====================   Declaracion de handler   ======================
;                   ======================================================================



;                   ======================================================================
;                   ====================   Handler PlatoAbstracto   ======================
;                   ======================================================================

(defmessage-handler MAIN::PlatoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria dado dos parametros:
                                                                        Bajo  -> [0...precioMedio)
                                                                        Medio -> [precioMedio...precioAlto)
                                                                        Alto  -> [precioAlto...Inf)" (?precioMedio ?precioAlto)
	(bind ?precioPlato ?self:Precio)

    (if (eq (class ?self:Plato) Postre)
        then (if (< ?precioPlato ?precioMedio)
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
        else (if (< ?precioPlato ?precioMedio)
            then (send ?self put-SubCategoria Bajo)
            else (if (and (>= ?precioPlato ?precioMedio) (< ?precioPlato ?precioAlto))
                then (send ?self put-SubCategoria Medio)
                else (send ?self put-SubCategoria Alto)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-categoria "Handler que calcula la categoria" ()
    (bind ?plato ?self:Plato)
    (bind ?precioPlato (send ?plato calcula-precio))

    (send ?self put-Precio ?precioPlato)
    (if (eq (class ?plato) Postre)
        then (if (< ?precioPlato 4)
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 1.6 3.0)
            else (if (and (>= ?precioPlato 4) (< ?precioPlato 8))
                then (send ?self put-Categoria Medio)
                     (send ?self calcula-sub-categoria 4.5 6.75)
                else (send ?self put-Categoria Alto)
                     (send ?self calcula-sub-categoria 9.0 12.0)
            )
        )
        else (if (< ?precioPlato 10)
            then (send ?self put-Categoria Bajo)
                 (send ?self calcula-sub-categoria 3.0 6.0)
            else (if (and (>= ?precioPlato 10) (< ?precioPlato 20))
                then (send ?self put-Categoria Medio)
                     (send ?self calcula-sub-categoria 13.0 16.0)
                else (send ?self put-Categoria Alto)
                     (send ?self calcula-sub-categoria 23.0 26.0)
            )
        )
    )
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-presupuesto "" (?presupuesto)
	(bind ?puntos 0)
	(bind ?descripcion "N/A")
	(if (eq ?presupuesto Bajo)
			then (if (eq ?self:Categoria Bajo)
					then (bind ?puntos 2) (bind ?descripcion "Presupuesto Bajo y Categoria Baja")
					else (if (eq ?self:Categoria Medio)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Bajo y Categoria Media")
					)
			)
			else (if (eq ?presupuesto Medio)
					then (if (eq ?self:Categoria Medio)
							then (bind ?puntos 2) (bind ?descripcion "Presupuesto Medio y Categoria Media")
							else (if (eq ?self:Categoria Bajo)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Medio y Categoria Baja")
							)
					)
					else (if (eq ?presupuesto Alto)
							then (if (eq ?self:Categoria Medio)
									then (bind ?puntos 1) (bind ?descripcion "Presupuesto Alto y Categoria Medio")
									else (if (eq ?self:Categoria Alto)
											then (bind ?puntos 2) (bind ?descripcion "Presupuesto Alto y Categoria Alta")
									)
							)
							else (if (eq ?self:Categoria Alto)
									then (bind ?puntos 3) (bind ?descripcion "Presupuesto Muy Alto y Categoria Alta")
									else (if (eq ?self:Categoria Medio)
											then (bind ?puntos 1) (bind ?descripcion "Presupuesto Muy Alto y Categoria Media")
									)
							)
					)
			)
	)

	(send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-estilo "" (?estilo)
	(if (eq ?estilo (send ?self:Plato get-Estilo))
		then (send ?self put-Puntuacion (+ 1 (send ?self get-Puntuacion)))
	)
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-complejidad "" (?numComensales)
	(bind ?puntos 0)
	(bind ?descripcion "N/A")
	(if (eq ?numComensales Medio)
			then (if (eq ?self:Complejidad Medio)
					then (bind ?puntos 2) (bind ?descripcion "Num comensales Medio y Complejidad del plato Medio")
					else (if (eq ?self:Complejidad Bajo)
									then (bind ?puntos 1) (bind ?descripcion "Num comensales Medio y Complejidad del plato Bajo")
					)
			)
			else (if (eq ?numComensales Alto)
					then (if (eq ?self:Complejidad Bajo)
							then (bind ?puntos 2) (bind ?descripcion "Num comensales Alto y Complejidad del plato Bajo")
							else (if (eq ?self:Complejidad Medio)
									then (bind ?puntos 1) (bind ?descripcion "Num comensales Alto y Complejidad del plato Medio")
							)
					)
					else (if (eq ?numComensales MuyAlto)
							then (if (eq ?self:Complejidad Bajo)
									then (bind ?puntos 3) (bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Bajo")
									else (if (eq ?self:Complejidad Medio)
											then (bind ?puntos 1) (bind ?descripcion "Num comensales Muy Alto y Complejidad del plato Medio")
									)
							)
					)
			)
	)

	(send ?self put-Puntuacion (+ ?puntos (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntos (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto tiene-gluten ()
	(bind ?listaIngredientes (send ?self:Plato get-Ingredientes))
	(bind ?i 1)
	(bind ?gluten FALSE)
	(while (and (<= ?i (length$ ?listaIngredientes)) (not ?gluten)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(if (send ?ingrediente get-Gluten)
			then (bind ?gluten TRUE)
		)
		(bind ?i (+ 1 ?i))
	)

	?gluten
)

(defmessage-handler MAIN::PlatoAbstracto tiene-lactosa ()
	(bind ?listaIngredientes (send ?self:Plato get-Ingredientes))
	(bind ?i 1)
	(bind ?lactosa FALSE)
	(while (and (<= ?i (length$ ?listaIngredientes)) (not ?lactosa)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(if (send ?ingrediente get-Lactosa)
			then (bind ?lactosa TRUE)
		)
		(bind ?i (+ 1 ?i))
	)

	?lactosa
)

(defmessage-handler MAIN::PlatoAbstracto calcula-puntuacion-temporada "" (?temporada)
	(bind ?plato (send ?self get-Plato))

	(bind ?puntuacion 0)
	(bind ?descripcion "N/A")
	(bind ?ingredientesTemporales 0)
	(bind ?ingredientesTemporalesOk 0)

	(bind $?listaIngredientes (send ?plato get-Ingredientes))
	(bind ?lenLista (length$ ?listaIngredientes))
	(loop-for-count (?i 1 ?lenLista) do
			(bind ?ingrediente (nth$ ?i ?listaIngredientes))
			(if (send ?ingrediente es-ingrediente-temporal)
					then (bind ?ingredientesTemporales (+ 1 ?ingredientesTemporales))
							 (if (send ?ingrediente es-ingrediente-temporada ?temporada)
									then (bind ?ingredientesTemporalesOk (+ 1 ?ingredientesTemporalesOk))
							)
			)
	)

	(if (= ?ingredientesTemporalesOk ?ingredientesTemporales)
			then (bind ?puntuacion 4) (bind ?descripcion "Todos los ingredientes son de temporada")
			else (if (>= ?ingredientesTemporalesOk (* 0.75 ?ingredientesTemporales))
					then (bind ?puntuacion 3) (bind ?descripcion ">=75% de los ingredientes son de temporada")
					else (if (>= ?ingredientesTemporalesOk (* 0.50 ?ingredientesTemporales))
							then (bind ?puntuacion 2) (bind ?descripcion ">=50% de los ingredientes son de temporada")
							else (if (>= ?ingredientesTemporalesOk (* 0.25 ?ingredientesTemporales))
									then (bind ?puntuacion 1) (bind ?descripcion ">=25% de los ingredientes son de temporada")
							)
					)
			)
	)

	(if (and (eq ?temporada Otono) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 1 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de otono y ser un plato caliente" ?descripcion))
	)
	(if (and (eq ?temporada Invierno) (eq (send ?plato get-Caliente) TRUE))
			then (bind ?puntuacion (+ 2 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de invierno y ser un plato caliente" ?descripcion))
	)
	(if (and (eq ?temporada Primavera) (eq (send ?plato get-Caliente) FALSE))
			then (bind ?puntuacion (+ 1 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de primavera y ser un plato frio" ?descripcion))
	)
	(if (and (eq ?temporada Verano) (eq (send ?plato get-Caliente) FALSE))
		 then (bind ?puntuacion (+ 2 ?puntuacion)) (bind ?descripcion (str-cat " ademas de ser temporada de verano y ser un plato frio" ?descripcion))
	)

	(send ?self put-Puntuacion (+ ?puntuacion (send ?self get-Puntuacion)))
	(bind ?descripcion (str-cat "+" (str-cat ?puntuacion (str-cat " --> " ?descripcion))))
	(slot-insert$ ?self DescripcionPuntos (+ 1 (length$ ?self:DescripcionPuntos)) ?descripcion)
)

(defmessage-handler MAIN::PlatoAbstracto tiene-misma-categoria (?categoria)
	(eq ?self:Categoria ?categoria)
)

(defmessage-handler MAIN::PlatoAbstracto tiene-misma-subCategoria (?subCategoria)
	(eq ?self:SubCategoria ?subCategoria)
)

(defmessage-handler MAIN::PlatoAbstracto es-primero ()
	(eq (class ?self:Plato) Primero)
)

(defmessage-handler MAIN::PlatoAbstracto es-segundo ()
	(eq (class ?self:Plato) Segundo)
)

(defmessage-handler MAIN::PlatoAbstracto es-postre ()
	(eq (class ?self:Plato) Postre)
)

(defmessage-handler MAIN::PlatoAbstracto es-vegetariano ()
	(send ?self:Plato get-Vegetariano)
)

(defmessage-handler MAIN::PlatoAbstracto cumple-restriccion (?restriccion)
	(or (and (eq ?restriccion Vegetariano) (send ?self es-vegetariano))
			(or (and (eq ?restriccion Gluten) (not (send ?self tiene-gluten)))
					(or (and (eq ?restriccion Lactosa) (not (send ?self tiene-lactosa)))
							(eq ?restriccion Ninguna)
					)
			)
	)
)

;                   ======================================================================
;                   ========================     Handler Plato     =======================
;                   ======================================================================

(defmessage-handler MAIN::Plato calcula-precio "Handler que calcula el precio de un plato en base a recorrer y
                                                sumar el precio de todos los ingredientes que lo compone" ()
    (bind ?listaIngredientes ?self:Ingredientes)
    (bind ?precioPlato ?self:PVP)
    (loop-for-count (?i 1 (length$ $?listaIngredientes)) do
        (bind ?ingrediente (nth$ ?i $?listaIngredientes))
        (bind ?precioPlato (+ ?precioPlato (send ?ingrediente get-PVP)))
    )

    ?precioPlato
)

(defmessage-handler MAIN::Plato imprimir "Handler que imprime por la salida estandard la informacion basica de un plato" ()
	(printout t "Nombre      : " ?self:Nombre crlf)
	(printout t "Ingredientes: (")
	(bind ?listaIngredientes ?self:Ingredientes)
	(loop-for-count (?i 1 (- (length$ ?listaIngredientes) 1)) do
		(bind ?ingrediente (nth$ ?i ?listaIngredientes))
		(send ?ingrediente imprimir)
		(printout t ",")
	)
  (send (nth$ (length$ ?listaIngredientes) ?listaIngredientes) imprimir)
	(printout t ")" crlf)
)

;                   ======================================================================
;                   =====================     Handler Ingrediente     ====================
;                   ======================================================================

(defmessage-handler MAIN::Ingrediente imprimir "Handler que imprime el nombre del ingrediente" ()
	(printout t ?self:Nombre)
)

(defmessage-handler MAIN::Ingrediente es-ingrediente-temporal "" ()
	(if (or (not (eq ?self:Mes_Inicio_Temporada 1)) (not (eq ?self:Mes_Final_Temporada 12)))
		then TRUE
		else FALSE
	)
)

(defmessage-handler MAIN::Ingrediente es-ingrediente-temporada "" (?temporada)
    (if (eq ?temporada Primavera)
        then (if (and (<= ?self:Mes_Inicio_Temporada 5) (>= ?self:Mes_Final_Temporada 4))
                then TRUE
                else FALSE
        )
        else (if (eq ?temporada Verano)
            then (if (and (<= ?self:Mes_Inicio_Temporada 9) (>= ?self:Mes_Final_Temporada 6))
                then TRUE
                else FALSE
            )
            else (if (eq ?temporada Otono)
                then (if (and (<= ?self:Mes_Inicio_Temporada 11) (>= ?self:Mes_Final_Temporada 10))
                    then TRUE
                    else FALSE
                )
                else (if (or (and (<= ?self:Mes_Inicio_Temporada 3) (>= ?self:Mes_Final_Temporada 1))
                             (or  (=  ?self:Mes_Inicio_Temporada 12) (= ?self:Mes_Final_Temporada 12)))
                    then TRUE
                    else FALSE
                )
            )
        )
    )
)

;                   ======================================================================
;                   ===================      Handler Menu Abstracto     ==================
;                   ======================================================================

(defmessage-handler MAIN::MenuAbstracto generar-menu (?categoria ?subCategoria ?restriccion)
	(bind ?indiceMaxPrimero 0)
	(bind ?indiceMaxSegundo 0)
	(bind ?indiceMaxPostre 0)

	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	;(printout t "QUE RESTRCICCION ES: " ?restriccion crlf)

	;Seleccionamos el primero con puntuacion maxima
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))

		(if (and (send ?platoAbstracto tiene-misma-categoria ?categoria)
						 (send ?platoAbstracto tiene-misma-subCategoria ?subCategoria))
				then (if (send ?platoAbstracto cumple-restriccion ?restriccion)
							then (if (send ?platoAbstracto es-primero)
										then (if (= ?indiceMaxPrimero 0)
													then (bind ?indiceMaxPrimero ?i)
													else (if (< (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Puntuacion)
														    			(send ?platoAbstracto get-Puntuacion))
																			then (bind ?indiceMaxPrimero ?i))
										)
										)
							)
				)
	)
	;Actualizamos puntuaciones de los segundos
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(if (send ?platoAbstracto es-segundo)
			then
				;Si el segundo es incompatible con el primero, le restamos 5 puntos
				(if (member (send ?platoAbstracto get-Plato) (send (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Plato) get-Platos_Incompatibles))
					then
						(send ?platoAbstracto put-Puntuacion (- 5 (send ?platoAbstracto get-Puntuacion)))
						;(printout t "Penalizado :" crlf)
						;(send ?platoAbstracto imprimir-debug)
				)
		)
	)
	;Seleccionamos el segundo y el postre con puntuacion maxima
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))

		(if (and (send ?platoAbstracto tiene-misma-categoria ?categoria)
						 (send ?platoAbstracto tiene-misma-subCategoria ?subCategoria))
				then (if (send ?platoAbstracto cumple-restriccion ?restriccion)
							then (if (send ?platoAbstracto es-segundo)
										then (if (= ?indiceMaxSegundo 0)
													then (bind ?indiceMaxSegundo ?i)
													else (if (< (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Puntuacion)
													 						(send ?platoAbstracto get-Puntuacion))
																			then (bind ?indiceMaxSegundo ?i))
										)
										else (if (send ?platoAbstracto es-postre)
											then
												(if (= ?indiceMaxPostre 0)
														then (bind ?indiceMaxPostre ?i)
														else (if (< (send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Puntuacion)
																				(send ?platoAbstracto get-Puntuacion))
																				then (bind ?indiceMaxPostre ?i))
												)
										)
									)
					)

				)
	)


	(if (= ?indiceMaxPrimero 0)
		then (printout t "Faltan primeros!!!!! " crlf)
	)
	(if (= ?indiceMaxSegundo 0)
		then (printout t "Faltan segundos!!!!!! " crlf)
	)
	(if (= ?indiceMaxPostre 0)
		then (printout t "Faltan postres!!!!! " crlf)
	)

	(bind ?menu (make-instance (sym-cat menu-MenuAbstracto- (gensym)) of Menu))
	(send ?menu put-Relacion_Menu_Primero (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Segundo (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Plato))
	(send ?menu put-Relacion_Menu_Postre  (send (nth$ ?indiceMaxPostre  ?listaPlatosAbstractos) get-Plato))
	(send ?self put-Menu ?menu)
	(send ?self put-Precio
		(+ (send (nth$ ?indiceMaxPrimero ?listaPlatosAbstractos) get-Precio)
		(+ (send (nth$ ?indiceMaxSegundo ?listaPlatosAbstractos) get-Precio)
		(send (nth$ ?indiceMaxPostre ?listaPlatosAbstractos) get-Precio))))
)

(defmessage-handler MAIN::MenuAbstracto imprimir "Handler que imprime la informacion basica de un menu y su precio" ()
	(bind ?menu ?self:Menu)
	(send ?menu imprimir)
	(printout t "Precio menu : " ?self:Precio crlf)
)

;                   ======================================================================
;                   ==================      Handler Bebida Abstracta    ==================
;                   ======================================================================

(defmessage-handler MAIN::VinoAbstracto calcula-sub-categoria "Handler que calcula la sub-categoria dado dos parametros" (?precioMedio ?precioAlto)
	(bind ?precio (send ?self:Vino get-PVP))

	(if (< ?precio ?precioMedio)
      then (send ?self put-SubCategoria Bajo)
      else (if (and (>= ?precio ?precioMedio) (< ?precio ?precioAlto))
            then (send ?self put-SubCategoria Medio)
            else (send ?self put-SubCategoria Alto)
      )
  )
)

(defmessage-handler MAIN::VinoAbstracto calcula-categoria "Handler que calcula la categoria" ()
  (bind ?precio (send ?self:Vino get-PVP))
  (if (< ?precio 6)
        then (send ?self put-Categoria Bajo)
             (send ?self calcula-sub-categoria 3.0 5.0)
        else (if (and (>= ?precio 6) (< ?precio 10))
              	then 	(send ?self put-Categoria Medio)
                   		(send ?self calcula-sub-categoria 7.0 9.0)
		            else 	(send ?self put-Categoria Alto)
		                 	(send ?self calcula-sub-categoria 13.0 16.0)
        )
  )
)

(defmessage-handler MAIN::VinoAbstracto imprimir (?numComensalesVino ?numComensales)
	(printout t "Nombre: " ?self:Nombre crlf)
	(printout t "Precio: " ?self:PVP crlf)
	(bind ?num (div ?numComensalesVino 4))
	(bind ?precio (* ?num ?self:PVP))
	(if (eq ?num 1)
		then  (if (< ?numComensalesVino 4)
						then (bind ?copa (/ ?self:PVP ?numComensalesVino))
								 (format t "Precio de una copa para %d comensales: %f %n" ?numComensalesVino ?copa)
						else (format t "Precio de %d botella para %d comensales: %f %n" ?num ?numComensalesVino ?precio )
					)
		else 	(if (eq ?num 0)
				then (bind ?copa (/ ?self:PVP ?numComensalesVino))
						 (format t "Precio de una copa para %d comensales: %f %n" ?numComensalesVino ?copa)
				else (format t "Precio de %d botellas para %d comensales: %f %n" ?num ?numComensalesVino ?precio )
		)
	)
)

;;;nuevo
(defmessage-handler MAIN::VinoAbstracto categoria-correcta (?categoria)
	(eq ?self:Categoria ?categoria)
)

(defmessage-handler MAIN::VinoAbstracto subcategoria-correcta (?subCategoria)
	(eq ?self:SubCategoria ?subCategoria)
)

;                   ======================================================================
;                   =========================     Handler Menu     =======================
;                   ======================================================================

(defmessage-handler MAIN::Menu imprimir ()
	(printout t "--- Primer plato  ---" crlf)
	(send ?self:Relacion_Menu_Primero imprimir)
	(printout t "--- Segundo plato ---" crlf)
	(send ?self:Relacion_Menu_Segundo imprimir)
	(printout t "--- Postre        ---" crlf)
	(send ?self:Relacion_Menu_Postre imprimir)
)

(defmessage-handler MAIN::Menu EncontrarIngredientePrincipal ()
	(bind ?listaIngredientes (send ?self:Relacion_Menu_Segundo get-Ingredientes))
	(bind ?ingredientePrincipal Carne)
	(loop-for-count (?i 1 (length$ ?listaIngredientes)) do
		(bind ?ingrediente (nth$ ?i $?listaIngredientes))
		(bind ?tipoIngrediente(class (instance-address * ?ingrediente)))
		(if (or (eq ?tipoIngrediente Marisco) (eq ?tipoIngrediente Pescado))
			then(bind ?ingredientePrincipal Pescado)
			else(bind ?ingredientePrincipal Vegetal)
		)
	)

	?ingredientePrincipal
)

;                   ======================================================================
;                   =====================  Declaracion de funciones ======================
;                   ======================================================================

(deffunction pregunta-general "Funcion para formular preguntas generales" (?pregunta $?respuestas-validas)
  (format t "%s: " ?pregunta)
  (bind ?respuesta (read))
  (while (not (member (lowcase ?respuesta) ?respuestas-validas)) do
      (format t "%s: " ?pregunta)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-numerica-rango "Funcion para formular preguntas numericas que esten comprendidas entre un intervalo" (?pregunta ?min ?max)
  (format t "%s [%d, %d]: " ?pregunta ?min ?max)
  (bind ?respuesta (read))
  (while (not (and (>= ?respuesta ?min) (<= ?respuesta ?max))) do
      (format t "%s [%d, %d]: " ?pregunta ?min ?max)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-numerica-min "Funcion para formular preguntas numericas con valor minimo" (?pregunta ?min)
  (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
  (bind ?respuesta (read))
  (while (not (>= ?respuesta ?min)) do
      (format t "%s (Valor minimo es: %d): " ?pregunta ?min)
      (bind ?respuesta (read)))
  ?respuesta
)

(deffunction pregunta-binaria "Preguntas con respuestas sí o no" (?pregunta)
   (bind ?respuesta (pregunta-general ?pregunta si no s n))
   (if (or (eq ?respuesta yes) (eq ?respuesta s))
       then TRUE
       else FALSE)
)

(deffunction pregunta-lista "Funcion para preguntar y recibir como respuesta un valor entre el rango disponible de valores" (?lista)
	(format t "Opciones: %n---------------------------%n")
	(loop-for-count (?i 1 (length$ ?lista)) do
		(bind ?opcion (str-cat ?i (str-cat ".- " (nth$ ?i ?lista))))
		(printout t ?opcion crlf)
	)
	(bind ?respuesta (pregunta-numerica-rango "Escribe una de las opciones del menu: " 1 (length$ ?lista)))
	?respuesta
)

(deffunction calcular-platos-abstractos "" ()
	(bind ?platos (find-all-instances ((?inst Plato)) TRUE))
	(loop-for-count (?i 1 (length$ ?platos)) do
		(bind ?plato (nth$ ?i ?platos))
		(bind ?platoAbstracto (make-instance (sym-cat platoAbstracto- (gensym)) of PlatoAbstracto))
		(send ?platoAbstracto put-Plato ?plato)
		(send ?platoAbstracto calcula-categoria)
	)
)

(deffunction calcular-vinos-abstractos "" ()
	(bind ?listaVinos (find-all-instances ((?inst Vino)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaVinos)) do
		(bind ?vino (nth$ ?i ?listaVinos))
		(bind ?vinoAbstracto (make-instance (sym-cat vinoAbstracto- (gensym)) of VinoAbstracto))
		(send ?vinoAbstracto put-Vino ?vino)
		(send ?vinoAbstracto calcula-categoria)
		(send ?vinoAbstracto put-Nombre (send ?vino get-Nombre))
		(send ?vinoAbstracto put-PVP (send ?vino get-PVP))
	)
)

(deffunction buscar-vino (?tipoVino ?categoria ?subCategoria ?numComensalesVino ?numComensales)
	(bind ?listaVinosAbstractos (find-all-instances ((?inst VinoAbstracto)) TRUE))
	(bind ?candidato (nth$ 1 ?listaVinosAbstractos))

	(bind ?i 1)
	(bind ?correcto FALSE)
	(while (and (<= ?i (length$ ?listaVinosAbstractos)) (not ?correcto)) do
		(bind ?vinoAbstracto (nth$ ?i ?listaVinosAbstractos))
		(bind ?vino (send ?vinoAbstracto get-Vino))
		(bind ?tipo (class (instance-address * ?vino)))

		(if (and (eq ?tipo ?tipoVino) (and (send ?vinoAbstracto categoria-correcta ?categoria)
																			 (send ?vinoAbstracto subcategoria-correcta ?subCategoria)))
			 then
			 			(bind ?correcto TRUE)
						(bind ?candidato ?vinoAbstracto)
		)
		(bind ?i (+ ?i 1))
	)

	(send ?candidato imprimir ?numComensalesVino ?numComensales)
)

(deffunction generar-menu (?categoria ?subCategoria ?numComensales ?numAlergicosGluten ?numAlergicosLactosa ?numVegetarianos ?numComensalesVino ?siQuiereVino)
	(bind ?precioMenuNormal 0)
	(bind ?precioMenuSinGluten 0)
	(bind ?precioMenuSinLactosa 0)
	(bind ?precioMenuVegetariano 0)

	(printout t "Numero de comensales: " ?numComensales crlf)
	(printout t "Numero vegetarianos: " ?numVegetarianos crlf)
	(printout t "Numero de gluten: " ?numAlergicosGluten crlf)
	(printout t "Numero de alergicos lactosa: " ?numAlergicosLactosa crlf)

	(if (< (+ ?numAlergicosGluten (+ ?numVegetarianos ?numAlergicosLactosa)) (* 0.5 ?numComensales))
		then
			(bind ?menu (make-instance (gensym) of MenuAbstracto))
			(send ?menu generar-menu ?categoria ?subCategoria Ninguna)

			(printout t "Menu normal: " crlf)
			(send ?menu imprimir)
			(bind ?precioMenuNormal (* ?numComensales (send ?menu get-Precio)))

			(if ?siQuiereVino
				then
					(bind ?ingredientePrincipal (send (send ?menu get-Menu) EncontrarIngredientePrincipal))
					(bind ?tipoVino Blanco)

					(if (eq ?ingredientePrincipal Carne)
						then (bind ?tipoVino Tinto)
					)

					(buscar-vino ?tipoVino ?categoria ?subCategoria ?numComensalesVino ?numComensales)
			)
	)

	(if (> ?numVegetarianos 0)
		then
			(bind ?menuVegetariano (make-instance (gensym) of MenuAbstracto))
			(send ?menuVegetariano generar-menu ?categoria ?subCategoria Vegetariano)

			(printout t "Menu vegetariano: " crlf)
			(send ?menuVegetariano imprimir)
			(bind ?precioMenuVegetariano (* ?numVegetarianos (send ?menuVegetariano get-Precio)))

			(if ?siQuiereVino
				then
					(bind ?ingredientePrincipal (send (send ?menuVegetariano get-Menu) EncontrarIngredientePrincipal))
					(bind ?tipoVino Blanco)

					(if (eq ?ingredientePrincipal Carne)
						then (bind ?tipoVino Tinto)
					)

					(buscar-vino ?tipoVino ?categoria ?subCategoria ?numComensalesVino ?numComensales)
			)
	)
	(if (> ?numAlergicosGluten 0)
		then
			(bind ?menuSinGluten (make-instance (gensym) of MenuAbstracto))
			(send ?menuSinGluten generar-menu ?categoria ?subCategoria Gluten)

			(printout t "Menu sin gluten: " crlf)
			(send ?menuSinGluten imprimir)
			(bind ?precioMenuSinGluten (send ?menuSinGluten get-Precio))

			(if ?siQuiereVino
				then
					(bind ?ingredientePrincipal (send (send ?menuSinGluten get-Menu) EncontrarIngredientePrincipal))
					(bind ?tipoVino Blanco)

					(if (eq ?ingredientePrincipal Carne)
						then (bind ?tipoVino Tinto)
					)


					(buscar-vino ?tipoVino ?categoria ?subCategoria ?numComensalesVino ?numComensales)
			)
	)
	(if (> ?numAlergicosLactosa 0)
		then
			(bind ?menuSinLactosa (make-instance (gensym) of MenuAbstracto))
			(send ?menuSinLactosa generar-menu ?categoria ?subCategoria Lactosa)

			(printout t "Menu sin lactosa: " crlf)
			(send ?menuSinLactosa imprimir)
			(bind ?precioMenuSinLactosa (send ?menuSinLactosa get-Precio))

			(if ?siQuiereVino
				then
					(bind ?ingredientePrincipal (send (send ?menuSinLactosa get-Menu) EncontrarIngredientePrincipal))
					(bind ?tipoVino Blanco)

					(if (eq ?ingredientePrincipal Carne)
						then (bind ?tipoVino Tinto)
					)


					(buscar-vino ?tipoVino ?categoria ?subCategoria ?numComensalesVino ?numComensales)
			)
	)

	(printout t "Precio total: " (+ ?precioMenuNormal (+ ?precioMenuSinGluten (+ ?precioMenuVegetariano ?precioMenuSinLactosa))) crlf)
)

;                   ======================================================================
;                   =======================  Declaracion de reglas =======================
;                   ======================================================================

(defrule MAIN::inicio "Regla que genera la cabezera inicial"
    (declare (salience 10))
    =>
    (calcular-platos-abstractos)
		(calcular-vinos-abstractos)
    (printout t "====================================================================" crlf)
    (printout t "=    Sistema de elaboracion de menus personalizados Rico Rico      =" crlf)
    (printout t "====================================================================" crlf)
    (printout t crlf)
    (printout t "Bienvenido! A continuacion se le formularan una serie de preguntas para poder crear el menu que mas encaje con sus preferencias." crlf)
    (printout t crlf)
    (focus recopilacion)
)

;                   ======================================================================
;                   ======================  Modulo de recopilacion  ======================
;                   ======================================================================


(defrule recopilacion::pregunta-familiar-congreso "Pregunta al cliente que tipo de evento se va a realizar"
    (not (Entrada))
    =>
    (bind ?respuesta (pregunta-general "¿Que tipo de evento se va a celebrar? (B)oda/Co(m)union/B(a)utizo/(C)ongreso" b m a c))
    (if (eq ?respuesta b)
        then (assert (Entrada (tipoEvento Boda)))
        else (if (eq ?respuesta m)
            then (assert (Entrada (tipoEvento Comunion) (comida TRUE)))
            else (if (eq ?respuesta a)
                then (assert (Entrada (tipoEvento Bautizo) (comida TRUE)))
                else (assert (Entrada (tipoEvento Congreso)))
            )
        )
    )
)

(defrule recopilacion::comida-cena "Pregunta al cliente si el evento sera una cena o una comida"
    ?e <- (Entrada (comida ?comida))
    (test (eq ?comida UNDEF))
    =>
    (bind ?respuesta (pregunta-general "¿Sera una comida o una cena? (C)omida/C(e)na" c e))
    (if (eq ?respuesta e)
        then (modify ?e (comida FALSE))
        else (modify ?e (comida TRUE))
    )
)

(defrule recopilacion::pregunta-estilo-comida "Pregunta al cliente el estilo de la comida"
    ?e <- (Entrada (estilo ?est))
    (test (eq ?est UNDEF))
    =>
    (bind ?respuesta (pregunta-general "¿Que estilo de comida quiere en el menu? (S)ibarita/(M)oderno/(T)radicional/(C)lasico" s m t c))
    (if (eq ?respuesta t)
        then (modify ?e (estilo Tradicional))
        else (if (eq ?respuesta s)
            then (modify ?e (estilo Sibarita))
            else (if (eq ?respuesta c)
                then (modify ?e (estilo Clasico))
                else (modify ?e (estilo Moderno))
            )
        )
    )
)

(defrule recopilacion::mes-evento "Pregunta al cliente en que mes se realiza el evento"
    ?e <- (Entrada (mesEvento ?mes))
    (test (< ?mes 0))
    =>
    (bind ?respuesta (pregunta-numerica-rango "¿En que mes se celebrara el evento ?" 1 12))
    (modify ?e (mesEvento ?respuesta))
)

(defrule recopilacion::numero-comensales "Pregunta al cliente el numero de comensales"
    ?e <- (Entrada (numComensales ?comensales))
    (test (< ?comensales 0))
    =>
    (bind ?respuesta (pregunta-numerica-rango "¿Cuantos comensales sereis?" 20 500))
    (modify ?e (numComensales ?respuesta) (numGenteNormal ?respuesta))
)

(defrule recopilacion::establecer-presupuesto-maximo "Pregunta al cliente que presupuesto por menu"
    ?e <- (Entrada (presupuestoMax ?max))
    (test (< ?max 0))
    =>
    (bind ?presupuesto (pregunta-numerica-min "¿Cual el preuspuesto del menu por persona?" 10))
    (modify ?e (presupuestoMax ?presupuesto))
)

(defrule recopilacion::pregunta-ninos "Pregunta si acurian menores al evento"
		(Entrada (tipoEvento ?tipoEvento))
		(not (PreguntaNinos))
		=>
		(if (and (not (eq ?tipoEvento Congreso)) (pregunta-binaria "¿Acudiran menores al evento?"))
        then (assert (PreguntarCuantosNinosAsistiran))
        else (assert (NoHabraNinos))
    )
		(assert (PreguntaNinos))
)

;;;nuevo
(defrule recopilacion::pregunta-comensales-ninos "Pregunta al cliente cuantos menores acudiran"
		(PreguntarCuantosNinosAsistiran)
		(not (PreguntaNinosCompletada))
    ?e <- (Entrada)
		(Entrada (numComensales ?numComensales))
    =>
		(bind ?num (pregunta-numerica-rango "¿Cuantos?" 1 (- ?numComensales 2)))
		(modify ?e (numComensalesNinos ?num))
		(assert (PreguntaNinosCompletada))
)

;;;nuevo
(defrule recopilacion::pregunta-alcohol ""
		(not (PreguntarAlcohol))
		?e <- (Entrada)
		=>
		(if (pregunta-binaria "¿Se quieren incluir bebidas alcoholicas en el menu?")
        then
					(assert (PreguntarPorIncluirVino))
					(modify ?e (alcohol TRUE))
        else (modify ?e (alcohol FALSE))
    )
		(assert (PreguntarAlcohol))
)

;;;nuevo
(defrule recopilacion::pregunta-vino "Pregunta si se quiere incluir vino en el menu"
		(PreguntarPorIncluirVino)
		(not (PreguntaVinoMenuCompletada))
		?e <- (Entrada)
		=>
		(if (pregunta-binaria "¿Se quiere incluir vino en el menu?")
        then
					(assert (PreguntarCuantosBeberanVino))
					(modify ?e (vino TRUE))
        else (modify ?e (vino FALSE))
    )
		(assert (PreguntaVinoMenuCompletada))
)
;;;nuevo
(defrule recopilacion::pregunta-comensales-vino "Pregunta al cliente cuantos van a beber vino"
		(PreguntarCuantosBeberanVino)
		(not (PreguntaCuantosBeberanVinoCompletada))

    ?e <- (Entrada)
		(Entrada (numComensales ?numComensales))
		(Entrada (numComensalesNinos ?numComensalesNinos))
    =>
    (bind ?respuesta (pregunta-general "¿Cuantos beberan vino? (A)lgunos (M)itad (Ma)yoria (T)odos" a m ma t))
		(if (eq ?respuesta a) ;;;25%
				then (modify ?e (numComensalesVino (* 0.25 (- ?numComensales ?numComensalesNinos))))
				else (if (eq ?respuesta m);;;50%
						then (modify ?e (numComensalesVino (* 0.5 (- ?numComensales ?numComensalesNinos))))
						else (if (eq ?respuesta ma) ;;;75%
								then (modify ?e (numComensalesVino (* 0.75 (- ?numComensales ?numComensalesNinos))))
								else (modify ?e (numComensalesVino (- ?numComensales ?numComensalesNinos))) ;;;100%
						)
				)
		)

		(assert (PreguntaCuantosBeberanVinoCompletada))
)

(defrule recopilacion::pregunta-vegetarianos "Pregunta al cliente si acude gente vegetariana"
		(not (PreguntarPorVegetarianos))
    =>
    (if (pregunta-binaria "¿Acudira gente vegetariana?")
        then (assert (CuantosVegetarianosAsistiran))
    )
		(assert (PreguntarPorVegetarianos))
)

(defrule recopilacion::preguntar-numero-vegetarianos "Pregunta al cliente cuantos vegetarianos asistiran"
	(not (VegetarianosCompletado))
	(CuantosVegetarianosAsistiran)
	?e <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	=>
	(bind ?respuesta (pregunta-numerica-rango "¿Cuantas personas vegetarianas asistiran?" 0 ?numComensales))
	(modify ?e (numVegetarianos ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
	(assert (VegetarianosCompletado))
)

(defrule recopilacion::pregunta-alergias "Pregunta al cliente si hay alergias a tener en cuenta"
	(not (HayAlergias?))
	=>
	(if (pregunta-binaria "¿Hay alguna alergia a tener en cuenta a la hora de elegir menu?")
		then (assert (QueTipoAlergias))
	)
	(assert (HayAlergias?))
)

(defrule recopilacion::pregunta-que-tipo-alergias "Pregunta al cliente por el tipo de alergias"
	?e <- (QueTipoAlergias)
	(not (TipoAlergiasCompletado))
	?alergias <- (Entrada)
	(Entrada (numGenteNormal ?numComensales))
	(Entrada (numAlergicosGluten ?numAlergicosGluten))
	(Entrada (numAlergicosLactosa ?numAlergicosLactosa))
	=>
	(retract ?e)
	(assert (QueTipoAlergias))
	(bind ?lista (create$ Lactosa Gluten Volver))
	(bind ?opcion (pregunta-lista ?lista))
	(if (= ?opcion (length$ ?lista))
		then (assert (TipoAlergiasCompletado))
		else
			(if (= ?opcion 1)
				then
							(bind ?numComensales (+ ?numComensales ?numAlergicosLactosa))
							(bind ?respuesta (pregunta-numerica-rango "Cuantas personas son alergicas a la lactosa" 0 ?numComensales))
							(modify ?alergias (numAlergicosLactosa ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
			(if (= ?opcion 2)
				then
						 (bind ?numComensales (+ ?numComensales ?numAlergicosGluten))
				 		 (bind ?respuesta (pregunta-numerica-rango "Cuantas personas son alergicas al gluten" 0 ?numComensales))
					 	 (modify ?alergias (numAlergicosGluten ?respuesta) (numGenteNormal (- ?numComensales ?respuesta)))
			)
	)
)

(defrule recopilacion::entrada-completada "Regla que comprueba que todas las preguntas han sido respondidas"
    (Entrada (numComensales ?numComensales))
    (test (>= ?numComensales 0))

    (Entrada (presupuestoMax ?presupuestoMax))
    (test (>= ?presupuestoMax 0))

    (Entrada (tipoEvento ?tipoEvento))
    (test (not (eq ?tipoEvento UNDEF)))

    (Entrada (mesEvento ?mesEvento))
    (test (>= ?mesEvento 0))

    (Entrada (comida ?comida))
    (test (not (eq ?comida UNDEF)))

    (Entrada (estilo ?estilo))
    (test (not (eq ?estilo UNDEF)))

		(PreguntaNinos)
		(or (NoHabraNinos) (and (PreguntarCuantosNinosAsistiran) (PreguntaNinosCompletada)))

		(PreguntarAlcohol)

		(or (not (PreguntarPorIncluirVino)) (and (PreguntarPorIncluirVino) (PreguntaVinoMenuCompletada)))

		(or (not (PreguntarCuantosBeberanVino)) (and (PreguntarCuantosBeberanVino) (PreguntaCuantosBeberanVinoCompletada)))

		(PreguntarPorVegetarianos)
		(or (not (CuantosVegetarianosAsistiran)) (and (CuantosVegetarianosAsistiran) (VegetarianosCompletado)))
		(HayAlergias?)
		(or (not (QueTipoAlergias)) (and (QueTipoAlergias) (TipoAlergiasCompletado)))
    =>
	  (focus abstraccion)
)

;                   ======================================================================
;                   ======================  Modulo de abstraccion   ======================
;                   ======================================================================

(defrule abstraccion::abstraer-presupuesto "Regla que nos permite abstraer del presupuesto propuesto por el usuario a unos valores abstractos"
    (not (ProblemaAbstracto))
    (Entrada (presupuestoMax ?presupuestoMax))
    =>
    (if  (< ?presupuestoMax 25)
        then (assert (ProblemaAbstracto (presupuesto Bajo)))
        else (if (< ?presupuestoMax 49)
            then (assert (ProblemaAbstracto (presupuesto Medio)))
            else (if (< ?presupuestoMax 81)
                then (assert (ProblemaAbstracto (presupuesto Alto)))
                else (assert (ProblemaAbstracto (presupuesto MuyAlto)))
            )
        )
    )
)

(defrule abstraccion::abstraer-comensales "Regla que nos permite abstraer el numero de comensales propuesto por el usuario a unos valores abstractos"
	?e <- (ProblemaAbstracto (numComensales ?num))
	(test (eq ?num UNDEF))
	(Entrada (numComensales ?numComensales))
	=>
    (if (< ?numComensales 30)
        then (modify ?e (numComensales Bajo))
        else (if (< ?numComensales 50)
            then (modify ?e (numComensales Medio))
            else (if (< ?numComensales 100)
                then (modify ?e (numComensales Alto))
                else (modify ?e (numComensales MuyAlto))
            )
        )
    )
)


(defrule abstraccion::abstraer-temporada "Regla que nos permite abstraer el mes del evento propuesto por el usuario a unos valores abstractos"
    ?e <- (ProblemaAbstracto (temporada ?temporada))
    (test (eq ?temporada UNDEF))
    (Entrada (mesEvento ?mesEvento))
    =>
    (if (and (>= ?mesEvento 4) (<= ?mesEvento 5))
        then (modify ?e (temporada Primavera))
        else (if (and (>= ?mesEvento 6) (< ?mesEvento 9))
            then (modify ?e (temporada Verano))
            else (if (and (>= ?mesEvento 10) (< ?mesEvento 11))
                then (modify ?e (temporada Otono))
                else (modify ?e (temporada Invierno))
            )
        )
    )
)

;(defrule abstraccion::abstraer-complejidad "Regla que nos permite abstraer el estilo propuesto por el usuario a unos valores abstractos"
;   ?e <- (ProblemaAbstracto (complejidad ?dificultad))
;   (test (eq ?dificultad UNDEF))
;    (Entrada (estilo ?estilo))
;    ?plato <-(object(is-a Plato))
;    =>
;    (if (or (eq ?estilo Tradicional) (eq ?estilo Sibarita))
;        then (modify ?e (complejidad Facil))
;        else (if (eq ?estilo Clasico)
;            then (modify ?e (complejidad Normal))
;            else (modify ?e (complejidad Alto))
;        )
;    )
;)

(defrule abstraccion::abstraccion-completada "Regla que comprueba que todas las preguntas han sido respondidas"
    (ProblemaAbstracto (presupuesto ?presupuesto))
    (test (not (eq ?presupuesto UNDEF)))

    (ProblemaAbstracto (numComensales ?numComensales))
    (test (not (eq ?numComensales UNDEF)))

    (ProblemaAbstracto (temporada ?temporada))
    (test (not (eq ?temporada UNDEF)))


;    (ProblemaAbstracto (complejidad ?complejidad))
;    (test (not (eq ?complejidad UNDEF)))
    =>
	 (focus solucionAbstracta)
)

;                   ======================================================================
;                   ===================  Modulo de solucion abstracta   ==================
;                   ======================================================================

(defrule solucionAbstracta::calcular-puntuaciones ""
	(initial-fact)
	(ProblemaAbstracto (presupuesto ?presupuesto))
	(ProblemaAbstracto (numComensales ?numComensales))
	(ProblemaAbstracto (temporada ?temporada))
	(Entrada (estilo ?estilo))
	=>
	(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
	(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do
		(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
		(send ?platoAbstracto calcula-puntuacion-presupuesto ?presupuesto)
		(send ?platoAbstracto calcula-puntuacion-complejidad ?numComensales)
		(send ?platoAbstracto calcula-puntuacion-temporada ?temporada)
		(send ?platoAbstracto calcula-puntuacion-estilo ?estilo)
		;(send ?platoAbstracto imprimir-debug)
	)

	(assert (MenuBarato))
	(focus solucionConcreta)
)

;                   ======================================================================
;                   ===================   Modulo de solucion concreta   ==================
;                   ======================================================================

;(deftemplate MAIN::MenuBarato
;	(slot menuPrincipal (type INSTANCE))
;	(slot menuSinGluten (type INSTANCE))
;	(slot menuSinLactosa (type INSTANCE))
;	(slot generadoMenuSinGluten (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
;	(slot generadoMenuSinLactosa (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
;	(slot generadoMenuNormal (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
;)

(defrule solucionConcreta::imprimirResultado
	(not (final))
	(Entrada (numComensales ?numComensales))
	(Entrada (numAlergicosGluten ?numAlergicosGluten))
	(Entrada (numAlergicosLactosa ?numAlergicosLactosa))
	(Entrada (numVegetarianos ?numVegetarianos))
	(Entrada (numComensalesNinos ?numComensalesNinos))
	(Entrada (vino ?siQuiereVino))
	(Entrada (ninos ?ninos))
	(Entrada (alcohol ?alcohol))
	(Entrada (numComensalesVino ?numComensalesVino))
	(ProblemaAbstracto (presupuesto ?categoria))
	=>
	(if (eq ?categoria MuyAlto) then
	  (bind ?categoria Alto))

		(bind ?listaPlatosAbstractos (find-all-instances ((?inst PlatoAbstracto)) TRUE))
		(loop-for-count (?i 1 (length$ ?listaPlatosAbstractos)) do

			(bind ?platoAbstracto (nth$ ?i ?listaPlatosAbstractos))
			(send ?platoAbstracto imprimir-debug)
		)

	(if (eq ?categoria Bajo)
		then (printout t "Se va crear un menu de categoria baja!" crlf)
		else (if (eq ?categoria Medio)
			then (printout t "Se va crear un menu de categoria media!" crlf)
			else (printout t "Se va crear un menu de categoria alta" crlf)
		)
	)

	(printout t "====================  Menu Barato ===================== " crlf)
	(generar-menu ?categoria Bajo ?numComensales ?numAlergicosGluten ?numAlergicosLactosa ?numVegetarianos ?numComensalesVino ?siQuiereVino)

	(printout t "====================  Menu Medio ===================== " crlf)
	(generar-menu ?categoria Medio ?numComensales ?numAlergicosGluten ?numAlergicosLactosa ?numVegetarianos ?numComensalesVino ?siQuiereVino)

	(printout t "====================  Menu Alto ===================== " crlf)
	(generar-menu ?categoria Alto ?numComensales ?numAlergicosGluten ?numAlergicosLactosa ?numVegetarianos ?numComensalesVino ?siQuiereVino)

	(printout t crlf)
	(printout t "====================  Otras bebidas ===================== " crlf)
	(if  (< ?numComensalesVino (- ?numComensales ?numComensalesNinos))
		then
			(printout t "Precio cerveza: 1.2" crlf)
			(bind ?num (- ?numComensales ?numComensalesVino ?numComensalesNinos))
			(bind ?precio (* ?num 1.2))
			(format t "Precio para %d comensales: %f %n" ?num ?precio)
	)
	(if ?ninos
		then
			(printout t "Precio refresco o zumo: 0.8" crlf)
			(bind ?precio (* ?numComensalesNinos 0.8))
			(format t "Precio para %d ninos: %f %n" ?numComensalesNinos ?precio)
	)

	(assert (final))
)
