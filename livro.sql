-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Livro
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Livro` ;

-- -----------------------------------------------------
-- Schema Livro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Livro` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `Livro` ;

-- -----------------------------------------------------
-- Table `tb_emprestimos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_emprestimos` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tb_emprestimos` (
  `id_emprestimos` INT NOT NULL AUTO_INCREMENT,
  `id_membro` INT NOT NULL,
  `data_emprestimo` DATE NOT NULL,
  `data_devolucao` DATE NOT NULL,
  `id_livro` INT NOT NULL,
  PRIMARY KEY (`id_emprestimos`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tb_livros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_livros` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tb_livros` (
  `id_livro` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `id_autor` INT NOT NULL,
  `id_categoria` INT NOT NULL,
  `ano_publicado` YEAR(45) NOT NULL,
  `isbn` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_livro`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tb_autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_autor` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tb_autor` (
  `id_autor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `nacionalidade` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_autor`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tb_categorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_categorias` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tb_categorias` (
  `id_categorias` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_categorias`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tb_membros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_membros` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tb_membros` (
  `id_membros` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `celular` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_membros`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
