
# Soldier
import random

class Soldier:
    def __init__(self, health, strength):
        self.health=health
        self.strength=strength
    
    def attack(self):
        return self.strength 
    def receiveDamage(self,damage):
        self.health=self.health-damage

# Viking


class Viking(Soldier):
    def __init__(self, name, health , strength):
        Soldier.__init__(self,health,strength)
        self.name=name 

    def battleCry(self):
        return "Odin Owns You All!"
    def receiveDamage(self,damage):
        self.health=self.health-damage
        if self.health<=0:
            return f"{self.name} has died in act of combat" 
        else:
            return f"{self.name} has received {damage} points of damage" 


# Saxon


class Saxon(Soldier):
    
    def receiveDamage(self,damage):
        self.health=self.health-damage
        if self.health<=0:
            return "A Saxon has died in combat" 
        else:
            return f"A Saxon has received {damage} points of damage" 

# War

class War():
    def __init__(self):  
        self.vikingArmy=[]
        self.saxonArmy= []
    
    def addViking(self,viking):
        self.vikingArmy.append(viking)
    def addSaxon(self,saxon):
        self.saxonArmy.append(saxon)
    
    def vikingAttack(self):

        elegido_vikin=random.choice(self.vikingArmy)
        elegido_saxon=random.choice(self.saxonArmy)
        result= elegido_saxon.receiveDamage(elegido_vikin.attack())
        
        if result=="A Saxon has died in combat":
            self.saxonArmy.remove(elegido_saxon)
        return result
    
    def saxonAttack(self):
        elegido_vikin=random.choice(self.vikingArmy)
        elegido_saxon=random.choice(self.saxonArmy)
        resulta= elegido_vikin.receiveDamage(elegido_saxon.attack())
        
        if resulta== f"{elegido_vikin.name} has died in act of combat":
            self.vikingArmy.remove(elegido_vikin)
        return resulta
   
    def showStatus(self):
        
        if self.vikingArmy==[]:
            return "Saxons have fought for their lives and survive another day..."
        
        elif self.saxonArmy==[]:
            return "Vikings have won the war of the century!"
        
        else: 
            return "Vikings and Saxons are still in the thick of battle."
 