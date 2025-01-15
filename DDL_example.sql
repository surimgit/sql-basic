-- 학교 데이터베이스

-- 학생(학번, 이름, 주소, 전화번호)
-- 수업(수업코드, 수업이름, 교실, 담당교사)
-- 교실(교실번호, 층, 인원수,)
-- 교사(교번, 이름, 주소, 전화번호, 직책)
-- 개발자 계정: school_developer@% / school123
-- 개발자 계정: school_developer@localhost / school123
CREATE DATABASE school;

USE school;

CREATE TABLE student(
	student_number VARCHAR(5),
    name VARCHAR(15),
    address TEXT,
    tel_number VARCHAR(15)
);

CREATE TABLE class(
	class_code VARCHAR(5),
    name VARCHAR(25),
    class_room INT,
	class_teacher VARCHAR(10)
);

CREATE TABLE class_room(
	class_room_number INT,
    floor INT,
    seats INT
);

CREATE TABLE teacher(
	teacher_number VARCHAR(10),
    name VARCHAR(15),
    address TEXT,
    tel_number VARCHAR(13),
    position VARCHAR(50)
);

CREATE USER 'school_developer'@'%' IDENTIFIED BY 'school123';
CREATE USER 'school_developer'@'localhost' IDENTIFIED BY 'school123';