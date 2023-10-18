# ATELIER 3

### Objectifs :


### Partie 1


1. Créer une variable `list_of_files` avec les caractéristiques suivantes :
     - Description : "Liste des fichiers et des objets S3 à créer."
     - Type : Liste de chaînes de caractères.
     - Valeur par défaut : ["file_first", "file_second", "file_third"]

2. Ajouter deux validations :
     - La taille de la liste doit être supérieure à 3.
     - Vérifier que chaque élément de la liste commence par le terme "file".
     - En cas d'erreur, afficher le message suivant : "Chaque élément de fichier doit commencer par \"file_\" et la liste doit contenir plus de 3 éléments."



### Partie 2


1. Créer une variable locale `files_names` avec les caractéristiques suivantes :
     - Type : Map
     - Pour chaque élément de la liste `list_of_files`, ajouter un suffixe aléatoire.

   Exemple : "file_first-er9u3"

2. Créer un fichier pour chaque élément de la variable locale `files_names` en utilisant `for_each` :
     - Le nom du fichier doit correspondre à la clé du map.
     - Le contenu du fichier doit correspondre à la valeur du map.

3. Créer un objet S3 dans le compartiment "s3_atelier_3" pour chaque fichier en utilisant `count`.

5. Supprimer toutes les ressources une fois terminé.







