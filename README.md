# Weather Balloon Documentation

This repository conatins the the documentation for the Weather Balloon project.

To prepare your environment to build the documentation you'll need a few pre-requisites::

    - Make
    - Python 3.6+ and [Pipenv](https://docs.pipenv.org/en/latest/)
    - GraphViz
    - Plant UML
    - Pandoc

Pipenv helps you easily load the Python requirements::

    pipenv install

Use the `Makefile` to build the documentation::

    make html

To actively edit and review the site::

    make autobuild

You can then open the site at http://localhost:4444/

