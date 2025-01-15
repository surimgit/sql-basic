-- 축구 경기 데이터베이스

-- 참가팀(team) [국가명(nation), 조(match_group), 감독(manager), 피파랭킹(ranking)
-- 선수(player) [이름(name), 생년월일(birth), 포지션(postion), 국가(country), 등번호(uniform_number)] 
-- 경기장(stadium) [이름(name), 주소(address), 좌석(seats)]
-- 심판(referee) [이름(name), 생년월일(birth), 경력(position), 국가(country)]

-- 사용자: football_developer @ % foot!@
-- 사용자: football_broadcast @ % foot#$

CREATE DATABASE football;

use football;

CREATE TABLE team(
	nation VARCHAR(60),
	match_group VARCHAR(20),
	manager VARCHAR(100),
	ranking INT              
);

CREATE TABLE player(
	name VARCHAR(100),
	birth VARCHAR(10),
	position VARCHAR(20),
	country VARCHAR(60),
	uniform_number INT              
);

CREATE TABLE stadium(
	name VARCHAR(50),
	address VARCHAR(20),
	seats INT              
);

CREATE TABLE referee(
	name VARCHAR(100),
	birth VARCHAR(10),
	position VARCHAR(6),
	country VARCHAR(60)     
);

CREATE USER 'football_developer'@'%' IDENTIFIED BY 'foot!@';
CREATE USER 'football_broadcast'@'%' IDENTIFIED BY 'foot#$';

-- 심판과 선수의 birth 컬럼의 데이터 타입을 DATE로 변경
ALTER TABLE referee MODIFY COLUMN birth DATE;
ALTER TABLE player MODIFY COLUMN birth DATE;