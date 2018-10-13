# Weather Balloon Documentation

This repository conatins the the documentation for the Weather Balloon project.

To prepare your environment to build the documentation, install Python 3.6+ and
then :

    python3 -m venv venv
    . venv/bin/activate
    pip install -r requirements.txt

Use the `Makefile` to build the documentation:

    make html

To view the generated site:

    make serve-docs

You can then open the site at http://localhost:4444/html/
