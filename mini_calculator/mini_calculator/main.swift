import Darwin

// Fonction permettant de demander à l'utilisateur d'entrer un nombre et de le convertir en entier
func input() -> Int {
    let strData = readLine()

    return Int(strData!)!
}

var countExec: Int
var numberOne: Int
var numberTwo: Int
var operation: Int
var result: Int

countExec = 0
numberOne = 0
numberTwo = 0
operation = 0
result = 0

func menu() {
    let text = """
               --- Menu ---
               1. Addition
               2. Soustraction
               3. Multiplication
               4. Division
               5. Modulo
               6. Carré

               Que voulez-vous ? (de 1 à 6)
               """
    print(text)
}

func calc(numberOne: Int, numberTwo: Int, operation: Int) {
    switch operation {
    case 1:
        result = numberOne + numberTwo

    case 2:
        result = numberOne - numberTwo

    case 3:
        result = numberOne * numberTwo

    case 4:
        result = numberOne / numberTwo

    case 5:
        result = numberOne % numberTwo

    case 6:
        result = numberOne * numberTwo

    default:
        result = 0
    }
    print_result(result: result)
}

func print_result(result: Int) {
    if result == 0 {
        print("Une erreur est survenue.")
    } else {
        print("\nLe résultat de l'opération est : \(result)\n")
    }
}

func run() {
    countExec += 1
    print("Entrez le premier nombre :")
    numberOne = input()
    if operation == 6 {
        numberTwo = numberOne
    } else {
        print("Entrez le deuxième nombre :")
        numberTwo = input()
    }
    calc(numberOne: numberOne, numberTwo: numberTwo, operation: operation)
    print("Vous avez effectué \(countExec) calcul(s)")
    new_exec()
}

func new_exec() {
    print("Voulez-vous effectuer un nouveau calcul ? (y ou n)")
    let qNewExec: String? = readLine()
    switch qNewExec {
    case "y":
        welcome()
    case "n":
        exit(0)
    default:
        exit(0)
    }
}

func welcome() {
    menu()
    operation = input()
    while operation < 1 || operation > 6 {
        welcome()
    }
    run()
}

welcome()
