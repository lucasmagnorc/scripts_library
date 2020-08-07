#***********************************************************************************************
# TÍTULO: Shell para realizar a cornvesão de arquivos mp3 para wav, utilizando o pacote
# ffmpeg do linux
#***********************************************************************************************
# DATA: 26/09/2019
# AUTHOR: Marcus Trindade
#***********************************************************************************************
# DESCRIÇÃO: Este comando irá converter todo arquivos mp3 da pasta atual para wav
#***********************************************************************************************
# OBS: O arquivo wav será mono com 16 bits, 8000mhz.
#***********************************************************************************************
# TRECHO 1: Este comando irá converter apenas um arquivo mp3 para wav
#***********************************************************************************************

for i in *.mp3; 
    do nameFile=$(echo "${i}" | cut -d'.' -f 1); 
    ffmpeg -i "${i}" -acodec pcm_s16le -ac 1 -ar 8000 "${nameFile}.wav"; 
done;
