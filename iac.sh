#!/bin/bash

# Criacao diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


# Criacao grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


# Criacao usuarios
## Usuarios grupo GRP_ADM
useradd carlos -c "Carlos" -m -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd maria -c "Maria" -m -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd joao -c "João" -m -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash

## Usuarios grupo GRP_VEN
useradd debora -c "Débora" -m -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd sebastiana -c "Sebastiana" -m -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd roberto -c "Roberto" -m -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash

## Usuario grupo GRP_SEC
useradd josefina -c "Josefina" -m -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd amanda -c "Amanda" -m -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash
useradd rogerio -c "Rogério" -m -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash


# Permissao
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


# Grupo diretorios
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec


# Dono diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


