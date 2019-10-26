class Promotion {
    var etudiants = [Etudiant]()

    init() {
        self.etudiants = []
    }

    func ajouterEtudiant(etudiant: Etudiant) {
        etudiants.append(etudiant)
    }

    func rechercherEtudiant(nom: String, prenom: String) -> Bool {
        return etudiants.contains(where: { $0.nom == nom && $0.prenom == prenom })
    }

    func affichePromotion() {
        for etu in etudiants {
            etu.affiche()
        }
    }
}
