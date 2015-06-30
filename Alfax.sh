#!/bin/sh
#chkconfig: 2345 02 03
#Descripcion: Es un daemon!

case "$1" in
	start)
		echo -n "::: Iniciando daemon Alfax :::"
		fecha='date'
		echo $fecha >>  /tmp/despliegue
		exit 0
		;;
	stop)
		echo -n "::: Parando daemon Alfax :::"
		rm -f /tmp/despliegue
		exit 0
		;;
	*)
		echo $"Usage$0(start|stop)"
		exit 2
esac


