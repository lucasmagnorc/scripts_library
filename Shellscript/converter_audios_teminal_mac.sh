#***********************************************************************************************
# TÍTULO: Shell para realizar a cornvesão de arquivos mp3 para wav em sistemas apple
#***********************************************************************************************
# DATA: 17/12/2018
# AUTHOR: Lucas Magno
#***********************************************************************************************
# DESCRIÇÃO: Este comando irá converter um arquivo mp3 para wav
#***********************************************************************************************
# OBS: O arquivo wav será mono com 16 bits, 8000mhz. Para converter um áudio .mpeg, basta 
#   alterar o ".mp3" para ".mpeg"
#***********************************************************************************************
# TRECHO 1: Este comando irá converter apenas um arquivo mp3 para wav
# ALTERAÇÕES: Alterar o nome dos áudios no script
#***********************************************************************************************'

afconvert -f WAVE -d LEI16@8000 arquivo.mp3 arquivo.wav;

#************************************************************************************************
# TRECHO 2: Este comando irá converter todos os áudios mp3 contidos na pasta 
#***********************************************************************************************'

for i in *.mp3; 
    do nameFile=$(echo "${i}" | cut -d'.' -f 1);
    afconvert -f WAVE -d LEI16@8000 "${i}" "${nameFile}.wav";
done

