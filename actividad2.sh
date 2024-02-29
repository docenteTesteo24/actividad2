echo "EJERCICIO 2"
echo"------------------------------"
echo "LISTADO DE BASE DE DATOS ----"
psql -d postgres -U postgres  -c "\l"
echo "LISTADO DE ESQUEMAS DESARROLLO----"
psql -d db_desarrollo -U postgres  -c "\dn"
echo "LISTADO DE TABLA DESARROLLO----"
psql -d db_desarrollo -U postgres  -c "\dt+ tbl_desarrollo"

echo "LISTADO DE ESQUEMAS DESARROLLO----"
psql -d db_produccion -U postgres  -c "\dn"
echo "LISTADO DE ESQUEMAS TABLA----"
psql -d db_produccion -U postgres -c "\dt+ tbl_produccion"
echo "LISTADO DE ESQUEMAS TABLA----"
psql -d db_produccion -U postgres -c "\dt+ historico.tbl_2023"

echo "EJERCICIO 3"
echo"------------------------------"
cat /etc/postgresql/15/main/pg_hba.conf |grep udesarrollo
cat /etc/postgresql/15/main/pg_hba.conf |grep encargadodb

echo "EJERCICIO 4"
echo "------------------------------"
psql -d db_desarrollo -U udesarrollo -h 127.0.0.1 -c "\dt"
psql -d db_produccion -U encargadodb -h 127.0.0.1 -c "\dt"

