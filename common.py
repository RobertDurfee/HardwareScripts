import sys
import os


SCRIPT_DIR = os.path.dirname(os.path.realpath(sys.argv[0]))


def read_file(file: str) -> str:
    try:
        f = open(file, 'r')
        data = f.read()
        f.close()
    except BaseException:
        print(f"Could not read file {file}")
        sys.exit(1)
    return data
