/* SA1 - Banco da indústria de embalagens */

DROP DATABASE IF EXISTS embalagens;
CREATE DATABASE embalagens;
USE embalagens;

-- unidades fabris
CREATE TABLE unidade (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(60),
  cidade VARCHAR(60) NOT NULL
) COMMENT = 'Unidades fabris';

-- catálogo de produtos
CREATE TABLE produto (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(60) NOT NULL,
  preco DECIMAL(8,2) NOT NULL CHECK (preco > 0)
) COMMENT = 'Catálogo de produtos';

-- clientes
CREATE TABLE cliente (
  cnpj CHAR(18) PRIMARY KEY,
  razao_social VARCHAR(100) NOT NULL
) COMMENT = 'Cadastro de clientes';

-- ordem de produção
CREATE TABLE ordem_producao (
  numero INT AUTO_INCREMENT PRIMARY KEY,
  data_ordem DATE NOT NULL,
  qtd_boa INT NOT NULL,
  qtd_refugo INT NOT NULL,
  unidade_codigo INT NOT NULL,
  produto_codigo INT NOT NULL,
  FOREIGN KEY (unidade_codigo)
    REFERENCES unidade (codigo),
  FOREIGN KEY (produto_codigo)
    REFERENCES produto (codigo)
) COMMENT = 'Ordens de produção';

-- expedição
CREATE TABLE expedicao (
  numero INT AUTO_INCREMENT PRIMARY KEY,
  data_saida DATE NOT NULL,
  unidade_codigo INT NOT NULL,
  cliente_cnpj CHAR(18) NOT NULL,
  FOREIGN KEY (unidade_codigo)
    REFERENCES unidade (codigo),
  FOREIGN KEY (cliente_cnpj)
    REFERENCES cliente (cnpj)
) COMMENT = 'Expedições';

-- produtos de cada expedição
CREATE TABLE item_expedicao (
  expedicao_numero INT NOT NULL,
  produto_codigo INT NOT NULL,
  quantidade INT NOT NULL CHECK (quantidade > 0),
  preco_cobrado DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (expedicao_numero, produto_codigo),
  FOREIGN KEY (expedicao_numero)
    REFERENCES expedicao (numero),
  FOREIGN KEY (produto_codigo)
    REFERENCES produto (codigo)
) COMMENT = 'Produtos de cada expedição';
