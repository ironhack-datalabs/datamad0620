
# Soldier

class Soldier:
    def __init__(self, health, strength):
        self.health=health 
        self.strength=strength 
    def attack (self):
        return self.strength 
    def receiveDamage(self,damage):
        self.health -= damage

    pass


# Viking


class Viking(Soldier):
    def __init__(self,name,health,strength):
        super().__init__(health,strength)
        self.name=name
    def receiveDamage(self,damage):
        self.health -=  damage
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"
    def battleCry(self):
        return "Odin Owns You All!"

    pass

# Saxon

class Saxon(Soldier):
    def __init__(self,health,strength):
        super().__init__(health,strength)
    def receiveDamage(self,damage):
        self.health -=  damage
        if self.health > 0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return "A Saxon has died in combat"
        
    pass

# War
import random

class War:
    def __init__(self):
        self.vikingArmy=[]
        self.saxonArmy=[]
    def addViking(self,Viking):
        self.vikingArmy.append(Viking*10)
    def addSaxon(self,Saxon):
        self.saxonArmy.append(Saxon*10)
    def vikingAttack(self):
        random_Viking=random.choice(self.vikingArmy)
        random_Viking(self.strength)=Saxon.receiveDamage()
        for i in self.vikingArmy:
            if i(self.health) <=0:
                self.vikingArmy.remove(i)
    def saxonAttack(self):
        random_Saxon=random.random(self.saxonArmy)
        random_Saxon(self.strength)=Viking.receiveDamage()
        for i in self.saxonArmy:
            if i(self.health) <=0:
                self.saxonArmy.remove(i)
    def showStatus(self):
        if len(self.saxonArmy)==0:
            return "Vikings have won the war of the century!"
        elif len(self.vikingArmy)==0:
            return "Saxons have fought for their lives and survive another day..."
        else:
            return "Vikings and Saxons are still in the thick of battle."


#### `vikingAttack()` method
