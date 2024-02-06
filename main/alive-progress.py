from alive_progress import alive_bar; import time, logging, os

os.system('')

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger('alive_progress')

with alive_bar(100) as bar:
     for i in range(100):
         if i and i % 20 == 0:
            os.system('')
         if i in (20, 50, 80):
            os.system('echo "### DATA COMPLETED..."')
         time.sleep(0.0800)
         bar()
