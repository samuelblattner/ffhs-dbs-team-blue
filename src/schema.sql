SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

drop SCHEMA  starview_new;
CREATE SCHEMA starview_new;
USE starview_new;

-- -----------------------------------------------------
-- Table `employee_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `legacy_social_insurance_number` VARCHAR(11) NULL,
  `social_insurance_number` VARCHAR(13) NOT NULL,
  `employee_type_id` INT NOT NULL,
  `person_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `employee_social_insurance_number_uniq` (`social_insurance_number` ASC),
  UNIQUE INDEX `employee_legacy_social_insurance_number_uniq` (`legacy_social_insurance_number` ASC),
  INDEX `employee_employee_type_id_idx` (`employee_type_id` ASC),
  INDEX `employee_person_id_idx` (`person_id` ASC),
  CONSTRAINT `employee_employee_type_id_fk`
    FOREIGN KEY (`employee_type_id`)
    REFERENCES `employee_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `employee_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `forename` VARCHAR(50) NULL,
  `surname` VARCHAR(50) NULL,
  `email` VARCHAR(254) NULL,
  `birthday` DATE NULL,
  `employee_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `language` (
  `id` INT NOT NULL,
  `language` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person_language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_language` (
  `person_id` INT NOT NULL,
  `language_id` INT NOT NULL,
  `is_preferred` TINYINT(1) NULL,
  PRIMARY KEY (`person_id`, `language_id`),
  INDEX `language_id_idx` (`language_id` ASC),
  CONSTRAINT `person_language_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_language_language_id_fk`
    FOREIGN KEY (`language_id`)
    REFERENCES `language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  `contact_person_id` INT NULL,
  `company_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `company_name_uniq` (`name` ASC),
  INDEX `contact_person_id_idx` (`contact_person_id` ASC),
  INDEX `company_company_type_id_idx` (`company_type_id` ASC),
  CONSTRAINT `company_person_id_fk`
    FOREIGN KEY (`contact_person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `company_company_type_id_fk`
    FOREIGN KEY (`company_type_id`)
    REFERENCES `company_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person_company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_company` (
  `person_id` INT NOT NULL,
  `company_id` INT NOT NULL,
  PRIMARY KEY (`person_id`, `company_id`),
  INDEX `person_company_company_id_idx` (`company_id` ASC),
  INDEX `person_company_people_id_idx` (`person_id` ASC),
  CONSTRAINT `person_company_company_id_fk`
    FOREIGN KEY (`company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_company_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phone_number_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `phone_number_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `phone_number`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `phone_number` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `phone_number_type_id` INT NOT NULL,
  `number` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `phone_number_phone_number_type_id_idx` (`phone_number_type_id` ASC),
  CONSTRAINT `phone_number_phone_number_type_id_fk`
    FOREIGN KEY (`phone_number_type_id`)
    REFERENCES `phone_number_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person_phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_phone` (
  `person_id` INT NOT NULL,
  `phone_number_id` INT NOT NULL,
  PRIMARY KEY (`person_id`, `phone_number_id`),
  INDEX `person_phone_phone_number_id_idx` (`phone_number_id` ASC),
  CONSTRAINT `person_phone_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_phone_phone_number_id_fk`
    FOREIGN KEY (`phone_number_id`)
    REFERENCES `phone_number` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` TEXT NULL,
  `city` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `other_address_details` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inquiry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `from` VARCHAR(45) NOT NULL,
  `to` VARCHAR(45) NOT NULL,
  `num_persons` INT UNSIGNED NOT NULL,
  `person_id` INT NOT NULL,
  `issued` DATE NOT NULL,
  `cancelled` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `person_id_idx` (`person_id` ASC),
  CONSTRAINT `inquiry_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  employing_company_id INT NULL,
  referring_company_id INT NULL,
  referring_person_id INT NULL,
  `checkin` DATE NULL,
  `checkout` DATE NULL,
  `canceled` TINYINT(1) NULL DEFAULT 0,
  `referring_inquiry` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `booking_referring_company_id_idx` (referring_company_id ASC),
  INDEX `booking_employing_company_id_idx` (employing_company_id ASC),
  INDEX `booking_referring_person_id_idx` (referring_person_id ASC),
  CONSTRAINT `booking_referring_company_id_fk`
    FOREIGN KEY (referring_company_id)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_employing_company_id_fk`
    FOREIGN KEY (employing_company_id)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_referring_person_id_fk`
    FOREIGN KEY (referring_person_id)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inquiry`
    FOREIGN KEY (referring_inquiry)
    REFERENCES `inquiry` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_card` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `expirationdate` VARCHAR(7) NOT NULL,
  `company` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `booking_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking_person` (
  `person_id` INT NOT NULL,
  `booking_id` INT NOT NULL,
  `isResponsible` TINYINT(1) NULL DEFAULT 0,
  `payment_card_id` INT NULL,
  PRIMARY KEY (`person_id`, `booking_id`),
  INDEX `booking_person_booking_id_idx` (`booking_id` ASC),
  INDEX `booking_person_person_id_idx` (`person_id` ASC),
  INDEX `booking_person_payment_card_id_idx` (`payment_card_id` ASC),
  CONSTRAINT `booking_person_booking_id_fk`
    FOREIGN KEY (`booking_id`)
    REFERENCES `booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_person_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_person_payment_card_id_fk`
    FOREIGN KEY (`payment_card_id`)
    REFERENCES `payment_card` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `picture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `picture` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `room_id` INT NOT NULL,
  `link_to_picture` VARCHAR(1024) NULL,
  PRIMARY KEY (`id`),
  INDEX `picture_room_id_idx` (`room_id` ASC),
  CONSTRAINT `picture_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `booking_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking_room` (
  `booking_id` INT NOT NULL,
  `room_id` INT NOT NULL,
  PRIMARY KEY (`booking_id`, `room_id`),
  INDEX `booking_room_room_id_idx` (`room_id` ASC),
  CONSTRAINT `booking_room_booking_id_fk`
    FOREIGN KEY (`booking_id`)
    REFERENCES `booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_room_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `room_attribute`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room_attribute` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `attribute` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `attribute_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attribute_room` (
  `room_id` INT NOT NULL,
  `room_attribute_id` INT NOT NULL,
  PRIMARY KEY (`room_id`, `room_attribute_id`),
  INDEX `attribute_room_room_id_idx` (`room_id` ASC),
  CONSTRAINT `attribute_room_room_attribute_id_fk`
    FOREIGN KEY (`room_attribute_id`)
    REFERENCES `room_attribute` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `attribute_room_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `person_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_address` (
  `address_id` INT NOT NULL,
  `person_id` INT NOT NULL,
  INDEX `person_address_address_id_idx` (`address_id` ASC),
  INDEX `person_address_person_id_idx` (`person_id` ASC),
  PRIMARY KEY (`address_id`, `person_id`),
  CONSTRAINT `person_address_address_id_fk`
    FOREIGN KEY (`address_id`)
    REFERENCES `address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_address_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_address` (
  `address_id` INT NOT NULL,
  `company_id` INT NOT NULL,
  INDEX `company_address_address_id_idx` (`address_id` ASC),
  INDEX `company_address_company_id_idx` (`company_id` ASC),
  PRIMARY KEY (`address_id`, `company_id`),
  CONSTRAINT `company_address_address_id_fk`
    FOREIGN KEY (`address_id`)
    REFERENCES `address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `company_address_company_id_fk`
    FOREIGN KEY (`company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
