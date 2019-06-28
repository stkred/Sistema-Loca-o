-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Jun-2019 às 20:05
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_locacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `senha` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cod` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cpf` varchar(30) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`senha`, `email`, `cod`, `nome`, `endereco`, `cpf`, `telefone`) VALUES
('202cb962ac59075b964b07152d234b70', '123@hotmail.com', 2, '123', '123', '123', '123'),
('202cb962ac59075b964b07152d234b70', 'primeiroteste@gmail.com', 3, 'Samara Carla', 'Rua Sao Francisco', '98989989898', '88999765443'),
('21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 4, 'ADM', 'Rua do ADM', '32432423242', '88999999999'),
('a2e63ee01401aaeca78be023dfbb8c59', 'oi@oi.com', 5, 'oi', 'rua cavalcante', '23456666666', '89999999999'),
('202cb962ac59075b964b07152d234b70', 'joaodebarros@gmail.com', 6, 'JoÃ£o de Barros', 'Rua: Raimunda de Castro Neto', '87876565434', '88999187654'),
('202cb962ac59075b964b07152d234b70', 'mvenicius.2001@gmail.com', 7, 'Marcos Venicius', 'Prefeito Eduardo Girao, N222', '447579789', '99229922'),
('202cb962ac59075b964b07152d234b70', 'sdjusisdysds@cbhx.com', 8, 'Priscila Santos', 'idfbysdsbysdbfyusdb', '232424242', '77777777777'),
('202cb962ac59075b964b07152d234b70', 'lav@gmai.com', 9, 'Lav', 'rua emanuel bezzerrraa', '4352525', '88776655443'),
('202cb962ac59075b964b07152d234b70', 'iaquino@gmail.com', 10, 'iago de aquino', 'Rua: Raimunda de Castro Neto', '4352525', '99182850'),
('81dc9bdb52d04dc20036dbd8313ed055', 'kerciaandrade2001@gmail.com', 11, 'Mirna Kercia Martins', 'DES', '12345678965', '93243453'),
('81dc9bdb52d04dc20036dbd8313ed055', 'gildembergsantos@gmail.com', 12, 'gildemberg', 'flamenga,10', '12378989898', '88992337043'),
('202cb962ac59075b964b07152d234b70', 'pedrito@email.com', 13, 'Pedrito', '123', '123', '88999999999');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `NOME` varchar(100) DEFAULT NULL,
  `PRECO` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(500) DEFAULT NULL,
  `COD` int(11) NOT NULL,
  `FOTO` varchar(100) DEFAULT NULL,
  `CATEGORIA` varchar(50) DEFAULT NULL,
  `MARCA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`NOME`, `PRECO`, `DESCRICAO`, `COD`, `FOTO`, `CATEGORIA`, `MARCA`) VALUES
('CarPlay', 200, 'Cor:preto;   Resistente a qualquer tipo de estrada;   Ano:2019', 27, 'b4e09d12d77616ea20108af85545e996.jpg', 'Automóvel', 'BMW'),
('Projetor A', 40, 'Cor:preto;   Configuranção automática;', 28, 'bb346c71bc345d07461f165979b289e8.jpg', 'Eletrônica', 'JP'),
('oi', 30, 'Cor:preto e vermelho ', 29, 'a07ec04ca1e6e8323b006f9d4bc97efe.jpg', 'Capacete', 'CapG'),
('Capacete de gato', 35, 'Preto, Bonito, Clássico, Chic', 31, '92eba0a6b1d9eaa8ce4624a30bf256ac.jpg', 'Eletrônica', 'BMW'),
('APPLE', 320, 'Notebook Vermelho', 34, 'dd688e0dc00d37e9040bd72506752e70.jpg', 'Eletrônica', 'Apple');

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicita`
--

CREATE TABLE `solicita` (
  `COD` int(11) NOT NULL,
  `DATA_LOCACAO` varchar(30) DEFAULT NULL,
  `DATA_DEVOLUCAO` varchar(30) DEFAULT NULL,
  `CODCLIENTE` int(11) DEFAULT NULL,
  `CODPRODUTO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `solicita`
--

INSERT INTO `solicita` (`COD`, `DATA_LOCACAO`, `DATA_DEVOLUCAO`, `CODCLIENTE`, `CODPRODUTO`) VALUES
(26, '2019-06-12', '2019-06-20', 6, 29),
(27, '2019-08-14', '2019-09-18', 6, 29),
(28, '2019-06-24', '2019-06-27', 6, 28),
(29, '2019-10-10', '2019-10-24', 6, 28),
(30, '2020-02-13', '2020-03-19', 6, 28),
(31, '2019-09-06', '2019-10-06', 6, 28),
(32, '2019-06-24', '2019-06-30', 6, 29),
(33, '2011-09-06', '2011-09-07', NULL, 29),
(34, '2005-06-05', '2005-06-06', 3, 29),
(35, '2011-01-01', '2011-01-02', 3, 27),
(36, '2025-12-31', '2028-06-28', 10, 28),
(37, '2019-10-30', '2019-10-31', 12, 29),
(38, '2019-06-27', '2019-07-03', 3, 34),
(39, '2022-01-09', '2022-12-12', 13, 34),
(40, '2020-03-10', '2020-03-29', 3, 34);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) NOT NULL,
  `senha` int(11) NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`email`, `senha`, `cod`) VALUES
('admin', 123, 1),
('admin', 123, 1),
('adm', 123, 2),
('adm', 123, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`COD`);

--
-- Indexes for table `solicita`
--
ALTER TABLE `solicita`
  ADD PRIMARY KEY (`COD`),
  ADD KEY `CODCLIENTE` (`CODCLIENTE`),
  ADD KEY `CODPRODUTO` (`CODPRODUTO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `solicita`
--
ALTER TABLE `solicita`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `solicita`
--
ALTER TABLE `solicita`
  ADD CONSTRAINT `solicita_ibfk_1` FOREIGN KEY (`CODCLIENTE`) REFERENCES `cliente` (`cod`),
  ADD CONSTRAINT `solicita_ibfk_2` FOREIGN KEY (`CODPRODUTO`) REFERENCES `produto` (`COD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
