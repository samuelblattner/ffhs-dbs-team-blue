SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

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
  PRIMARY KEY (`id`),
  UNIQUE INDEX `social_insurance_number_UNIQUE` (`social_insurance_number` ASC),
  UNIQUE INDEX `legacy_social_insurance_number_UNIQUE` (`legacy_social_insurance_number` ASC),
  INDEX `fk_employee_employee_type1_idx` (`employee_type_id` ASC),
  CONSTRAINT `fk_employee_employee_type_id`
    FOREIGN KEY (`employee_type_id`)
    REFERENCES `employee_type` (`id`)
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
  PRIMARY KEY (`id`),
  INDEX `fk_person_employee1_idx` (`employee_id` ASC),
  CONSTRAINT `fk_person_employee1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `employee` (`id`)
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
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_company_person_idx` (`contact_person_id` ASC),
  INDEX `fk_company_company_type1_idx` (`company_type_id` ASC),
  CONSTRAINT `fk_company_person_id`
    FOREIGN KEY (`contact_person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_company_type_id`
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
  INDEX `fk_people_company_company_idx` (`company_id` ASC),
  INDEX `fk_people_company_people_idx` (`person_id` ASC),
  CONSTRAINT `fk_person_company_company_id`
    FOREIGN KEY (`company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_company_person_id`
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
  INDEX `fk_phoneNr_phoneNrType1_idx` (`phone_number_type_id` ASC),
  CONSTRAINT `fk_phone_number_phone_number_type_id`
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
  INDEX `fk_table1_phoneNr1_idx` (`phone_number_id` ASC),
  CONSTRAINT `fk_person_phone_person_id`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_phone_phone_number_id`
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
  `line1` VARCHAR(45) NULL,
  `line2` VARCHAR(45) NULL,
  `line3` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `other_address_details` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employing_company` INT NULL,
  `referring_company` INT NULL,
  `checkin` DATE NULL,
  `checkout` DATE NULL,
  `canceled` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `fk_booking_company2_idx` (`referring_company` ASC),
  INDEX `fk_booking_company1_idx` (`employing_company` ASC),
  CONSTRAINT `fk_booking_referring_company`
    FOREIGN KEY (`referring_company`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_employing_company`
    FOREIGN KEY (`employing_company`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `booking_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking_person` (
  `person_id` INT NOT NULL,
  `booking_id` INT NOT NULL,
  `isResponsible` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`person_id`, `booking_id`),
  INDEX `fk_booking_people_booking1_idx` (`booking_id` ASC),
  INDEX `fk_booking_people_people1_idx` (`person_id` ASC),
  CONSTRAINT `fk_booking_people_booking1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_people_people1`
    FOREIGN KEY (`person_id`)
    REFERENCES `person` (`id`)
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
  INDEX `fk_picture_room1_idx` (`room_id` ASC),
  CONSTRAINT `fk_picture_room_id`
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
  INDEX `fk_booking_room_room1_idx` (`room_id` ASC),
  CONSTRAINT `booking_room_booking_id`
    FOREIGN KEY (`booking_id`)
    REFERENCES `booking` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `booking_room_room_id`
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
  INDEX `fk_attribute_room_room1_idx` (`room_id` ASC),
  CONSTRAINT `fk_attribute_room_room_attribute_id`
    FOREIGN KEY (`room_attribute_id`)
    REFERENCES `room_attribute` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_attribute_room_room_id`
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
  INDEX `fk_person_address_address1_idx` (`address_id` ASC),
  INDEX `fk_person_address_person1_idx` (`person_id` ASC),
  PRIMARY KEY (`address_id`, `person_id`),
  CONSTRAINT `fk_person_address_address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_address_person1`
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
  INDEX `fk_company_address_address1_idx` (`address_id` ASC),
  INDEX `fk_company_address_company1_idx` (`company_id` ASC),
  PRIMARY KEY (`address_id`, `company_id`),
  CONSTRAINT `fk_company_address_address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_address_company1`
    FOREIGN KEY (`company_id`)
    REFERENCES `company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;