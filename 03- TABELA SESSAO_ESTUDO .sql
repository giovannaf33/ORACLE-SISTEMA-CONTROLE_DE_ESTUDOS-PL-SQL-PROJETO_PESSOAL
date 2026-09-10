


-- SINTAXE TABELA SESSAO_ESTUDO

CREATE TABLE TB_SESSAO_ESTUDO (
    ID_SESSAO      NUMBER PRIMARY KEY,
    ID_ASSUNTO     NUMBER NOT NULL, 
    DATA_ESTUDO    DATE NOT NULL,
    TEMPO_ESTUDADO NUMBER NOT NULL,
    DIFICULDADE    CHAR(1),
    OPINIAO        VARCHAR2(100),
    DOMINIO        NUMBER NOT NULL,

    CONSTRAINT FK_ASSUNTO_SESSAO_ESTUDO
        FOREIGN KEY (ID_ASSUNTO)
        REFERENCES ASSUNTO (ID_ASSUNTO),
		
	CONSTRAINT CK_SESSAO_DOMINIO 
		CHECK (DOMINIO BETWEEN 1 AND 5),
		
 CONSTRAINT CK_SESSAO_DIFICULDADE
	CHECK (DIFICULDADE IN ('S', 'N')),

 CONSTRAINT CK_SESSAO_TEMPO_ESTUDADO 
	CHECK (TEMPO_ESTUDADO > 0)
);

--CONSTRAINT nomeia a restrição de integridade.

-- FOREIGN KEY define ID_ASSUNTO como chave estrangeira na tabela SESSAO_ESTUDO. Pois existe a coluna ID_ASSUNTO na tabela ASSUNTO como chave primaria PK

-- REFERENCES estabelece que esse ID_ASSUNTO referencia ID_ASSUNTO da tabela ASSUNTO.

-- Resultado: não posso registrar uma sessão para um assunto que não existe na tabela ASSUNTO.

-- ASSUNTO é a tabela pai e SESSAO_ESTUDO é a tabela filha

-- CHECK DOMINIO: garante que o valor esteja entre 1 e 5.

-- CHECK DIFICULDADE: garante que DIFICULDADE aceite apenas 'S' ou 'N'.

-- CHECK TEMPO_ESTUDADO: garante que o valor seja maior que 0. 
OBS para a coluna tempo_estudado: 
30 = 30 minutos
60 = 1 hora
90 = 1h30
120 = 2 horas
