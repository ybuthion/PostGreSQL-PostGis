commande à executer en étant connecté en ssh sur le serveur 1
Prérequis :
- il faut copier la table en utilisant un pg_dump plus récent que la destination ou équivalent.
- il faut que le schema existe sur les deux serveurs

pg_dump -O -U MonUtilisateurServeur1 -h IPServeur1 -p NumeroDePortDuServeur1 -t MonSchema.MaTable NomBDD1 | psql -U MonUtilisateurServeur2 -h IPDuServeur2 -p NumeroDePortDuServeur2 -d NomBDD2
