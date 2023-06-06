#> rothal:asgolem

data modify entity @s AngryAt set from entity @p UUID
effect give @s slow_falling infinite 1 true

execute store result score @s k.GolemRotation run data get entity @s Rotation[1]

execute if predicate rothal:golem_attacking run tag @s add k.GolemAttacking

execute if entity @s[tag=k.GolemAttacking] if score @s k.GolemRotation matches ..-20 run function rothal:divinorum/levitategolem
execute if entity @s[tag=k.GolemAttacking] if block ~ ~-1 ~ air if score @s k.GolemRotation matches ..5 run function rothal:divinorum/levitategolem

execute if entity @s[tag=k.GolemAttacking,tag=!k.GolemSound] run function rothal:divinorum/golemattack
execute if entity @s[tag=!k.GolemLevitating] run effect clear @s levitation

tag @s[predicate=!rothal:golem_attacking] remove k.GolemAttacking
tag @s[tag=!k.GolemAttacking] remove k.GolemSound
tag @s remove k.GolemLevitating