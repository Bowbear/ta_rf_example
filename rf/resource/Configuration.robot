*** Variables ***
#-------------------------
# -- Environment
#-------------------------
${ENVIRONMENT} =  webshop1
${BROWSER} =      headlessfirefox
${HEADLESS} =     False
&{UMGEBUNG} =
...    TEST=Testing
...    ENTW=Development

&{URL} =
...    webshop1=https://demo.nopcommerce.com/
...    webshop2=http://automationpractice.com/index.php
${DELAY} =  0

${INPUT_DIR} =     rf/input
${OUTPUT_DIR} =    rf/output

#------------------
# -- System
#------------------
${FIREFOX_PATH} =  C:/Program Files/Mozilla Firefox/firefox.exe
${VERSION} =    1.0.0
${HOST} =  %{COMPUTERNAME}
${USER} =  %{USERNAME}

#------------------
# -- Userdata
#------------------
${VALID_REGIST_DATA} =  rf/testdata/Registration/Valid_Registration_Data.cfg
${VALID_USER_DATA} =    rf/testdata/Login/Valid_Users.cfg
${INVALID_USER_DATA} =  rf/testdata/Login/Invalid_Users.cfg


#------------------
# -- Testdata
#------------------
${PROFIL} =  ts1
${TS_BASE_DIR_UI} =    testdata/WebUI
&{TESTDATAPATH} =
...    DESKTOPS=${TS_BASE_DIR_UI}/Computers/Desktops.cfg
...    NOTEBOOKS=${TS_BASE_DIR_UI}/Computers/Notebooks.cfg
...    SOFTWARE=${TS_BASE_DIR_UI}/Computers/Software.cfg