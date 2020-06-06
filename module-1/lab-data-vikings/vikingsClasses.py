
# Soldier


class Soldier:
    def __init__(self, health, strength):

        self.health=health
        self.strength=strength

    def attack(self):

        return self.strength
    
    def receiveDamage(self,damage):
        
        self.health = self.health - damage

        pass
    

# Viking


class Viking(Soldier):
    def __init__(self,name,health, strength):
        self.name=name
        super().__init__(health,strength)
        
        
    def attack(self):
        return self.strength
        
    def receiveDamage(self,damage):
        self.health = self.health - damage
        if self.health <=0:
            return f"{self.name} has died in act of combat"
        elif self.health >0:
            return f"{self.name} has received {damage} points of damage"
    def battleCry(self):
        return "Odin Owns You All!"
        pass
        

# Saxon


class Saxon(Soldier):
    def __init__(self,health, strength):

        super().__init__(health,strength)

    def receiveDamage(self,damage):
        self.health = self.health - damage
        if self.health <=0:
            return f"A Saxon has died in combat"
        elif self.health >0:
            return f"A Saxon has received {damage} points of damage"
            pass




    

# War


class War:
    pass
