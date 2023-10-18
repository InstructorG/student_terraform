resource "random_string" "random" {
  special = false
  length  = 10
  upper   = false
}

resource "aws_s3_bucket" "s3_atelier_3" {
  bucket        = "bucket-${random_string.random.result}"
  force_destroy = true
}

#TODO: CRÉER la locale files_names de type map
locals {

}

#TODO: CRÉER un fichier par element du map files_names
# ...


#TODO: CRÉER un objet s3 par element de la liste local_file
# ...