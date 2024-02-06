from alive_progress import alive_bar; import time, logging, os

os.system('')

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger('alive_progress')

with alive_bar(100) as bar:
     for i in range(100):
         if i and i % 20 == 0:
            os.system('')
            os.system('echo "### CONNECTING TO TARGET..."')
         time.sleep(0.0800)
         bar()
