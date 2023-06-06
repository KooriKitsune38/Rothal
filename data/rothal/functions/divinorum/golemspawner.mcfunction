#> rothal:divinorum/golemspawner

execute as @e[type=marker,tag=k.GolemSpawner,tag=!k.Inactive] at @s run function rothal:divinorum/checkgolems

schedule function rothal:divinorum/golemspawner 600s