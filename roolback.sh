#!/bin/bash

echo "Revertendo alteracoes de iac.sh"

# Revertendo diretorios
rm -rfv /publico
rm -rfv /adm
rm -rfv /ven
rm -rfv /sec


# Revertendo grupos
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC


# Revertendo usuarios
userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio
