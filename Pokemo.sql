-- Active: 1693589840252@@127.0.0.1@3306@bd_pokemonrpg
#Mostrar todos los apodos de los pokemons atrapados durante el mes de septiembre del 2021. Ordenar por apodo de mayor a menor.
SELECT apodo ,YEAR(atrapado)
FROM pokemon
WHERE MONTH(atrapado) = 9 AND YEAR(atrapado) = 2021
ORDER BY apodo DESC;
#Mostrar el nombre de todas las especies junto con la cantidad de letras del mismo, siempre y
#cuando esta cantidad se encuentre entre 5 y 10 letras (topes incluidos). Ordenar por cantidad 
#de letras (mayor a menor) y luego por nombre (menor a mayor). Consejo: para el primer ordenamiento pueden:
SELECT nombre , CHAR_LENGTH(nombre)
FROM especie
WHERE CHAR_LENGTH(nombre) BETWEEN 5 AND 10
ORDER BY CHAR_LENGTH(nombre) DESC , nombre ASC;
#Mostrar cuántos pokemons hay con idEspecie igual a 3.
SELECT  COUNT(*)
FROM  pokemon
WHERE idEspecie = 3;
#Mostrar el promedio de nivel de los pokemons con idEntrenador igual a 1.
SELECT AVG(nivel)
FROM pokemon
WHERE idEntrenador = 1;
#Mostrar el promedio de peso y altura (info. en tabla Especie) de los pokemons
# con idEntrenador igual a 1 o 3 (info. en la tabla Pokemon).
SELECT AVG(peso), AVG(altura) 
FROM especie
JOIN pokemon ON especie.idEspecie = pokemon.idEspecie
WHERE pokemon.idEntrenador = 1 OR pokemon.idEntrenador = 3

