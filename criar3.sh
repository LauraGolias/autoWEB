#!/bin/bash

for dominio in $(cat $1)
do
	nome=$(echo $dominio | cut -d. -f1)
	./criarDominio.sh $dominio 
	./criarSite.sh $dominio $nome
	./criarFTP.sh $nome
done
