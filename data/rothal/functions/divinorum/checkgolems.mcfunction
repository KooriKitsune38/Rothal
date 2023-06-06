#> rothal:divinorum/checkgolems

scoreboard objectives add k.DivGolems dummy

execute store result score .number k.DivGolems if entity @e[type=iron_golem,distance=..50]

execute unless score .number k.DivGolems matches 3.. run function rothal:divinorum/spawngolem

scoreboard objectives remove k.DivGolems