CREATE TABLE clienti(
	numeroCliente SERIAL NOT NULL PRIMARY KEY,
	nome VARCHAR NOT NULL,
	cognome VARCHAR NOT NULL,
	dataNascita DATE NOT NULL,
	regioneResidenza VARCHAR NOT NULL
);

CREATE TABLE fatture(
	numeroFattura SERIAL NOT NULL PRIMARY KEY,
	tipologia VARCHAR NOT NULL,
	importo INT NOT NULL,
	iva INT NOT NULL,
	idCliente INT NOT NULL, FOREIGN KEY (idCliente) REFERENCES clienti(numeroCliente),
	dataFattura DATE NOT NULL,
	numeroFornitore INT NOT NULL, FOREIGN KEY (numeroFornitore) REFERENCES fornitori(numeroFornitore)
);

CREATE TABLE prodotti(
	idProdotto SERIAL NOT NULL PRIMARY KEY,
	descrizione VARCHAR NOT NULL,
	inProduzione BOOLEAN NOT NULL,
	inCommercio BOOLEAN NOT NULL,
	dataAttivazione DATE NOT NULL,
    dataDisattivazione DATE NOT NULL
);

CREATE TABLE fornitori(
	numeroFornitore INT NOT NULL PRIMARY KEY,
	denominazione VARCHAR NOT NULL,
	regioneResidenza VARCHAR NOT NULL
);

INSERT INTO 

SELECT nome, cognome FROM clienti WHERE SELECT YEAR(dataNascita)=1982;




