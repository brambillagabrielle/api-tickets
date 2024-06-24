-- criação da tabela usuários
CREATE TABLE usuarios (
    email VARCHAR(50) NOT NULL PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(30) NOT NULL,
    tipo CHAR(3) NOT NULL,
    CHECK (tipo = 'A' OR tipo = 'G' OR tipo = 'S')
);

-- criação da tabela tickets
CREATE TABLE tickets (
    id SERIAL NOT NULL PRIMARY KEY,
    resumo VARCHAR(100) NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    responsavel VARCHAR(50),
    solicitante VARCHAR(50) NOT NULL,
    data_abertura DATE NOT NULL,
    FOREIGN KEY (responsavel) REFERENCES usuarios(email),
    FOREIGN KEY (solicitante) REFERENCES usuarios(email)
);

-- criação da tabela comentários
CREATE TABLE comentarios (
    id SERIAL NOT NULL PRIMARY KEY,
    data_postagem DATE NOT NULL,
    texto VARCHAR(300) NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    editado BOOLEAN NOT NULL,
    FOREIGN KEY (usuario) REFERENCES usuarios(email)
);

-- inserir dados na tabela usuário

-- inserir dados na tabela tickets

-- inserir dados na tabela comentários