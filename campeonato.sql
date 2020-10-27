-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Out-2020 às 02:02
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `campeonato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_campeonato`
--

CREATE TABLE `tb_campeonato` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `codigo_campeao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_campeonato`
--

INSERT INTO `tb_campeonato` (`id`, `nome`, `ano`, `codigo_campeao`) VALUES
(1, 'Brasileirão Série A', 2020, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_detalhamentopartida`
--

CREATE TABLE `tb_detalhamentopartida` (
  `id` int(11) NOT NULL,
  `codigo_partida` int(11) NOT NULL,
  `codigo_jogador` int(11) NOT NULL,
  `quantidade_gol` int(11) NOT NULL,
  `quantidade_cartao_vermelho` int(11) NOT NULL,
  `quantidade_cartao_amarelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_detalhamentopartida`
--

INSERT INTO `tb_detalhamentopartida` (`id`, `codigo_partida`, `codigo_jogador`, `quantidade_gol`, `quantidade_cartao_vermelho`, `quantidade_cartao_amarelo`) VALUES
(1, 1, 27, 0, 0, 0),
(2, 1, 26, 1, 1, 2),
(3, 1, 32, 0, 0, 1),
(4, 1, 30, 0, 0, 0),
(5, 1, 24, 0, 0, 0),
(6, 1, 25, 0, 0, 0),
(7, 1, 28, 0, 0, 0),
(8, 1, 29, 0, 0, 0),
(9, 1, 23, 0, 0, 0),
(10, 1, 33, 0, 0, 0),
(11, 1, 31, 0, 0, 0),
(12, 1, 12, 0, 0, 0),
(13, 1, 13, 0, 0, 0),
(14, 1, 14, 0, 0, 0),
(15, 1, 16, 0, 0, 0),
(16, 1, 15, 0, 0, 0),
(17, 1, 18, 0, 0, 0),
(18, 1, 17, 0, 0, 0),
(19, 1, 19, 0, 0, 0),
(20, 1, 21, 0, 0, 0),
(21, 1, 20, 0, 0, 1),
(22, 1, 22, 0, 0, 0),
(24, 2, 1, 0, 0, 0),
(25, 2, 3, 0, 0, 0),
(26, 2, 2, 0, 0, 0),
(27, 2, 5, 0, 0, 0),
(28, 2, 4, 0, 0, 0),
(29, 2, 43, 0, 0, 0),
(30, 2, 7, 0, 0, 0),
(31, 2, 6, 0, 0, 0),
(32, 2, 44, 0, 0, 0),
(33, 2, 9, 0, 0, 1),
(34, 2, 8, 0, 0, 0),
(35, 2, 10, 2, 0, 0),
(36, 2, 11, 0, 0, 0),
(37, 2, 34, 0, 0, 0),
(38, 2, 35, 0, 0, 0),
(39, 2, 36, 0, 0, 0),
(40, 2, 37, 0, 0, 0),
(41, 2, 38, 1, 0, 0),
(42, 2, 39, 0, 0, 0),
(43, 2, 40, 0, 0, 0),
(44, 2, 41, 0, 0, 0),
(45, 2, 42, 0, 0, 0),
(48, 3, 24, 0, 0, 0),
(49, 3, 26, 0, 0, 0),
(50, 3, 25, 0, 0, 0),
(51, 3, 28, 0, 0, 0),
(52, 3, 27, 0, 0, 0),
(53, 3, 32, 0, 0, 0),
(54, 3, 30, 0, 0, 0),
(55, 3, 29, 0, 0, 0),
(56, 3, 31, 0, 0, 0),
(57, 3, 33, 1, 0, 0),
(58, 3, 1, 0, 0, 0),
(59, 3, 5, 0, 0, 0),
(60, 3, 7, 0, 0, 0),
(61, 3, 6, 0, 0, 0),
(62, 3, 4, 0, 0, 0),
(63, 3, 2, 0, 0, 0),
(64, 3, 10, 0, 0, 0),
(65, 3, 8, 0, 0, 0),
(66, 3, 11, 0, 0, 0),
(67, 3, 9, 2, 0, 1),
(68, 3, 3, 0, 0, 0),
(69, 3, 23, 2, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_jogador`
--

CREATE TABLE `tb_jogador` (
  `id` int(11) NOT NULL,
  `codigo_time` int(11) NOT NULL,
  `numero_camisa` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `posicao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_jogador`
--

INSERT INTO `tb_jogador` (`id`, `codigo_time`, `numero_camisa`, `nome`, `data_nascimento`, `posicao`) VALUES
(1, 3, 45, 'Hugo Souza', '1999-01-31', 'Goleiro'),
(2, 3, 2, 'Gustavo Henrique', '1993-03-24', 'Zagueiro'),
(3, 3, 31, 'Natan Bernardo de Souza', '2001-02-06', 'Zagueiro'),
(4, 3, 16, 'Filipe Luís', '1985-08-09', 'Lateral-esquerdo'),
(5, 3, 44, 'Mauricio Isla', '1988-06-12', 'Lateral-direito'),
(6, 3, 33, 'Thiago Maia', '1997-03-23', 'Volante'),
(7, 3, 5, 'Willian Arão', '1992-03-12', 'Volante'),
(8, 3, 11, 'Victor Vinícius Coelho Santos', '1993-10-09', 'Atacante'),
(9, 3, 7, 'Éverton Ribeiro', '1989-04-10', 'Ponta-direita'),
(10, 3, 8, 'Gerson Santos da Silva', '1997-05-20', 'Meio-campista'),
(11, 3, 21, 'Pedro Guilherme', '1997-06-20', 'Centro-avante'),
(12, 2, 12, 'Marcelo Lomba', '1986-12-18', 'Goleiro'),
(13, 2, 4, 'Rodrigo Moledo', '1987-10-27', 'Zagueiro'),
(14, 2, 35, 'Zé Gabriel', '1999-01-21', 'Meio-campista'),
(15, 2, 6, 'Uendel Pereira Gonçalves', '1988-08-08', 'Lateral-esquerdo'),
(16, 2, 2, 'Heitor Rodrigues da Fonseca', '2000-11-05', 'Zagueiro'),
(17, 2, 8, 'Edenílson Andrade dos Santos', '1989-12-18', 'Volante'),
(18, 2, 19, 'Rodrigo Lindoso', '1989-06-06', 'Volante'),
(19, 2, 23, 'Marcos Guilherme', '1995-08-05', 'Atacante'),
(20, 2, 99, 'Abel Hernández', '1990-08-08', 'Atacante'),
(21, 2, 88, 'Patrick Bezerra', '1992-07-29', 'Meio-campista'),
(22, 2, 17, 'Thiago Galhardo', '1989-07-20', 'Meio-campista'),
(23, 1, 46, 'Isaque Elias', '1997-04-22', 'Atacante'),
(24, 1, 11, 'Paulo Victor Mileo Vidotti', '1987-01-12', 'Goleiro'),
(25, 1, 38, 'Antônio Josenildo Rodrigues de Oliveira', '1997-10-10', 'Zagueiro'),
(26, 1, 14, 'David Braz', '1987-05-21', 'Zagueiro'),
(27, 1, 12, 'Bruno Cortês', '1987-03-11', 'Lateral-esquerdo'),
(28, 1, 17, 'Luis Manuel Orejuela', '1995-08-20', 'Lateral-direito'),
(29, 1, 16, 'Lucas Silva Borges', '1993-02-16', 'Volante'),
(30, 1, 15, 'Darlan Mendes', '1998-04-16', 'Meio-campista'),
(31, 1, 19, 'Luiz Fernando', '1996-10-16', 'Atacante'),
(32, 1, 11, 'Éverton Cardoso da Silva', '1988-12-11', 'Ponta-esquerda'),
(33, 1, 20, 'Thaciano Mickael', '1995-05-12', 'Meio-campista'),
(34, 4, 1, 'Aderbar dos Santos Neto', '1990-03-17', 'Goleiro\r\n'),
(35, 4, 34, 'Pedro Henrique Ribeiro Gonçalves', '1995-10-02', 'Zagueiro'),
(36, 4, 44, 'Thiago Heleno', '1988-09-17', 'Zagueiro'),
(37, 4, 16, 'Abner Felipe Souza', '1996-05-30', 'Lateral-esquerdo'),
(38, 4, 26, 'Erick Luis Conrado', '1997-11-14', 'Lateral-direito'),
(39, 4, 5, 'Wellington Aparecido Martins', '1991-01-28', 'Volante'),
(40, 4, 88, 'Christian Roberto Alves', '2000-12-19', 'Meio-campista'),
(41, 4, 11, 'Maycon Vinícius Ferreira', '1992-07-29', 'Meio-campista'),
(42, 4, 3, 'Lucho González', '1981-01-19', 'Meio-campista'),
(43, 4, 96, 'Carlos Eduardo Ferreira', '1996-10-10', 'Atacante\r\n'),
(44, 4, 79, 'Renato Kayser', '1996-02-17', 'Atacante');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_partida`
--

CREATE TABLE `tb_partida` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `codigo_campeonato` int(11) NOT NULL,
  `codigo_ganhador` int(11) DEFAULT NULL,
  `codigo_mandante` int(11) NOT NULL,
  `codigo_visitante` int(11) NOT NULL,
  `quantidade_gol_mandante` int(11) NOT NULL,
  `quantidade_gol_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_partida`
--

INSERT INTO `tb_partida` (`id`, `data`, `codigo_campeonato`, `codigo_ganhador`, `codigo_mandante`, `codigo_visitante`, `quantidade_gol_mandante`, `quantidade_gol_visitante`) VALUES
(1, '2020-10-25', 1, 1, 2, 1, 0, 1),
(2, '2020-05-07', 1, 3, 3, 4, 2, 1),
(3, '2020-10-14', 1, 1, 3, 1, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_time`
--

CREATE TABLE `tb_time` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_time`
--

INSERT INTO `tb_time` (`id`, `nome`) VALUES
(1, 'Grêmio'),
(2, 'Internacional'),
(3, 'Flamengo'),
(4, 'Athletico Paranaense');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_campeonato`
--
ALTER TABLE `tb_campeonato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_campeao` (`codigo_campeao`);

--
-- Índices para tabela `tb_detalhamentopartida`
--
ALTER TABLE `tb_detalhamentopartida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_partida` (`codigo_partida`),
  ADD KEY `codigo_jogador` (`codigo_jogador`);

--
-- Índices para tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codigo_time` (`codigo_time`);

--
-- Índices para tabela `tb_partida`
--
ALTER TABLE `tb_partida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_partida` (`codigo_campeonato`),
  ADD KEY `codigo_mandante` (`codigo_mandante`),
  ADD KEY `codigo_visitante` (`codigo_visitante`),
  ADD KEY `codigo_ganhador` (`codigo_ganhador`);

--
-- Índices para tabela `tb_time`
--
ALTER TABLE `tb_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_campeonato`
--
ALTER TABLE `tb_campeonato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_detalhamentopartida`
--
ALTER TABLE `tb_detalhamentopartida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `tb_partida`
--
ALTER TABLE `tb_partida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_time`
--
ALTER TABLE `tb_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_campeonato`
--
ALTER TABLE `tb_campeonato`
  ADD CONSTRAINT `tb_campeonato_ibfk_1` FOREIGN KEY (`codigo_campeao`) REFERENCES `tb_time` (`id`);

--
-- Limitadores para a tabela `tb_detalhamentopartida`
--
ALTER TABLE `tb_detalhamentopartida`
  ADD CONSTRAINT `tb_detalhamentopartida_ibfk_1` FOREIGN KEY (`codigo_partida`) REFERENCES `tb_partida` (`id`),
  ADD CONSTRAINT `tb_detalhamentopartida_ibfk_2` FOREIGN KEY (`codigo_jogador`) REFERENCES `tb_jogador` (`id`);

--
-- Limitadores para a tabela `tb_jogador`
--
ALTER TABLE `tb_jogador`
  ADD CONSTRAINT `tb_jogador_ibfk_1` FOREIGN KEY (`codigo_time`) REFERENCES `tb_time` (`id`);

--
-- Limitadores para a tabela `tb_partida`
--
ALTER TABLE `tb_partida`
  ADD CONSTRAINT `tb_partida` FOREIGN KEY (`codigo_campeonato`) REFERENCES `tb_campeonato` (`id`),
  ADD CONSTRAINT `tb_partida_ibfk_2` FOREIGN KEY (`codigo_mandante`) REFERENCES `tb_time` (`id`),
  ADD CONSTRAINT `tb_partida_ibfk_3` FOREIGN KEY (`codigo_visitante`) REFERENCES `tb_time` (`id`),
  ADD CONSTRAINT `tb_partida_ibfk_4` FOREIGN KEY (`codigo_ganhador`) REFERENCES `tb_time` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
