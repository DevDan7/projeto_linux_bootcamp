#!/bin/bash

echo "Iniciando criação da infraestrutura..."

mkdir /publico /adm /ven /sec

echo "Criando grupos..."

groupadd adm_group
groupadd ven_group
groupadd sec_group

echo "Criando usuários..."

useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G adm_group carlos
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G adm_group maria
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G adm_group joan

useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G ven_group debora
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G ven_group sebastiana
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G ven_group roberto

useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G sec_group josefina
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G sec_group amanda
useradd -m -s /bin/bash -p $(openssl passwd -6 Senha1234) -G sec_group rogerio

echo "Criando diretórios e definindo permissões..."

chown root:adm_group /adm
chown root:ven_group /ven
chown root:sec_group /sec

echo "Definindo permissões de acesso..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Infraestrutura criada com sucesso!"
