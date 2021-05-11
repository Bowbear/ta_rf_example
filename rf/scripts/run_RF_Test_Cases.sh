#!/usr/bin/env bash
#------------------------------------------------------------
# Dieses Skript dient dazu, alle Testfaelle fuer SPOTS
# zu realisieren.
# Die Ergebnisse der Testfaelle dann im Verzeichnis results
# mit einem entsprechenden BUILD_TAG abgelegt.
# Bei dem BUILD_TAG handelt es sich um eine Variable die
# primaer in Jenkins verwendet wird und dort zur Kategori-
# sierung der unterschiedlichen Testfaelle dient.
#------------------------------------------------------------

# -- Variablendefinitionen
#--------------------------
RESULT_DIR=$1
TESTDEF_DIR=$2
TAG_NAME=$3
LOGLEVEL=TRACE

# BROWSER=$2

# -- Setzen der Environmentvariablen
#-------------------------------------
source system/rf_profile
# printenv


#NUMARGS=$#
#echo -e \\n"Anzahl der uebergebenen Argumente: $NUMARGS"
#if [[ ${NUMARGS} -eq 0 ]]; then
#    HILFE
#fi

# Bereinigung des result-Verzeichnisses
#---------------------------------------
# echo "result-Verzeichnis wird bereinigt..."
# cd ${RESULT_DIR}
# rm *.log
# rm *.html
# rm *.xml
# rm *.png
# cd -

# Erstellen des result-Verzeichnisses
#-------------------------------------
echo -e mkdir ${RESULT_DIR}

# clear
echo "Starting the test case as follows:"
echo -e python3 -m robot -L ${LOGLEVEL} -i ${TAG_NAME} -d ${RESULT_DIR} ${TESTDEF_DIR}

# cd ../../
# robot -L ${LOGLEVEL} -d ${RESULT_DIR} ${TESTDEF_DIR}
