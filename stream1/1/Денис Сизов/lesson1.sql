-- MySQL Script generated by MySQL Workbench
-- Sat Aug 26 09:41:10 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`country` ;

CREATE TABLE IF NOT EXISTS `mydb`.`country` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`area`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`area` ;

CREATE TABLE IF NOT EXISTS `mydb`.`area` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `country_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_area_country_idx` (`country_id` ASC),
  CONSTRAINT `fk_area_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `mydb`.`country` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`district`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`district` ;

CREATE TABLE IF NOT EXISTS `mydb`.`district` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `area_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_district_area1_idx` (`area_id` ASC),
  CONSTRAINT `fk_district_area`
    FOREIGN KEY (`area_id`)
    REFERENCES `mydb`.`area` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`city`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`city` ;

CREATE TABLE IF NOT EXISTS `mydb`.`city` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `district_id` INT UNSIGNED NOT NULL,
  `area_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_city_district1_idx` (`district_id` ASC),
  INDEX `fk_city_area1_idx` (`area_id` ASC),
  CONSTRAINT `fk_city_district`
    FOREIGN KEY (`district_id`)
    REFERENCES `mydb`.`district` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_city_area`
    FOREIGN KEY (`area_id`)
    REFERENCES `mydb`.`area` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
