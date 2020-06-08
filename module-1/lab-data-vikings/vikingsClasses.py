
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health=health
        self.strength=strength
        
    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health=self.health-damage


    pass


# Viking


class Viking(Soldier):
    def __init__(self,name,health,strength):
        super().__init__(health,strength)
        self.name=name

    def attack(self) :
        return super().attack()
    
    def receiveDamage(self,damage):
        self.health=self.health-damage
        if self.health<=0:
            return f"{self.name} has died in act of combat"
        else:
            return f"{self.name} has received {damage} points of damage"

    def battleCry(self):
        return "Odin Owns You All!"


    pass


# Saxon


class Saxon(Soldier):
    def __init__(self,health,strength):
        super().__init__(health,strength)

    def receiveDamage(self,damage):
        self.health=self.health-damage
        if self.health<=0:
            return f"A Saxon has died in combat"
        else:
            return f"A Saxon has received {damage} points of damage"

    pass



# War

import random 

class War:

    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    
    def addViking(self,viking):
        self.vikingArmy.append(viking)

    def addSaxon(self,saxon):
        self.saxonArmy.append(saxon)
    
    def vikingAttack(self):
        random_saxon=random.choice(self.saxonArmy)
        random_viking=random.choice(self.vikingArmy)
        resultado=random_saxon.receiveDamage(random_viking.attack())
        if resultado=="A Saxon has died in combat":
            self.saxonArmy.remove(random_saxon)
        return resultado
    
    def saxonAttack(self):
        random_saxon=random.choice(self.saxonArmy)
        random_viking=random.choice(self.vikingArmy)
        resultado=random_viking.receiveDamage(random_saxon.attack())
        if resultado=="{random_viking.name} has died in act of combat":
            self.vikingArmy.remove(random_viking)
        return resultado
        

    def showStatus(self):
        if len(self.saxonArmy)==0:
            return f"Vikings have won the war of the century!"
        elif len(self.vikingArmy)==0:
            return f"Saxons have fought for their lives and survive another day..."
        elif (len(self.saxonArmy)>=1) and (len(self.vikingArmy)>=1):
            return f"Vikings and Saxons are still in the thick of battle."

    pass
