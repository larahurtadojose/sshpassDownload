#!/bin/bash

#Este es el entorno de los liberados.

usr="$1"
pass="$2"
maquina="$3"
componente="$6"

export SSHPASS=$pass
sshpass -e sftp -oBatchMode=no -b - $usr@$maquina << !
cd $4
get $componente
bye
!
mv $componente $5
