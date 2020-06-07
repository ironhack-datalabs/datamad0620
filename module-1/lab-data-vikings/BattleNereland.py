from vikingsClasses import War, Viking, Saxon, Soldier
import random
#Quería haber sacado un warrior(viking or saxon) random de las listas que he creado, peor no consigo que me salga, por ejemplo un vikingo con sus atributos:
#name, health, stregth, solo mes salía con uno de ellos haciendo un for loop (for i in Viki, print i.stregth)...
#Al principio hice dos funciones, una para Viki y otra para Saxo.
#Finalmente decií ponerlas en una...pero nada.
def Warriors(callWarrior):
    
    VikiName =["Erika", "Einar", "Gerd", "Axe", "Aren", "Olson", "Viggo", "Seren", "Valkiria", "Sigrid"]
    Viki = [Viking(name, health,strength) for name in [random.choice(VikiName)] 
    for health in [random.randint(30, 200)] for strength in [random.randint(30, 300)]]
    Saxo = [Saxon(health,strength)for health in [random.randint(30, 200)] for strength in [random.randint(30, 300)]]
    
    if callWarrior == "Viki":
        for i in Viki:
            return i.name, i.health, i.strength
    elif callWarrior == Saxo:
        for i in "Saxo":
            return i.health, i.strength
Warriors("Viki")

#también pensé en hacer un dict...
#dictio = {"name" : VikingArmy(i.name), "health" : VikingArmy(i.health), "strength" : VikingArmy(i.streght)}



#Esto tendría que tener en cuenta un valor de la lista de guerreros para ambos valores, en realidad tendría que llamar a la función, 
#pero como me quedé aquí, no lo he implementado, además es incompatible con la última versión.

def MilieuBenefits(): 
    Saxon.strenght = random.choice(Saxo.strenght)
    Viking.streght = randon.choice(Viki.stength)
    Saxon.health = random.choice(Saxo.health)
    Viking.health = random.choice(Viki.health)
    milieu = random.choice[mountain, plain, woods]
    if milieu == mountain:
        Saxon.strength+= 10
    elif milieu == woods:
        Viking.strength += 10
    else:
        Saxon.heatlh += 20
        Viking.health += 20
MilieuBenefits()

#Y quería haber hecho algo más con la batalla, tipo piedra, papel o tijera en el cual ganar el qué más guerreros tuviera después de 6 battles...
#Estoy un poco picada, me gustaría seguir con ello una vez resuelva las dudas..