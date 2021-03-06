﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 7.4.201.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 17/10/2018 18:07:01
-- Server version: 5.5.5-10.1.32-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE cake_snct;

--
-- Drop table `products`
--
DROP TABLE IF EXISTS products;

--
-- Drop table `products_users`
--
DROP TABLE IF EXISTS products_users;

--
-- Drop table `statuses`
--
DROP TABLE IF EXISTS statuses;

--
-- Drop table `types`
--
DROP TABLE IF EXISTS types;

--
-- Drop table `users`
--
DROP TABLE IF EXISTS users;

--
-- Set default database
--
USE cake_snct;

--
-- Create table `users`
--
CREATE TABLE users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  age VARCHAR(255) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  status_id INT(11) DEFAULT NULL,
  username VARCHAR(255) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  created DATETIME DEFAULT NULL,
  modified DATETIME DEFAULT NULL,
  role VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create table `types`
--
CREATE TABLE types (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create table `statuses`
--
CREATE TABLE statuses (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create table `products_users`
--
CREATE TABLE products_users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  product_id INT(11) DEFAULT NULL,
  user_id INT(11) DEFAULT NULL,
  quantity SMALLINT(6) DEFAULT NULL,
  date DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create table `products`
--
CREATE TABLE products (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  value VARCHAR(255) DEFAULT NULL,
  type_id INT(11) DEFAULT NULL,
  status_id INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

-- 
-- Dumping data for table users
--
-- Table cake_snct.users does not contain any data (it is empty)

-- 
-- Dumping data for table types
--
-- Table cake_snct.types does not contain any data (it is empty)

-- 
-- Dumping data for table statuses
--
-- Table cake_snct.statuses does not contain any data (it is empty)

-- 
-- Dumping data for table products_users
--
-- Table cake_snct.products_users does not contain any data (it is empty)

-- 
-- Dumping data for table products
--
-- Table cake_snct.products does not contain any data (it is empty)

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;