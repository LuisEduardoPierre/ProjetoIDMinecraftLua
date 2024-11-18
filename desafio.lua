--[[

ATRIBUTOS:
    - id: identificador único
    - NOME
    - DESCRIÇÃO
    - SOM EMITIDO
    - ATAQUE
    - DEFESA
    - VITALIDADE
    - VELOCIDADE
    - INTELIGENCIA
HABILIDADES: 
    - A DEFINIR

============================================
|NOME DO MOB
|BREVE DESCRIÇÃO DO MOB
|
|SOM DO MOB: ""
|
|ATRIBUTOS
|ATAQUE: *******
|DEFESA: *******
|
|
|
|
|
]]
--UTF8
os.execute("chcp 65001")
os.execute("cls")

-- Atributos
local attack = 0
local defense = 0
local health = 0
local speed = 0
local inteligence = 0

-- Criatura
local mob = ""
local description = ""
Emoji = ""
local sound =  ""
local favoriteTime = ""
local drops = ""
--Parser do emoji
local input = ""
--Personalizando de acordo com o User
local io = require("io")

print("Please input a mob name: ")
mob = io.read("l")
print("Please input a mob description: ")
description = io.read("l")
print("Please input the sound of the mob: ")
sound = io.read("l")
print("Please input the attack of the mob: ")
attack = io.read("n")
print("Please input the defense of the mob: ")
defense = io.read("n")
print("Please input the health of the mob: ")
health = io.read("n")
print("Please input the speed of the mob: ")
speed = io.read("n")
print("Please input the inteligence of the mob: ")
inteligence = io.read("n")
io.read()
print("Please input the time of day the mob is active: ")
favoriteTime = io.read("l")
print("Please input the drops of the mob: ")
drops = io.read("l")
print("Please input the emoji of the mob: ")
input = io.read("l")

--Verificação se o emoji digitado e compativel

if input:match("^U%+[A-Fa-f0-9]+$") then
    local codepoint = tonumber(input:sub(3),16)
    Emoji = utf8.char(codepoint)
end


--função que recebe um att e retorna uma barra de progresso em string
local function barra_progresso(att)
    local fullChar = "⬜"
    local emptyChar = "⬛"
    local result = ""
    for i = 1, 10, 1 do
        if i <= att then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end


--Cartão
print("=========================================================")
print("|")
print("|" .. mob)
print("|" ..description)
print("|")
print("|Emoji: " .. Emoji)
print("|Sound: " .. sound)
print("|Active Time: " .. favoriteTime)
print("|Drops: " .. drops)
print("|")
print("| ATRIBUTOS: ")
print("|    ATAQUE:       " .. barra_progresso(attack))
print("|    DEFESA:       " .. barra_progresso(defense))
print("|    VITALIDADE:   " .. barra_progresso(health))
print("|    VELOCIDADE:   " .. barra_progresso(speed))
print("|    INTELIGENCIA: " .. barra_progresso(inteligence))
print("=========================================================")