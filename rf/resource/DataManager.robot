*** Settings ***
Documentation  Ermoeglicht die Bereitstellung von Testdaten aus Dateien in
...  unterschiedlichen Formaten

Library  ./../lib/ConfigReader.py  "Ermittle Testdaten (config)"  WITH NAME  config

*** Keywords ***
Hole CONFIG Testdaten
    [Arguments]  ${DateiPfadCONFIG}
    ${CONFIGDaten} =  config.hole_cfg_daten  ${DateiPfadCONFIG}
    [Return]  ${CONFIGDaten}
