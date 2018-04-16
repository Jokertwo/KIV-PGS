



def factorial(cislo):
    if(cislo <= 0):
        return 1
    else:
        return cislo * factorial(cislo - 1)

def mocnina(cislo, mocnina):
    return cislo ** mocnina

def scitani(cislo1,cislo2):
    return cislo1 + cislo2

def odmocnina(cislo,odmocnina):
    return cislo ** 1/odmocnina

def ziskej_vstup(text,max):
    run = True
    while run:
        
        try:
            temp = input(text)
            cislo = float(temp)
            if(cislo > max):
                print("Cislo nesmi byt vetsi nez " + str(max))
            elif(cislo < 1):
                print("Cislo nesmi byt mense nez 1")
            else:
                run = False
        except ValueError:
            print("Lze zadat pouze cisla")
    else:
        return cislo
    
def printFac(cislo):
    print(str(cislo) + "! = " + str(factorial(cislo)))
    return -1


maxI = 20
print("Zadejte cislo v rozmezi 1 az " + str(maxI))

prvni = ziskej_vstup("Prvni cislo: ",maxI)
druhe = ziskej_vstup("Druhe cislo:",maxI)


printFac(prvni)
printFac(druhe)

print(str(prvni) + " + " + str(druhe) + " = " + str(scitani(prvni,druhe)))
print(str(prvni) + "na" + str(druhe) + " = " + str(mocnina(prvni,druhe)))
print(str(druhe) + " odmocnina z " + str(prvni) + " = " + str(odmocnina(prvni,druhe)))
input()

