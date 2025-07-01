def addition(a, b):
    return a + b

def soustraction(a, b):
    return a - b

def multiplication(a, b):
    return a * b

def division(a, b):
    if b == 0:
        return "Erreur : division par zéro"
    return a / b

print("=== Calculatrice Python ===")
a = float(input("Entrez le premier nombre : "))
b = float(input("Entrez le deuxième nombre : "))

print("Opérations disponibles : +  -  *  /")
op = input("Choisissez une opération : ")

if op == "+":
    print("Résultat :", addition(a, b))
elif op == "-":
    print("Résultat :", soustraction(a, b))
elif op == "*":
    print("Résultat :", multiplication(a, b))
elif op == "/":
    print("Résultat :", division(a, b))
else:
    print("Opération inconnue")

