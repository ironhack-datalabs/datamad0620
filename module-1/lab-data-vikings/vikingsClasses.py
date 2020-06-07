

# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health -= damage


# Viking

class Viking(Soldier):

    def __init__(self,name, health, strength):
        self.name = name

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        elif self.health <= 0:
            return f"{self.name} has died in act of combat"
    def battleCry(self):
        return "nose que d odin"


   
# Saxon
class Saxon(Soldier):

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return "A Saxon has received DAMAGE points of damage"
        elif self.health <= 0:
            return  "A Saxon has died in combat"
        
    




"""





# War
class War:
    pass







caso practico hecho con Jorge. Clases/objetos/inheritance..)
es mas o menos igual que el ejercicio

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def attack(self, anotherone):
        anotherone.health -=self.strength

    def receiveDamage(self, damage): 
        self.health -= damage


class SoldadoAmericano (Soldier):
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength


    def curarse(self):
        self.health += 50

class SoldierChileno(Soldier):
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength



  

    def comincarradio(self, mensaje):
        print ("Enviando", mensaje)
# Viking


viking = SoldierChileno(500, 750)

viking.comincarradio("Nos estan masacrando")
    
jaimegonzalez = SoldadoAmericano(800, 900)       
    
text = "caraculo"

print(jaimegonzalez.health)

jaimegonzalez.receiveDamage(76)

print(jaimegonzalez.health)

jaimegonzalez.curarse()

print(jaimegonzalez.health)

print (viking.health)
jaimegonzalez.attack(viking)
print(viking.health)

# Saxon


class Saxon:
    pass

# War


class War:
    pass

"""