#***********************************************************************************************
# TÍTULO: Shell para substituir todos os acentos de um arquivo
#***********************************************************************************************
# DATA: 05/07/2019
# AUTHOR: Lucas Magno
#***********************************************************************************************
# DESCRIÇÃO: Este comando irá substituir todos os acentos do arquivo pelas suas respectivas 
#    letras sem acentuação gerando um novo arquivo de saida ajustado.
#***********************************************************************************************
# TRECHO 1: Este comando irá realizar as substituições
# ALTERAÇÕES: É necessário alterar o nome "arquivo.txt" para o nome do arquivo que será ajustado
#***********************************************************************************************'

sed 'y/áÁàÀãÃâÂéÉêÊíÍóÓõÕôÔúÚçÇ/aAaAaAaAeEeEiIoOoOoOuUcC/' arquivo.txt > arquivo_ajustado.txt