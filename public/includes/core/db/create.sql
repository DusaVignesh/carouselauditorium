CREATE DATABASE claimz;

-- create admin table
CREATE TABLE `claimz`.`admin` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `emp_id` VARCHAR(11) NOT NULL,
    `username` VARCHAR(225) NOT NULL,
    `password` VARCHAR(225) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `ph_no` VARCHAR(20) NOT NULL,
    `email` VARCHAR(25) NOT NULL,
    `department` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `aadhar` int(12) NOT NULL,
    `name_on_adhar` VARCHAR(100) NOT NULL,
    `dob` VARCHAR(11) NOT NULL,
    `name_on_pan` VARCHAR(11) NOT NULL,
    `bank_name` VARCHAR(255) NOT NULL,
    `ifsc_code` VARCHAR(255) NOT NULL,
    `acc_no` VARCHAR(255) NOT NULL,
    `name_on_bank` VARCHAR(255) NOT NULL,
    `status` VARCHAR(10) NOT NULL,
    `access` INT(10) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE `Emp_id` (`emp_id`),
    UNIQUE (`username`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`chat` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `from_user` VARCHAR(255) NOT NULL,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`mail` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `from_user` VARCHAR(255) NOT NULL,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    `type` INT(2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`notifications` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    `type` INT(2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`store` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
CREATE TABLE `claimz`.`coupon` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`deal` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`bank` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    

    PRIMARY KEY (`id`)
) ENGINE = InnoDB;CREATE DATABASE claimz;

-- create admin table
CREATE TABLE `claimz`.`admin` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `emp_id` VARCHAR(11) NOT NULL,
    `username` VARCHAR(225) NOT NULL,
    `password` VARCHAR(225) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `ph_no` VARCHAR(20) NOT NULL,
    `email` VARCHAR(25) NOT NULL,
    `department` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `aadhar` int(12) NOT NULL,
    `name_on_adhar` VARCHAR(100) NOT NULL,
    `dob` VARCHAR(11) NOT NULL,
    `name_on_pan` VARCHAR(11) NOT NULL,
    `bank_name` VARCHAR(255) NOT NULL,
    `ifsc_code` VARCHAR(255) NOT NULL,
    `acc_no` VARCHAR(255) NOT NULL,
    `name_on_bank` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE `Emp_id` (`emp_id`),
    UNIQUE (`username`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`chat` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `from_user` VARCHAR(255) NOT NULL,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`mail` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `from_user` VARCHAR(255) NOT NULL,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    `type` INT(2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`notifications` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `to_user` VARCHAR(255) NOT NULL,
    `txt` LONGTEXT NOT NULL,
    `type` INT(2) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`store` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
CREATE TABLE `claimz`.`coupon` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`deal` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `claimz`.`bank` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    

    PRIMARY KEY (`id`)
) ENGINE = InnoDB;