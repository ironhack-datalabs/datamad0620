
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

import random

class War:
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    
    def addViking(self,Viking):
        
        self.vikingArmy.append(Viking)

    def addSaxon(self,Saxon):
        self.saxonArmy.append(Saxon)

    def vikingAttack(self):

        saxon=random.choice(self.saxonArmy)
        viking=random.choice(self.vikingArmy)

        attack = saxon.receiveDamage(viking.attack())

        for i in attack:
            if saxon.health <=0:

                self.saxonArmy.pop()
                return attack

                
            
    def saxonAttack(self):

        saxon=random.choice(self.saxonArmy)
        viking=random.choice(self.vikingArmy)

        attack = viking.receiveDamage(saxon.attack())

        for i in attack:
            if viking.health <=0:

                self.vikingArmy.pop()
                return attack
                
    def showStatus(self):
        
        if len(self.vikingArmy) == 0:

            return f"Saxons have fought for their lives and survive another day..."
            
        if len(self.saxonArmy) == 0:

            return f"Vikings have won the war of the century!"

        else:
            
            return "Vikings and Saxons are still in the thick of battle."
        

            

            


                

    


















    pass
