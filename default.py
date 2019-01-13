import os.path
import xbmcaddon
from chromepilot import ChromePilot

__settings__ = xbmcaddon.Addon()
__path__ = __settings__.getAddonInfo("path")

pilot = ChromePilot()

pilot.addExtension(os.path.join(__path__, "chrome-netflix-keyboard-control", "extension"))
pilot.setChromePath(__settings__.getSetting("CHROME_PATH"))
pilot.setUrl(__settings__.getSetting("BROWSER_URL"))

pilot.launch()