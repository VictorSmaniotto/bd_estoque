CREATE DATABASE BDESTOQUE;
USE BDESTOQUE;

CREATE TABLE PRODUTO(CODIGO integer NOT NULL,
					  DESCRICAO VARCHAR(20),
                      UNIDADE VARCHAR(3),
                      CONSTRAINT PK_PRODUTO PRIMARY KEY (CODIGO));
                      
CREATE TABLE MOVIMENTACAO(ID INTEGER NOT NULL,
						  TIPO VARCHAR(10),
                          DATA_MOVIMENTACAO DATE,
                          QUANTIDADE INTEGER,
                          CODIGO integer,
                          CONSTRAINT PK_MOVIMENTACAO PRIMARY KEY (ID),
                          CONSTRAINT FK_PRODUTO_MOVIMENTACAO
							FOREIGN KEY (CODIGO)
                            REFERENCES PRODUTO(CODIGO));