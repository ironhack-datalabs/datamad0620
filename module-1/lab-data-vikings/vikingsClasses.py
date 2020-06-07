
# Soldier


class Soldier():
    def __init__(self,health,strength):
        self.health= health
        self.strength=strength

    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health=self.health - damage



# Viking


class Viking(Soldier):
    def __init__(self,name,health,strength):
        super().__init__(health, strength)
        self.name = name
  
    def receiveDamage(self,damage):
        self.health=self.health - damage
        if self.health <=0:
            return f"{self.name} has died in combat"
        else:
            return f"{self.name} has reveived {damage} points of damage"

    def battleCry(self):
        return "Odin Owns You all!"
            

# Saxon


class Saxon(Soldier):

    def __init__(self, name, health, strength):                #¿Este def init si no lo pongo sigue funcionando?
         super().__init__(health,strength)
         
    def receiveDamage(self, damage):
        self.health=self.health - damage

        if self.health <=0:
            return f"Saxon has reveived {damage} points of damage" 
        else:
            return f"Saxon has died in combat"
# War


class War:
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    def addViking(self, viking):
        self.vikingArmy.append(viking)
    def addSaxon(self,Saxon)




    
