-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23/09/2022 às 03:10
-- Versão do servidor: 10.4.21-MariaDB
-- Versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meusFilmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `dataLancamento` date NOT NULL,
  `genero` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `galeria`
--

INSERT INTO `galeria` (`id`, `nome`, `dataLancamento`, `genero`) VALUES
(1, 'Gente Grande', '2002-02-12', ''),
(2, 'Jurassic Park', '2004-02-12', ''),
(3, 'sherek', '2004-02-12', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `generoGaleria`
--

CREATE TABLE `generoGaleria` (
  `idFilmes` int(11) NOT NULL,
  `Genero` varchar(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `generoGaleria`
--

INSERT INTO `generoGaleria` (`idFilmes`, `Genero`, `id`) VALUES
(1, 'comedia', 1),
(2, 'ação', 2),
(3, 'animaçao', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `generoGaleria`
--
ALTER TABLE `generoGaleria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_galeria` (`idFilmes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `generoGaleria`
--
ALTER TABLE `generoGaleria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `generoGaleria`
--
ALTER TABLE `generoGaleria`
  ADD CONSTRAINT `fk_galeria` FOREIGN KEY (`idFilmes`) REFERENCES `galeria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
