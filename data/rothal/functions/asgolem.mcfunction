#> rothal:asgolem

data modify entity @s AngryAt set from entity @p UUID

execute store result score @s k.GolemRotation run data get entity @s Rotation[1]

effect give @s slow_falling infinite 1 true
execute if predicate rothal:golem_attacking if score @s k.GolemRotation matches ..-20 run function rothal:divinorum/levitategolem
execute if predicate rothal:golem_attacking if block ~ ~-1.5 ~ air if score @s k.GolemRotation matches ..5 run function rothal:divinorum/levitategolem
execute if entity @s[tag=!k.GolemLevitating] run effect clear @s levitation
tag @s remove k.GolemLevitating