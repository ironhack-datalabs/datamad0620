import random
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength 

    def attack(self):
        return self.strength

    def receiveDamage(self,damage):
        self.health -= damage

    

# Viking


class Viking(Soldier):
    def __init__(self, name, health, strength):
        self.name = name
        self.health = health
        self.strength = strength

    def attack(self):
        return super().attack()

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"

    def battleCry(self):
        return "Odin Owns You All!"



    

# Saxon


class Saxon(Soldier):
    def __init__(self,health,strength):
        self.health = health
        self.strength = strength

    def attack(self):
        return super().attack()
    
    def receiveDamage(self, damage):
        self.health -= damage
        if self.health >0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return f"A Saxon has died in combat"

    

# War


class War:
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, Viking):
        self.vikingArmy.append(Viking)

    def addSaxon(self, Saxon):
        self.vikingArmy.append(Saxon)

    def vikingAttack(self):
        Viking1 = random.choice(self.vikingArmy)
        Saxon1 = random.choice(self.saxonArmy)
        battle = Saxon1.receiveDamage(Viking1.attack())
        if Saxon.health <= 0:
            self.saxonArmy.remove(Saxon1)
        return battle

    def saxonAttack(self):
        Viking1 = random.choice(self.vikingArmy)
        Saxon1 = random.choice(self.saxonArmy)
        battle = Viking1.receiveDamage(Saxon1.attack())
        if Viking1.health <= 0:
            self.vikingArmy.remove(Viking1)
        return battle

    def showStatus(self):
        if len(self.saxonArmy) == 0:
            return "Vikings and Saxons are still in the thick of battle."
        if len(self.vikingArmy)  == 0:
            return "Saxons have fought for their lives and survive another day..."
        if len(self.vikingArmy) >=1 and len(self.saxonArmy) >=1:
            return "Vikings and Saxons are still in the thick of battle."