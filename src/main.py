from .db import db
from .yt import downloadMedia, stream
from threading import Thread

media_thread = Thread(target=downloadMedia)


def main():
  print("Starting application...")
  print(f"Command: {db.dget('config', 'command')}")
  print(f"Backup Command: {db.dget('config', 'backupCommand')}")
  print(f"Ad Interval: {db.dget('config', 'adInterval')}")
  print(f"Play Ad: {db.dget('config', 'playAd')}")

  media_thread.start()

  stream()
  print("Exiting application...")


if __name__ == "__main__":
  main()
