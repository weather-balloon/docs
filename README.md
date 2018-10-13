# Weather Balloon Documentation

This repository conatins the the documentation for the Weather Balloon project.

To prepare your environment to build the documentation you'll need a few pre-requisites::

    brew install python3 graphviz plantuml pandoc

A Python VirtualEnv is then setup for the requirements::

    python3 -m venv venv
    . venv/bin/activate
    pip install -r requirements.txt

Use the `Makefile` to build the documentation::

    make html

To view the generated site::

    make serve-docs

You can then open the site at http://localhost:4444/html/

## Visual Studio Code settings

I had some hiccups getting the reStructuredText extension to display previews
but the following appears to work:

    {
        "python.pythonPath": "venv/bin/python",
        "plantuml.diagramsRoot": "src/docs/diagrams",
        "plantuml.exportOutDir": "${workspaceFolder}/_build/diagrams",
        "plantuml.previewSnapIndicators": true,
        "restructuredtext.confPath": "${workspaceFolder}/src/docs",
        "restructuredtext.languageServer.disabled": false,
        "restructuredtext.builtDocumentationPath": "${workspaceFolder}/_build/html",
        "restructuredtext.sphinxBuildPath": "${workspaceFolder}/venv/bin/sphinx-build"
    }
