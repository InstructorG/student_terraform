# ATELIER 5

### Objectifs :


1. Créez un fichier de test avec les propriétés suivantes :
    - Testez avec la méthode "plan".
    - Testez le module de l'atelier 4 situé dans le répertoire "module".
    - Spécifiez une variable "bucket_name" et vérifiez que le nom du compartiment qui sera créé par le module a la même valeur.
    - Spécifiez une variable "lambda_name" et vérifiez que le nom de la fonction Lambda qui sera créée par le module a la même valeur.

2. Exécutez le test avec la commande `terraform test`.

3. Modifiez le fichier "workflow.yml" dans le répertoire ".github" comme suit :
    - Ajoutez la commande d'initialisation de Terraform dans le job deploy.
    - Ajoutez la commande de test de Terraform dans le job deploy.
    - Ajoutez la commande apply de Terraform dans le job deploy.



