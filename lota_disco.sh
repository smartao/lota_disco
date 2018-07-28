#!/bin/bash

DIR=/tmp # Diretorio que sera sobrecarregado
ARQTEMP=dados # Arquivo temporario que contem o texto inicial
ARQFULL=lota_disco.full # Arquivo que receba os dados do arquivo anterior

cp $ARQTEMP $DIR

mkdir -p $DIR

for ((i=1;i>0;i++));
do
	cat $DIR/$ARQTEMP >> $DIR/$ARQFULL
	cat $DIR/$ARQFULL >> $DIR/$ARQTEMP
done
