-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS guvi;
USE guvi;

-- Create Admin table
CREATE TABLE IF NOT EXISTS Admin (
    user_id VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    eid VARCHAR(255),
    phno VARCHAR(15),
    valid BOOLEAN DEFAULT FALSE
);

-- Create Faculty table
CREATE TABLE IF NOT EXISTS Faculty (
    user_id VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    phno VARCHAR(15),
    eid VARCHAR(255),
    valid BOOLEAN DEFAULT FALSE
);

-- Create Student table
CREATE TABLE IF NOT EXISTS Student (
    user_id VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    e_id VARCHAR(255),
    ph_no VARCHAR(15),
    valid BOOLEAN DEFAULT FALSE
);

-- Create UploadDetail table
CREATE TABLE IF NOT EXISTS UploadDetail (
    fileName VARCHAR(255) PRIMARY KEY,
    fileSize BIGINT,
    fileType VARCHAR(50),
    uploadStatus VARCHAR(50)
);
