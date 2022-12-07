#!/bin/bash

echo "Iniciando criação de diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Preparando grupos de usuários..."

groupadd admGroup
groupadd venGroup
groupadd secGroup


echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G admGroup
useradd marie -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G admGroup
useradd john -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G admGroup

useradd debby -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G venGroup
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G venGroup
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G venGroup

useradd josephine -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G secGroup
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G secGroup
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G secGroup

echo "Determinando propriedade e permissões dos diretórios..."

chown root:admGroup /adm
chown root:venGroup /ven
chown root:secGroup /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Concluído!"
