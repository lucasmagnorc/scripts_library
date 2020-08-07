#***********************************************************************************************
# TÍTULO: Shell para transferencia de arquivos/pastas com scp
#***********************************************************************************************
# DATA: 17/12/2018
# AUTHOR: Lucas Magno
#***********************************************************************************************
# DESCRIÇÃO: Este comando irá transferir arquivos de um servidor para outro via SCP
#***********************************************************************************************
# TRECHO 1: Este comando irá transferir um arquivo para o endereço especificado depois do "root@"
# ALTERAÇÕES: Alterar o nome dos áudios no script
#***********************************************************************************************'

scp arquivo.txt root@192.168.1.1:/tmp

#************************************************************************************************
# TRECHO 2: Este comando irá transferir uma pasta com todos os arquivos que estão dentro para o 
#   endereço especificado depois do "root@". Este comando acontece de forma recursiva e não irá 
#   mostrar o log de transferência na tela, caso queira ver, basta retirar o final do código 
#   "> /dev/null"
# ALTERAÇÕES: Alterar o nome dos áudios no script
#***********************************************************************************************'

scp -r nome_da_pasta root@192.168.1.1:/tmp > /dev/null

#************************************************************************************************
# TRECHO 3: Este trecho está enviando para a nuvem1 sem que seja preciso colocar a senha, isso  
#   é utilizando para quando se vai realizar uma automatização
#***********************************************************************************************
# OBS: É obrigatório que seja instalado no servido o pacote "sshpass" para este comando funcionar
#***********************************************************************************************'

sshpass -p "senha" scp pesquisas_em_andamento.txt root@192.168.1.1:/tmp > /dev/null
