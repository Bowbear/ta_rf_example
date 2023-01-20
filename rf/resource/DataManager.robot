*** Settings ***
Documentation  Ermoeglicht die Bereitstellung von Testdaten aus Dateien in
...  unterschiedlichen Formaten

Library  ./../lib/ConfigReader.py  "Ermittle Testdaten (config)"  WITH NAME  config

*** Keywords ***
Hole CONFIG Testdaten
    [Arguments]  ${DateiPfadCONFIG}
    ${CONFIGDaten} =  config.hole_cfg_daten  ${DateiPfadCONFIG}
    [Return]  ${CONFIGDaten}

Getting Test case data
    [Arguments]  ${TESTDATAPATH}  ${USERDATAPATH}
    [Documentation]  Zur Durchfuehrung von Testfaellen werden entsprechende
    ...  Testdaten bzw. Benutzerdaten benoetigt, die ueber Konfigurations-
    ...  dateien zur Laufzeit zur Verfuegung gestellt werden.
    run keyword If  '${TESTDATAPATH}' != ''  Get Test data  ${TESTDATAPATH}
    run keyword If  '${USERDATAPATH}' != ''  Get User data  ${USERDATAPATH}

Getting User data
    [Arguments]  ${USERDATAPATH}
    [Documentation]  Um das Anmelden von Benutzer testen zu koennen
    ...  werden die entsprechenden Benutzerdaten aus einer Konfigurationsdatei
    ...  geholt
    run keyword If  '${USERDATAPATH}' != ''  Get User data  ${USERDATAPATH}

Get Test data
    [Arguments]  ${TestDatenPfad}
    &{TESTDATA} =  DataManager.Hole CONFIG Testdaten  ${TestDatenPfad}
    set suite variable  &{TESTDATA}

Get User data
    [Arguments]  ${BenutzerDatenPfad}
    &{USERDATA} =  DataManager.Hole CONFIG Testdaten  ${BenutzerDatenPfad}
    set suite variable  &{USERDATA}
