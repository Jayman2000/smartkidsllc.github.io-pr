import pathlib

import tomlkit


def potentially_bump_requires_python_version():
  # When opening files in Python, you have two options. You can either open the
  # file as a text file or open the file as a binary file. Python defaults to
  # opening files as text files [1]. We open pyproject.toml as a binary file
  # here even though it contains text.
  #
  # We could have opened it as a text file, but that would be more error prone.
  # When opening files as text files, you don’t technically need to specify the
  # encoding keyword argument, but you always should [2]. This then begs the
  # question: what should the encoding keyword argument be set to?
  #
  # Luckily, we don’t have to bother answering that question. Instead of
  # figuring out what a good value for the encoding keyword argument would be,
  # we can just open the file as a binary file. It’s less work to do it that
  # way, and it’s less error prone.
  #
  # [1]: <https://docs.python.org/3/library/functions.html#open>
  # [2]: <https://peps.python.org/pep-0597>
  with pathlib.Path("pyproject.toml").open(mode="rb") as file:
    pyproject = tomlkit.load(file)
  print(pyproject["project"]["requires-python"])

