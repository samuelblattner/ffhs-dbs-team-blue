SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema starview
-- Please do not push the schema without commenting out
-- the following two statements.
-- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS `starview` DEFAULT CHARACTER SET latin1 ;
-- USE `starview` ;

-- -----------------------------------------------------
-- Table `country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `country` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(2) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `country_unique_rows` UNIQUE ( `code`,`name`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `place`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `place` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NOT NULL,
  `country_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `place_country_id_idx` (`country_id` ASC),
  CONSTRAINT `place_country_id_fk`
    FOREIGN KEY (`country_id`)
    REFERENCES `country` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `place_unique_rows` UNIQUE ( `name`, `zip` ,`country_id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `address` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NULL DEFAULT NULL,
  `other_address_details` VARCHAR(45) NULL DEFAULT NULL,
  `place_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `address_place_id_idx` (`place_id` ASC),
  CONSTRAINT `address_place_id_fk`
    FOREIGN KEY (`place_id`)
    REFERENCES `place` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `address_unique_rows` UNIQUE (street,place_id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `attribute_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attribute_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `attribute_type_unique_rows` UNIQUE (`name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `attribute`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attribute` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(100) NOT NULL,
  `attribute_type_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `attribute_attribute_type_id_fk`
      FOREIGN KEY (`attribute_type_id`)
      REFERENCES `attribute_type` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `room_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  `maximum_number_of_guests` INT(2) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
    CONSTRAINT `room_type_unique_rows` UNIQUE ( `name`, `description` ,`maximum_number_of_guests` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `room` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `room_type_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `room_room_type_id_idx` (`room_type_id` ASC),
  CONSTRAINT `room_room_type_id_fk`
    FOREIGN KEY (`room_type_id`)
    REFERENCES `room_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `room_unique_rows` UNIQUE ( `name`,`room_type_id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `attribute_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `attribute_room` (
  `room_id` INT(11) NOT NULL,
  `optional_equipment` TINYINT(1) NULL DEFAULT '0',
  `attribute_id` INT(11) NOT NULL,
  PRIMARY KEY (`room_id`, `attribute_id`),
  INDEX `attribute_room_room_id_idx` (`room_id` ASC),
  INDEX `attribute_room_room_attribute_id_idx` (`attribute_id` ASC),
  CONSTRAINT `attribute_room_room_attribute_id_fk`
    FOREIGN KEY (`attribute_id`)
    REFERENCES `attribute` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `attribute_room_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `company_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `company_type_unique_rows` UNIQUE ( `name` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `gender`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gender` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `gender_unique_rows` UNIQUE ( `name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `name_suffix`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `name_suffix` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `name_suffix_unique_rows` UNIQUE ( `name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `forename` VARCHAR(50) NULL DEFAULT NULL,
  `surname` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(254) NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `gender_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `person_gender_id_idx` (`gender_id` ASC),
  CONSTRAINT `person_gender_id_fk`
    FOREIGN KEY (`gender_id`)
    REFERENCES `gender` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `person_unique_rows` UNIQUE ( `gender_id`, `forename`,`surname`,`email`,`birthday`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person_name_suffix`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_name_suffix` (
  `person_id` INT(11) NOT NULL,
  `name_suffix_id` INT(11) NOT NULL,
  PRIMARY KEY (`person_id`, `name_suffix_id`),
  INDEX `person_name_suffix_person_id_idx` (`person_id` ASC),
  INDEX `person_name_suffix_name_suffix_id_idx` (`name_suffix_id` ASC),
  CONSTRAINT `person_name_suffix_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_name_suffix_name_suffix_id_fk`
    FOREIGN KEY (`name_suffix_id`)
    REFERENCES `name_suffix` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `customer_number` INT(11) NULL DEFAULT NULL,
  `contact_person_id` INT(11) NULL DEFAULT NULL,
  `company_type_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `company_name_uniq` (`name` ASC),
  INDEX `contact_person_id_idx` (`contact_person_id` ASC),
  INDEX `company_company_type_id_idx` (`company_type_id` ASC),
  CONSTRAINT `company_company_type_id_fk`
    FOREIGN KEY (`company_type_id`)
    REFERENCES `company_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `company_person_id_fk`
    FOREIGN KEY (`contact_person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `company_unique_rows` UNIQUE ( `name`,`company_type_id` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `company_phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_phone` (
  `company_id` INT(11) NOT NULL,
  `phone_number_id` INT(11) NOT NULL,
  PRIMARY KEY (`company_id`, `phone_number_id`),
  INDEX `company_phone_phone_number_id_idx` (`phone_number_id` ASC),
  CONSTRAINT `company_phone_company_id_fk`
    FOREIGN KEY (`company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `company_phone_phone_number_id_fk`
    FOREIGN KEY (`phone_number_id`)
    REFERENCES `phone_number` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `inquiry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `group_name` VARCHAR(45) NULL,
  `from` DATE NOT NULL,
  `to` DATE NOT NULL,
  `number_of_guests` INT(10) UNSIGNED NOT NULL,
  `created_at` DATE NOT NULL,
  `reservation_until` DATE NOT NULL,
  `cancelled_at` DATE NULL DEFAULT NULL,
  `special_request` TEXT NULL,
  `person_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `inquiry_person_id_idx` (`person_id` ASC),
  CONSTRAINT `inquiry_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `inquiry_unique_rows` UNIQUE ( `group_name`,`from`,`to` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `inquiry_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inquiry_room` (
  `inquiry_id` INT(11) NOT NULL,
  `room_id` INT(11) NOT NULL,
  PRIMARY KEY (`inquiry_id`, `room_id`),
  INDEX `inquiry_room_room_id_idx` (`room_id` ASC),
  CONSTRAINT `inquiry_room_inquiry_id_fk`
    FOREIGN KEY (`inquiry_id`)
    REFERENCES `inquiry` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `inquiry_room_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `checkin` DATE NULL DEFAULT NULL,
  `checkout` DATE NULL DEFAULT NULL,
  `cancelled_at` DATE NULL DEFAULT NULL,
  `responsible_person_id` INT(11) NOT NULL,
  `payment_card_id` INT(11) NULL DEFAULT NULL,
  `guest_company_id` INT(11) NULL DEFAULT NULL,
  `referring_company_id` INT(11) NULL DEFAULT NULL,
  `referring_person_id` INT(11) NULL DEFAULT NULL,
  `referring_inquiry` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `booking_responsible_person_id_idx` (`responsible_person_id` ASC),
  INDEX `booking_payment_card_id_idx` (`payment_card_id` ASC),
  INDEX `booking_guest_company_id_idx` (`guest_company_id` ASC),
  INDEX `booking_referring_company_id_idx` (`referring_company_id` ASC),
  INDEX `booking_referring_person_id_idx` (`referring_person_id` ASC),
  INDEX `booking_referring_inquiry_id_idx` (`referring_inquiry` ASC),
  CONSTRAINT `booking_responsible_person_id_fk`
    FOREIGN KEY (`responsible_person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_payment_card_id_fk`
    FOREIGN KEY (`payment_card_id`)
    REFERENCES `payment_card` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_guest_company_id_fk`
    FOREIGN KEY (`guest_company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_referring_company_id_fk`
    FOREIGN KEY (`referring_company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_referring_person_id_fk`
    FOREIGN KEY (`referring_person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inquiry`
    FOREIGN KEY (`referring_inquiry`)
    REFERENCES `inquiry` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `payment_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `payment_card` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `expirationdate` VARCHAR(7) NOT NULL,
  `company` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `payment_card_unique_rows` UNIQUE ( `number`,`expirationdate`,`company` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `booking_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking_person` (
  `person_id` INT(11) NOT NULL,
  `booking_id` INT(11) NOT NULL,
  PRIMARY KEY (`person_id`, `booking_id`),
  INDEX `booking_person_booking_id_idx` (`booking_id` ASC),
  INDEX `booking_person_person_id_idx` (`person_id` ASC),
  CONSTRAINT `booking_person_booking_id_fk`
    FOREIGN KEY (`booking_id`)
    REFERENCES `booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_person_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `booking_room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking_room` (
  `booking_id` INT(11) NOT NULL,
  `room_id` INT(11) NOT NULL,
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `company_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `company_address` (
  `address_id` INT(11) NOT NULL,
  `company_id` INT(11) NOT NULL,
  PRIMARY KEY (`address_id`, `company_id`),
  INDEX `company_address_address_id_idx` (`address_id` ASC),
  INDEX `company_address_company_id_idx` (`company_id` ASC),
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `employee_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `employee_type_unique_rows` UNIQUE ( `name` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `legacy_social_insurance_number` DECIMAL(11, 0) NULL DEFAULT NULL,
  `social_insurance_number` DECIMAL(13, 0) NOT NULL,
  `employee_type_id` INT(11) NOT NULL,
  `person_id` INT(11) NOT NULL,
  UNIQUE INDEX `employee_social_insurance_number_uniq` (`social_insurance_number` ASC),
  UNIQUE INDEX `employee_legacy_social_insurance_number_uniq` (`legacy_social_insurance_number` ASC),
  INDEX `employee_employee_type_id_idx` (`employee_type_id` ASC),
  INDEX `employee_person_id_idx` (`person_id` ASC),
  UNIQUE INDEX `person_id_UNIQUE` (`person_id` ASC),
  PRIMARY KEY (`id`, `person_id`),
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `language` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `language` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `employee_type_unique_rows` UNIQUE ( `language` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_address` (
  `address_id` INT(11) NOT NULL,
  `person_id` INT(11) NOT NULL,
  PRIMARY KEY (`address_id`, `person_id`),
  INDEX `person_address_address_id_idx` (`address_id` ASC),
  INDEX `person_address_person_id_idx` (`person_id` ASC),
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person_company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_company` (
  `person_id` INT(11) NOT NULL,
  `company_id` INT(11) NOT NULL,
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person_language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_language` (
  `person_id` INT(11) NOT NULL,
  `language_id` INT(11) NOT NULL,
  `is_preferred` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`person_id`, `language_id`),
  INDEX `language_id_idx` (`language_id` ASC),
  CONSTRAINT `person_language_language_id_fk`
    FOREIGN KEY (`language_id`)
    REFERENCES `language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `person_language_person_id_fk`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `phone_number_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `phone_number_type` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
    CONSTRAINT `phone_number_type_unique_rows` UNIQUE ( `name` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `phone_number`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `phone_number` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number_type_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `phone_number_phone_number_type_id_idx` (`phone_number_type_id` ASC),
  CONSTRAINT `phone_number_phone_number_type_id_fk`
    FOREIGN KEY (`phone_number_type_id`)
    REFERENCES `phone_number_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `phone_number_unique_rows` UNIQUE ( `phone_number_type_id`,`number` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `person_phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `person_phone` (
  `person_id` INT(11) NOT NULL,
  `phone_number_id` INT(11) NOT NULL,
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
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `picture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `picture` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `room_id` INT(11) NOT NULL,
  `link_to_picture` VARCHAR(1024) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `picture_room_id_idx` (`room_id` ASC),
  CONSTRAINT `picture_room_id_fk`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `picture_unique_rows` UNIQUE ( `room_id`,`link_to_picture` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
