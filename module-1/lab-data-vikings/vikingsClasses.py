
# Soldier
class Soldier:
    def __init__(self, name, health, strengh):
        self.name = name
        self.health = health
        self.strengh = strengh

    def attack(self):
        return self.strengh()

    def receiveDamage(self, damage):
        self.health -= damage

# Viking
class Viking(Soldier):
    def __init__(self, name, health, strengh):
        super().__init__(self, health, strengh):
                self.health = health
                self.strengh = strengh
        def attack():
            return self.strengh
        def receiveDamage(self,damage):
            return self.health-=damage
        if self.health > 0:
            print(f"(self.name){" has received DAMAGE points of damage"})
        else:
            print(f"(self.name){"has died in act of combat"})
        def battleCry():
            return "Odin Owns You All!"


# Saxon
class Saxon(Soldier):
    def __init__(self, name, health, strengh):
        super().__Init__(self,health,strengh):
                self.health=health
                self.strengh=strengh
       def attack():
           return self.strengh
       def receiveDamage(damage):
           return self.health-=damage
        if health>0:
            print("A Saxon has received DAMAGE points of damage")
        else:
            print("A Saxon has died in combat")
# War
class War:
    def __init__(self,):  
        vikingArmy=[]
        saxonArmy=[]
    def addViking(self,Viking):
        self.Viking=Viking
        vikingArmy.append(Viking)
    def addSaxon():(self,Saxon):
        self.Saxon=Saxon
        saxonArmy.append(Saxon)
    def vikingAttack():
        if Saxon (receiveDamage())==Viking(strength):
            if Saxon (health)<0:
                saxonArmy-=1
        return self.Saxon(receiveDamage()),self.Viking(strength)
    def saxonAttack():
        if Viking (receiveDamage())==Saxon(strength):
            if Viking (health)<0:
            vikingArmy-=1
        return self.Viking(receiveDamage()),self.Saxon(strength)
    def showStatus():
        if vikingArmy == 0:
            return "Saxons have fought for their lives and survive another day..."
        elif saxonArmy == 0:
            return "Vikings have won the war of the century!"
        elif vikingArmy == 1 and saxonArmy == 1:
            return "Vikings and Saxons are still in the thick of battle."
