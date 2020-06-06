
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength             
        
    def receiveDamage(self, thedamage):
        self.health =  self.health - thedamage


# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
  
    def receiveDamage(self, thedamage):
        self.health =  self.health - thedamage
        if self.health > 0:
            return f"{self.name} has received {thedamage} points of damage"
        if self.health <= 0:
            return f"{self.name} has died in act of combat"

    def battleCry(self):
        return "Odin Owns You All!"


# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)
    
    def receiveDamage(self, thedamage):
        self.health =  self.health - thedamage
        if self.health > 0:
            return f"A Saxon has received {thedamage} points of damage"
        if self.health <= 0:
            return f"A Saxon has died in combat"
    
          


# War

import random
class War(Viking, Saxon):
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, Viking):
        self.vikingArmy.append(Viking)
        
      
    def addSaxon(self, Saxon):
        self.saxonArmy.append(Saxon)
       
    
    def vikingAttack(self):
         s = super().attack

         

        

        


        

    def showStatus(self):
        if not self.saxonArmy:
            return f"Vikings have won the war of the century!"
        if not self.vikingArmy:
            return f"Saxons have fought for their lives and survive another day..."
        if self.vikingArmy and self.saxonArmy:
            return f"Vikings and Saxons are still in the thick of battle."

