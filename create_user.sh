#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos e alterando permissões dos diretórios..."

chmod 777 /publico

groupadd GRP_ADM
chown root:GRP_ADM /adm/
chmod 770 /adm

groupadd GRP_VEN
chown root:GRP_VEN /ven/
chmod 770 /ven

groupadd GRP_SEC
chown root:GRP_SEC /sec/
chmod 770 /sec

echo "Criando usuários do grupo administrativo..."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao da Silva" -m -s /bin/bash -p$(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

echo "Criando usuários do grupo de vendas..."

useradd debora -c "Debora dos Santos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana dos Santos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto dos Santos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

echo "Criando usuários do grupo secretaria..."

useradd josefina -c "Josefina dos Anjos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda dos Anjos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério dos Anjos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Finalizado!"
