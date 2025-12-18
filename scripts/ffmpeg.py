import os
from src import yt


def run(songs):
    for song in songs:
        try:
            cmd = yt.commandtoplay(song)
            os.system(cmd)
        except Exception as e:
            print(f"Error playing song {song}: {e}")


if __name__ == "__main__":
    songs = [str(i+1) for i in range(10)]
    while True:
        run(songs)
