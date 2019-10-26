class Etudiant: Personne {
    var bourse: Bool
    var annee: Int

    init(nom: String, prenom: String, age: Int, bourse: Bool, annee: Int) {
        self.bourse = bourse
        self.annee = annee
        super.init(nom: nom, prenom: prenom, age: age)
    }

    override func affiche() {
        super .affiche()
        // le \n permet de faire un saut de ligne, donc en un seul print, on fait l'équivalent de 4
        print("Bourse: " + String(bourse) + "\nAnnée: " + String(annee))
    }
}
