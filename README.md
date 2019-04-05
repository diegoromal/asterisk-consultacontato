O objetivo deste é utilizar os cadastros de contatos do SNEP para binar o nome cadastrado no telefone, substituindo a variável CALLERID(name)
Script em shell para consulta via AGI no banco de contatos do SNEP.
Atentar-se para o tipo de entrada do número (0DDD+NUMERO, DDD+NUMERO, SOMENTE NUMERO), verificar o padrão que sua operadora manda para cadastrar, ou então, cadastrar de várias formas.
Acessar via interface CADASTROS, CONTATOS

Como utilizar:
- Colocar o script consultacontato.sh na pasta "/var/lib/asterisk/agi-bin";
- Dar permissão de execussão para ele;
- Inserir no aquivo "/etc/asterisk/extensions.conf" a linha:
exten => _X.,n,AGI(consultacontato.sh,${CALLERID(num)})
Logo abaixo da linha:
exten => _X.,1,Noop(LIGACAO DE ${CALLERID(num)} PARA ${EXTEN} NO CANAL ${CHANNEL})
- recarregar o dialplan: # asterisk -rx "dialplan reload"
- Após isso é só testar, chegara na bina o Contato cadastrado (CALLERID(name) e o número (CALLERID(num)

Fiquem a vontade para sugestoes de melhorias ;)
