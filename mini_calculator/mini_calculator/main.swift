import Darwin

// Fonction permettant de demander à l'utilisateur d'entrer un nombre et de le convertir en entier
func input() -> Int {
    let strData = readLine();

    return Int(strData!)!
}

var count_exec: Int
var number_one: Int
var number_two: Int
var operation: Int
var result: Int

count_exec = 0
number_one = 0
number_two = 0
operation = 0
result = 0

func menu(){
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

func calc(number_one: Int, number_two: Int, operation: Int) {
    switch operation {
    case 1:
        result = number_one + number_two

    case 2:
        result = number_one - number_two

    case 3:
        result = number_one * number_two

    case 4:
        result = number_one / number_two

    case 5:
        result = number_one % number_two

    case 6:
        result = number_one * number_two

    default:
        result = 0
    }
    print_result(result: result)
}

func print_result(result: Int) {
    if result == 0 {
        print("Une erreur est survenue.")
    }
    else {
        print("\nLe résultat de l'opération est : \(result)\n")
    }
}

func run() {
    count_exec =  count_exec + 1
    print("Entrez le premier nombre :")
    number_one = input()
    if operation == 6 {
        number_two = number_one
    }
    else {
        print("Entrez le deuxième nombre :")
        number_two = input()
    }
    calc(number_one: number_one, number_two: number_two, operation: operation)
    print("Vous avez effectué \(count_exec) calcul(s)")
    new_exec()
}

func new_exec() {
    print("Voulez-vous effectuer un nouveau calcul ? (y ou n)")
    let q_new_exec: String? = readLine()
    switch q_new_exec {
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
