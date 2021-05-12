from selenium.webdriver.firefox import firefox_binary
# from selenium.webdriver.firefox.options import Options
# from selenium.webdriver.firefox import firefox_profile
# from selenium.webdriver.firefox import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


class WebElementFF(object):
    """ Diese Klasse ermoeglicht es die Einstellungen im Firefox-Browser
        zur Laufzeit anzupassen. """

    def __init__(self):
        """ Konstruktor """

    @staticmethod
    def create_firefox_profile(path):
        from selenium import webdriver
        fp = webdriver.FirefoxProfile()
        fp.set_preference("browser.download.folderList", 2)
        fp.set_preference("browser.download.forbid_open_with", True)
        fp.set_preference("browser.download.animateNotifications", False)
        fp.set_preference("browser.download.panel.shown", False)
        fp.set_preference("pdfjs.disabled", True)
        fp.set_preference("browser.download.manager.showWhenStarting", False)
        fp.set_preference("browser.download.manager.alertOnEXEOpen", False)
        fp.set_preference("browser.download.manager.closeWhenDone", True)
        fp.set_preference("browser.download.manager.useWindow", True)
        fp.set_preference("browser.download.manager.focusWhenStarting", False)
        fp.set_preference("browser.helperApps.alwaysAsk.force", False)
        fp.set_preference("browser.download.dir", path)
        fp.set_preference("browser.helperApps.neverAsk.openFile", "image/png, application/octet-stream")
        fp.set_preference("browser.helperApps.neverAsk.saveToDisk",
                          'text/csv,'
                          'application/csv,'
                          'application/excel,'
                          'application/x-msexcel,'
                          'application/x-excel,'
                          'application/vnd.ms-excel,'
                          'application/zip,'
                          'application/vnd.openxmlformats.officedocument.spreadsheetml.sheet')

        fp.update_preferences()

        return fp

    @staticmethod
    def create_firefox_options():

        from selenium import webdriver
        opts = webdriver.FirefoxOptions()
        opts.headless(True)

        return opts

    @staticmethod
    def create_firefox_instance():

        ff_bin = firefox_binary.FirefoxBinary(firefox_path='C:\\Program Files\\Mozilla Firefox\\firefox.exe', log_file=None)

        return ff_bin

    @staticmethod
    def create_firefox_capabilities():
        firefox_caps = DesiredCapabilities.FIREFOX
        firefox_caps['marionette'] = False
        firefox_caps['firefox_binary'] = 'C:\\Program Files\\Mozilla Firefox\\firefox.exe'
        firefox_caps['webdriver.log.file'] = 'C:\geckdriver.log'
        firefox_caps['webdriver.log.driver'] = 'DEBUG'

        return firefox_caps
