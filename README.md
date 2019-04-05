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
# Programa feito para utilizar os cadastros de contatos do SNEP para binar o nome cadastrado no telefone, substituindo a variável CALLERID(name);
# Atentar-se para o tipo de entrada do número (0DDD+NUMERO, DDD+NUMERO, SOMENTE NUMERO), verificar o padrão que sua operadora manda para cadastrar, ou então, cadastrar de várias formas;
# Cadastrar os Contatos via SNEP CADASTROS -> CONTATOS;

# Como utilizar:
# - Colocar o script consultacontato.sh na pasta "/var/lib/asterisk/agi-bin";
# - Dar permissão de execussão para ele;
# - Inserir no aquivo "/etc/asterisk/extensions.conf" a linha:
# exten => _X.,n,AGI(consultacontato.sh,${CALLERID(num)})
# Logo abaixo da linha:
# exten => _X.,1,Noop(LIGACAO DE ${CALLERID(num)} PARA ${EXTEN} NO CANAL ${CHANNEL})
# - recarregar o dialplan: # asterisk -rx "dialplan reload"
# - Após isso é só testar, chegara na bina o Contato cadastrado (CALLERID(name) e o número (CALLERID(num)
