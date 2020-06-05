
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
        if self.health > thedamage:
            return f"{self.name} has received {thedamage} points of damage"
        if self.health < thedamage:
            return f"{self.name} has died in act of combat"

    def battleCry(self):
        return "Odin Owns You All!"


# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)
    
    def receiveDamage(self, thedamage):
        self.health =  self.health - thedamage
        if self.health > thedamage:
            return f"A Saxon has received {thedamage} points of damage"
        if self.health < thedamage:
            return f"A Saxon has died in combat"



# War


class War:
    pass
