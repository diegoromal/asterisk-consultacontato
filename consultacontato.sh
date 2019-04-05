#!/bin/bash
#
# Autor: Diego Romanio de Almeida <diego@qosit.com.br>
#
# Repositorio: https://github.com/diegoromanio/
#
# Desenvolvido sob licensa GPL. 
# Fique a vontade para contribuir com a evolucao deste programa ;)
#
#-----------------------------------------------------------------------------------------------
#
# [WARNING] A execucao e por sua conta e risco!
#

contactname=$(mysql -u snep -psneppass -h localhost snep -N -e "SELECT name FROM contacts_names where id=(SELECT contact_id FROM contacts_phone WHERE phone='$1');")

if ["$contactname" == ""]
then
        echo "Sem Contato Cadastrado"
else
        echo "set variable \"CALLERID(name)\" \"$contactname\""
fi
