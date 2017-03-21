--Soyez indulgent, c'est mon premier post
--cette requete permet de convertir une table contenant des multipolygones
--en une table de polygones simples tout en conservant les id d'origine dans une nouvelle colonne

create table MonSchema.MaNouvelleTable as
SELECT
--récupère les id d'origine et les place dans une nouvelle colonne id_ori
  id as id_ori,
--éclate les multipolygones en polygones simples avec le scr 2154
  (st_dump(geom)).geom::geometry(polygon, 2154),
  colonne1,
  colonne2,
  colonne3,
  colonne4,
  colonne5
FROM monSchema.MaTableDeDepart;
