# TP CyberSecurité, M1 III. Sujet choisi : TP Veterinary
# Jean-François Gautreau

Guide d'utilisation : <br />
* Le projet contient un dossier API avec un fichier a importer dans Insomia. Il contient les appels a effectuer sur le projet.
* Le fichier insomnia se trouve dans le dossier à la racine, nommé API > Insomnia_2020-12-13.json (fichier insomnia)
* Pour s'authentifier dans l'application, utiliser l'un des comptes admins créés pour l'application :
* Mot de passe : justPixel / Login : Chiara

****

Installation : 
* tout d'abord il faut créer le serveur "web" sur docker avec la commande, web étant son nom <br />
<b>docker network create web</b><br />

* ensuite avec l'invit de commande, il faut créer l'image et le container, ceci peut être fait avec la commande<br />
<b>docker-compose up -d</b><br />

* De là, le container devrait être lancé et disponible sur l'adresse : <b>localhost:80</b><br />
* 80 étant le port choisi pour masquer le port original 8080<br />

<b>Type de projet : non vulnérable</b>
* Je suis parti sur le principe que mon projet est sécurisé.
* 1e point : une authentification fonctionnelle. Si l'ont a pas les identifiants, on ne peut pas se connecter à 
l'application et donc accéder à la data, ni la modifier. pour le tester on peut faire tenter des injections SQL.
* 2e point : le port 8080 est caché. Cela évite donc de laisser une porte grande ouverte dans le système. (set dans le
docker-compose), on peut tenter de connecter sur le port originel pour voir que celui-ci nous rejette.
* 3e point (ou je pense être vulnérable) : le chiffrement des MDP, ils sont notés en dur dans le code, il faut utiliser
un système de chiffrement mais je ne sais pas le faire

****

Les Appels API sont les suivants :

Class Prescription :
  - GET : prescriptions -> Liste les ordonnances.
  - GET : prescriptionsByName -> Liste les ordonnances dont le nom contient {name}
  - POST : add -> Ajoute une Ordonnance /!\ ATTENTION /!\ - Cette requete doit être lancée 2 fois pour que ca fonctionne. La premiere ne fonctionne pas.
  Il est possible de saisir la posologie -> fréquence de prise de médicament et quantité.
  - PUT : Modifie l'ordonance. Les informations de posologie ou l'id des médicaments voir l'id de l'animal ou le docteur associé.
  - DEL : supprime l'ordonance de la table prescription, mais aussi la posologie de la table dosage.

Class Animal  :
 - Get : Animals -> Liste tous les animaux de la base.
 - Get AnimalsByName -> Liste les animaux contenant http://localhost:8080/animals/name/{name} dans son nom.
 - POST : addAnimal -> Ajoute un animal à la base. Les Animaux ont une ID Unique. Un nouvel animal, lors de son ajout ne peut donc pas déjà exister en tant que parent d'un autre animal. On vérifie tout de même que sur l'animal qu'on ajoute, les champs ID et Parent_Id soient diférents.
 - PUT : UpdateAnimal -> Met à jour l'animal dont l'id est précisé dans : http://localhost:8080/animals/{id}. On peut vérifier la modification en listant tous les animaux ou celui-ci précisément.
 - Get : AnimalById -> Affiche l'animal précisé dans http://localhost:8080/animals/{id}.
 - DEL : Supprime l'animal de la base.
 
Class Doctor  :
  - GET : Doctors -> liste les docteurs
  - GET : doctorsByName -> liste les docteurs dont lastname contient {name}.
  - POST : addDoctor -> Ajoute un docteur. On peut le pas préciser son ID.
  - PUT : UpdateDoctor -> modifie un docteur.
  - GET : DoctorById -> Affiche le docteur par son Id.
  - DEL : supprime un docteur.
  
 Class Medicine :
   - GET : Medicines -> Liste les Médicaments.
   - GET : MedicinesByName -> Liste les Médicaments dont le nom contient {name}.
   - POST : addMedicine -> Ajoute un médicament. On peut préciser seulement son nom.
   - PUT : updateMedicine -> modifie un médicament en base.
   - GET : medicineById -> Affiche le médicaments selon son Id.
   
Class Rdv :
   - GET : rdvs: Liste tous les rendez-vous
   - GET : rdvsByDoctorId: Liste tous les rendez-vous du docteur selon son ID.
   - GET : rdvsByAnimalId: Liste tous les rendez-vous de l'animal selon son ID.
   - POST : Ajoute un rendez-vous.
   - PUT : Modifie le rdv -> sa date ou l'id du docteur ou de l'animal.
   - GET : rdvById -> Affiche le rdv selon son Id.
   - DEL : supprime le rendez-vous.
   
