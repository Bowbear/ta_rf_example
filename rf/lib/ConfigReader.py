from configparser import ConfigParser
import codecs
from robot.api import logger


class ConfigReader:
    """ Klasse zur Bereitstellung von Methoden fuer das
        Verarbeiten von sektionsorientierten Dateien. """

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self, text=False):
        """ Konstruktor """

        self.text = text
        self.data = {}
        self.sub_data = {}
        logger.info('Initialisiere CONFIG-Daten', also_console=True)

    def hole_cfg_daten(self, filename):
        """ Ermittelt die Daten (Sektionen, Schluessel- und Wertepaare)
            und traegt sie in ein entsprechendes Dictionary ein.
            Aufbau des Dictionary ist in diesem Fall wie folgt:
            ${SECTION_NAME1:${Key1:Value1, Key2:Value2},
            SECTION_NAME2:S{Key1:Value1, Key2:Value2}}"""

        # logger.console("%s" % self.text)

        cfg_obj = ConfigParser()
        cfg_obj.read(filename, encoding='utf-8')
        # with codecs.open(filename, 'r', encoding='utf-8') as f:
        # cfg_obj.read(f)

        for section in cfg_obj.sections():
            # logger.console("Section = %s" % section)
            self.sub_data = {}
            for option in cfg_obj.options(section):
                self.sub_data[option] = cfg_obj.get(section, option)
            self.data[section] = self.sub_data

        return self.data

    def set_data(self, data):
        """ Setter """

        self.data = data

    def get_data(self):
        """ Getter """

        return self.data


if __name__ == '__main__':
    daten_obj = ConfigReader("Hole Benutzerdaten")
    filen = "/nethome/tmt1773/g/gmbaer/projects/spots/rf/testdata/Standort/Standort_Suchen1.cfg"
    daten = daten_obj.hole_cfg_daten(filen)
