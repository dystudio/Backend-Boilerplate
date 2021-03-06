CREATE DATABASE IF NOT EXISTS dev_db;
USE dev_db;

CREATE TABLE IF NOT EXISTS user (
id VARCHAR(40) PRIMARY KEY,
name VARCHAR(200) NOT NULL UNIQUE,
password VARCHAR(128),
expired BOOLEAN DEFAULT FALSE,
locked BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS authority (
name VARCHAR(40) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS user_authority (
user_id VARCHAR(40),
authority_name VARCHAR(40)
);
