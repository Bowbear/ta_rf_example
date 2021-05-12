@ECHO OFF
::------------------------------------------------------------
:: Dieses Skript dient dazu, alle Testfaelle fuer SPOTS
:: zu realisieren.
:: Die Ergebnisse der Testfaelle dann im Verzeichnis results
:: mit einem entsprechenden BUILD_TAG abgelegt.
:: Bei dem BUILD_TAG handelt es sich um eine Variable die
:: primaer in Jenkins verwendet wird und dort zur Kategori-
:: sierung der unterschiedlichen Testfaelle dient.
::------------------------------------------------------------

:: -- Variablendefinitionen
::--------------------------
set RESULT_DIR=%1
set TESTDEF_DIR=%2
set TAG_NAME=%3
set LOGLEVEL=TRACE


:: -- Setzen der Environmentvariablen
::-------------------------------------
:: source system/rf_profile

:: Bereinigung des result-Verzeichnisses
::---------------------------------------
:: echo "result-Verzeichnis wird bereinigt..."
:: cd ${RESULT_DIR}
:: rm *.log
:: rm *.html
:: rm *.xml
:: rm *.png
:: cd -

:: Erstellen des result-Verzeichnisses
::-------------------------------------
ECHO -e mkdir %RESULT_DIR%

# clear
echo "Starting the test case as follows:"
echo -e python3 -m robot -L %LOGLEVEL% -i %TAG_NAME% -d %RESULT_DIR% %TESTDEF_DIR%

:: cd ../../
:: robot -L ${LOGLEVEL} -d ${RESULT_DIR} ${TESTDEF_DIR}
