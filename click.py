import time
import pynput
from pynput.mouse import Controller, Button


def click():
	while True:
		mouse = Controller()
		mouse.click(Button.left, 1)
		time.sleep(5)

click()
