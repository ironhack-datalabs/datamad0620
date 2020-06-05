
# Soldier


class Soldier:
    def __init__(self, health, strength):

        self.health=health
        self.strength=strength
    def attack(self):

        return self.strength
    
    def receiveDamage(self,damage):

        self.health -= damage

        pass
    

# Viking


class Viking(Soldier):
    def  names(self,name):
        self.name=name
        self.health=health
        self.strength=strength
    def attack(Soldier):
        return self.strength
    def receiveDamage(self,damage):
        if (self.health - damage)<=0:
            return "{name} has died in act of combat"
        if (self.health - damage)<0:
            return "{name} has received {damage} points of damage"
    def battleCry(self):
        self.battleCry = "Odin Owns You All!"
        pass


        

# Saxon


class Saxon:
    pass

# War


class War:
    pass
