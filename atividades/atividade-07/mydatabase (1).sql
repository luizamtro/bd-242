-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 05/02/2025 às 17:29
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydatabase`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `ID_CLIENTE` int NOT NULL,
  `NOME_CLIENTE` text,
  `SOBRENOME_CONTATO` text,
  `PRIMEIRO_NOME_CONTATO` text,
  `TELEFONE` int DEFAULT NULL,
  `ENDERECO_1` text,
  `ENDERECO_2` text,
  `CIDADE` text,
  `ESTADO` text,
  `CEP` int DEFAULT NULL,
  `PAIS` text,
  `NUM_FUNCIONARIO` int DEFAULT NULL,
  `LIMITE_CREDITO` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_CLIENTES`
--

INSERT INTO `TB_CLIENTES` (`ID_CLIENTE`, `NOME_CLIENTE`, `SOBRENOME_CONTATO`, `PRIMEIRO_NOME_CONTATO`, `TELEFONE`, `ENDERECO_1`, `ENDERECO_2`, `CIDADE`, `ESTADO`, `CEP`, `PAIS`, `NUM_FUNCIONARIO`, `LIMITE_CREDITO`) VALUES
(1, 'PEDRO', 'SOUSA', 'JOAO', 9999, 'RUA TAL', 'BAIRRO TAL', 'FORTALEZA', 'CEARA', 20000, 'BRASIL', 909090, 909090);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHES_PEDIDO`
--

CREATE TABLE `TB_DETALHES_PEDIDO` (
  `ID_PEDIDO` int DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `QUANTIA_PEDIDA` int DEFAULT NULL,
  `PRECO_CADA` int DEFAULT NULL,
  `ID_LINHA_PEDIDO` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_DETALHES_PEDIDO`
--

INSERT INTO `TB_DETALHES_PEDIDO` (`ID_PEDIDO`, `ID`, `QUANTIA_PEDIDA`, `PRECO_CADA`, `ID_LINHA_PEDIDO`) VALUES
(1, 1, 10, 23, 45);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `ID` int NOT NULL,
  `CIDADE` text,
  `ESTADO` text,
  `TELEFONE` int DEFAULT NULL,
  `ENDERECO_1` text,
  `ENDERECO_2` text,
  `PAIS` text,
  `CEP` int DEFAULT NULL,
  `TERRITORIO` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_ESCRITORIOS`
--

INSERT INTO `TB_ESCRITORIOS` (`ID`, `CIDADE`, `ESTADO`, `TELEFONE`, `ENDERECO_1`, `ENDERECO_2`, `PAIS`, `CEP`, `TERRITORIO`) VALUES
(1, '[value-2]', '[value-3]', 909090, '[value-5]', '[value-6]', '[value-7]', 90, '[OKOK]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FUNCIONARIOS`
--

