class Promotion {
    var etudiants = [Etudiant]()

    init() {
        self.etudiants = []
    }

    func ajouterEtudiant(etudiant: Etudiant) {
        etudiants.append(etudiant)
    }

    func rechercherEtudiant(nom: String, prenom: String) -> Bool {
        var status: Bool = false
        for etu in etudiants {
            if etu.nom == nom && etu.prenom == prenom {
                status = true
                // break permet de sortir de la boucle for quand status passe à true et donc
                // on fait le return, on évite de continuer inutilement la boucle
                break
            }
        }
        return status
    }

    func affichePromotion() {}
}
