class Personne {
    var nom: String
    var prenom: String
    var age: Int

    init(nom: String, prenom: String, age: Int) {
        self.nom = nom
        self.prenom = prenom
        self.age = age
    }

    func affiche() {
        // le \n permet de faire un saut de ligne, donc en un seul print, on fait l'équivalent de 4
        print("Nom: " + self.nom + "\nPrénom: " + self.prenom + "\nÂge: " + String(self.age))
    }
}
