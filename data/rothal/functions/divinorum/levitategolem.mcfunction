#> rothal:divinorum/levitategolem

execute positioned ~ ~1.5 ~ positioned as @s if block ^ ^ ^.2 air facing entity @p eyes anchored feet run tp ^ ^ ^.1
effect give @s levitation 1 1 true
particle cloud ~ ~ ~ .2 .2 .2 0 5 normal

tag @s add k.GolemLevitating