CREATE TABLE `TB_FUNCIONARIOS` (
  `ID_FUNCIONARIO` int NOT NULL,
  `ID` int DEFAULT NULL,
  `SOBRENOME` text,
  `NOME` text,
  `FUNCAO` text,
  `EMAIL` text,
  `REPORTA_A` text,
  `CARGO` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_FUNCIONARIOS`
--

INSERT INTO `TB_FUNCIONARIOS` (`ID_FUNCIONARIO`, `ID`, `SOBRENOME`, `NOME`, `FUNCAO`, `EMAIL`, `REPORTA_A`, `CARGO`) VALUES
(1, 1, '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[PROF]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHA_PRODUTOS`
--

CREATE TABLE `TB_LINHA_PRODUTOS` (
  `LINHA_PRODUTO` int NOT NULL,
  `DESCRICAO_TEXTO` text,
  `DESCRICAO_HTML` text,
  `IMAGE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_LINHA_PRODUTOS`
--

INSERT INTO `TB_LINHA_PRODUTOS` (`LINHA_PRODUTO`, `DESCRICAO_TEXTO`, `DESCRICAO_HTML`, `IMAGE`) VALUES
(3, 'OK', '[value-3]', '[OKLP]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `ID_CLIENTE` int DEFAULT NULL,
  `ID` int NOT NULL,
  `DATA_PAGMENTO` text,
  `QUANTIA` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PAGAMENTOS`
--

INSERT INTO `TB_PAGAMENTOS` (`ID_CLIENTE`, `ID`, `DATA_PAGMENTO`, `QUANTIA`) VALUES
(1, 2, '[value-3]', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDO`
--

CREATE TABLE `TB_PEDIDO` (
  `ID_PEDIDO` int NOT NULL,
  `DATA_PEDIDO` text,
  `DATA_LIMITE` text,
  `DATA_ENVIO` text,
  `STATUS_PEDIDO` text,
  `COMENTARIOS` text,
  `ID_CLIENTE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PEDIDO`
--

INSERT INTO `TB_PEDIDO` (`ID_PEDIDO`, `DATA_PEDIDO`, `DATA_LIMITE`, `DATA_ENVIO`, `STATUS_PEDIDO`, `COMENTARIOS`, `ID_CLIENTE`) VALUES
(1, '12 DE DEZEMBRO', '10 DE JANEIRO', '13 DE DEZEMBRO', 'ENVIADO', '[value-6]', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `ID` int NOT NULL,
  `NOME_PRODUTO` text,
  `ESCALA_PRODUTO` text,
  `FORNECEDOR_PRODUTO` text,
  `DESCRICAO_PRODUTO` text,
  `QUANTIA_ESTOQUE` int DEFAULT NULL,
  `PRECO_COMPRA` int DEFAULT NULL,
  `PRECO_VENDA` int DEFAULT NULL,
  `LINHA_PRODUTO` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `TB_PRODUTOS`
--

INSERT INTO `TB_PRODUTOS` (`ID`, `NOME_PRODUTO`, `ESCALA_PRODUTO`, `FORNECEDOR_PRODUTO`, `DESCRICAO_PRODUTO`, `QUANTIA_ESTOQUE`, `PRECO_COMPRA`, `PRECO_VENDA`, `LINHA_PRODUTO`) VALUES
(1, '[value-2]', '[value-3]', '[value-4]', '[value-5]', 8665, 10, 19, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Índices de tabela `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD KEY `FK_PEDIDO_ID` (`ID_PEDIDO`),
  ADD KEY `FK_PRODUTO_ID` (`ID`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD PRIMARY KEY (`ID_FUNCIONARIO`),
  ADD KEY `FK_ESCRITORIO_ID` (`ID`);

--
-- Índices de tabela `TB_LINHA_PRODUTOS`
--
ALTER TABLE `TB_LINHA_PRODUTOS`
  ADD PRIMARY KEY (`LINHA_PRODUTO`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CLIENTE_ID` (`ID_CLIENTE`);

--
-- Índices de tabela `TB_PEDIDO`
--
ALTER TABLE `TB_PEDIDO`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_ID_CLIENTE` (`ID_CLIENTE`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_LINHA_PRODUTO` (`LINHA_PRODUTO`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD CONSTRAINT `FK_PEDIDO_ID` FOREIGN KEY (`ID_PEDIDO`) REFERENCES `TB_PEDIDO` (`ID_PEDIDO`),
  ADD CONSTRAINT `FK_PRODUTO_ID` FOREIGN KEY (`ID`) REFERENCES `TB_PRODUTOS` (`ID`);

--
-- Restrições para tabelas `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD CONSTRAINT `FK_ESCRITORIO_ID` FOREIGN KEY (`ID`) REFERENCES `TB_ESCRITORIOS` (`ID`);

--
-- Restrições para tabelas `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD CONSTRAINT `FK_CLIENTE_ID` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `TB_CLIENTES` (`ID_CLIENTE`);

--
-- Restrições para tabelas `TB_PEDIDO`
--
ALTER TABLE `TB_PEDIDO`
  ADD CONSTRAINT `FK_ID_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `TB_CLIENTES` (`ID_CLIENTE`);

--
-- Restrições para tabelas `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD CONSTRAINT `FK_LINHA_PRODUTO` FOREIGN KEY (`LINHA_PRODUTO`) REFERENCES `TB_LINHA_PRODUTOS` (`LINHA_PRODUTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
