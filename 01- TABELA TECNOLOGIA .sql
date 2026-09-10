

-- SINTAXE TABELA TECNOLOGIA




CREATE TABLE TB_TECNOLOGIA (
ID_TECNOLOGIA NUMBER PRIMARY KEY, 
NOME          VARCHAR2 (50) NOT NULL UNIQUE, 
DESCRICAO     VARCHAR2 (200)
); 

-- CREATE TABLE TECNOLOGIA → cria a tabela chamada TECNOLOGIA.

-- ID_TECNOLOGIA NUMBER PRIMARY KEY → identificador único da tecnologia.

-- NOME VARCHAR2(50) NOT NULL → nome da tecnologia, obrigatório.

-- DESCRICAO VARCHAR2(200) → descrição, que pode ficar vazia.
