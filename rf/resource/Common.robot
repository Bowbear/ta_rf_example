*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library  ../lib/WebElementFF.py

Resource    Configuration.robot
Resource    DataManager.robot

*** Keywords ***
I open the browser
    [Arguments]    ${slct_browser}
    run keyword if    '${slct_browser}' == 'firefox'    Open Firefox
    ...    ELSE IF    '${slct_browser}' == 'headlessfirefox'    Open Firefox Headless
    ...    ELSE IF    '${slct_browser}' == 'firefox old'    Open Firefox Browser old
    ...    ELSE IF    '${slct_browser}' == 'chrome'    Open Chrome
    ...    ELSE    Open Chrome Browser Headless

Open Firefox Browser old
    [Documentation]  Start Firefox-Browser...
    ${firefox_path} =
    ...  evaluate  sys.modules['selenium.webdriver'].firefox.firefox_binary.FirefoxBinary(firefox_path='${FIREFOX_PATH}', log_file=None)  sys
    ${profile} =  create firefox profile  ${INPUT_DIR}
    run keyword if  ${HEADLESS} == ${True}
    ...  set environment variable  MOZ_HEADLESS  1
    create webdriver  Firefox  firefox_profile=${profile}  firefox_binary=${firefox_path}
    go to  about:blank
    Maximize Browser Window
    set selenium speed  ${DELAY}
    # set window size  2000  1200
    # set environment variable  LANG  en_US.utf8

Open Firefox
    ${ffprofile} =  create firefox profile  ${INPUT_DIR}
    open browser    about:blank    firefox
    ...  ff_profile_dir=set_preference("intl.accept_languages", "en-GB");set_preference("browser.download.folderList", 2);set_preference("browser.helperApps.neverAsk.openFile", "image/png,application/octet-stream");set_preference("browser.download.folderList", 2);set_preference("browser.download.forbid_open_with", True);set_preference("browser.download.animateNotifications", False);set_preference("browser.download.panel.shown", False);set_preference("pdfjs.disabled", True);set_preference("browser.defaultbrowser.notificationbar", False);set_preference("dom.webnotifications.enabled", False);set_preference("browser.download.manager.showWhenStarting", False);set_preference("browser.download.manager.alertOnEXEOpen", False);set_preference("browser.download.manager.closeWhenDone", True);set_preference("browser.download.manager.useWindow", True);set_preference("browser.download.manager.focusWhenStarting", False);set_preference("browser.helperApps.alwaysAsk.force", False);set_preference("browser.translation.detectLanguage", False);set_preference("browser.helperApps.neverAsk.saveToDisk",'text/csv,''application/csv,''application/excel,''application/x-msexcel,''application/x-excel,''application/vnd.ms-excel,''application/zip,''application/vnd.openxmlformats.officedocument.spreadsheetml.sheet')
    maximize browser window
    set selenium speed    ${DELAY}

Open Firefox Headless
    ${ffprofile} =  create firefox profile  ${INPUT_DIR}
    open browser    about:blank    headlessfirefox
    ...  ff_profile_dir=set_preference("intl.accept_languages", "en-GB");set_preference("browser.download.folderList", 2);set_preference("browser.helperApps.neverAsk.openFile", "image/png,application/octet-stream");set_preference("browser.download.folderList", 2);set_preference("browser.download.forbid_open_with", True);set_preference("browser.download.animateNotifications", False);set_preference("browser.download.panel.shown", False);set_preference("pdfjs.disabled", True);set_preference("browser.defaultbrowser.notificationbar", False);set_preference("dom.webnotifications.enabled", False);set_preference("browser.download.manager.showWhenStarting", False);set_preference("browser.download.manager.alertOnEXEOpen", False);set_preference("browser.download.manager.closeWhenDone", True);set_preference("browser.download.manager.useWindow", True);set_preference("browser.download.manager.focusWhenStarting", False);set_preference("browser.helperApps.alwaysAsk.force", False);set_preference("browser.translation.detectLanguage", False);set_preference("browser.helperApps.neverAsk.saveToDisk",'text/csv,''application/csv,''application/excel,''application/x-msexcel,''application/x-excel,''application/vnd.ms-excel,''application/zip,''application/vnd.openxmlformats.officedocument.spreadsheetml.sheet')
    maximize browser window
    set selenium speed    ${DELAY}

Open Chrome
    open browser    about:blank    chrome
    ...    options=add_argument("--disable-notifications");add_argument("lang=en-GB")
    maximize browser window
    set selenium speed    ${DELAY}

Open Chrome Headless
    open browser    about:blank    headlesschrome
    ...    options=add_argument("--disable-notifications");add_argument("lang=en-GB")
    maximize browser window
    set selenium speed    ${DELAY}

End Web Test
    Close Browser

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
    set global variable  &{TESTDATA}

Get User data
    [Arguments]  ${BenutzerDatenPfad}
    &{USERDATA} =  DataManager.Hole CONFIG Testdaten  ${BenutzerDatenPfad}
    set global variable  &{USERDATA}
