#!/bin/bash

echo "Criando diretórios..."

mkdir ./publico ./adm ./ven ./sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -s /bin/bash -p -G GRP_ADM
useradd maria -m -s /bin/bash -p -G GRP_ADM
useradd joao -m -s /bin/bash -p -G GRP_ADM

useradd debora -m -s /bin/bash -p -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p -G GRP_VEN
useradd roberto -m -s /bin/bash -p -G GRP_VEN

useradd josefina -m -s /bin/bash -p -G GRP_SEC
useradd amanda -m -s /bin/bash -p -G GRP_SEC
useradd rogerio -m -s /bin/bash -p -G GRP_SEC

echo "adicionando permissões dos diretorios..."

chown root:GRP_ADM ./adm
chown root:GRP_VEN ./ven
chown root:GRP_SEC ./sec

chmod 770 ./adm ./ven ./sec
chmod 777 ./publico

echo "FIM"