CREATE DATABASE IF NOT EXISTS aula04_ambiente
CHARACTER SET utf8mb4;

SHOW DATABASES LIKE 'aula04%';

USE aula04_ambiente;

SELECT DATABASE() AS banco_em_uso;

SELECT VERSION() AS versao, @@port AS porta;

SELECT COUNT(*) AS filmes FROM sakila.film;

SELECT COUNT(*) AS clientes FROM sakila.customer;

SELECT COUNT(*) AS alugueis FROM sakila.rental;