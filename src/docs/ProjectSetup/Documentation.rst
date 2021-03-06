*************
Documentation
*************

The documentation you are reading here is created using `Sphinx
<http://www.sphinx-doc.org/en/master/index.html>`_.

You can access the source code in the `Weather Balloon
<https://dev.azure.com/weatherballoon/_git/Weather%20Balloon>`_ repo. You'll
find the guide for building the documentation in the ``README.md`` file.

Conventions
===========

I use various diagrams to help illustrate various concepts. Most of the "formal"
diagrams are based in UML but I'm by no means a UML expert so please let me
know if I've slipped up. I reference the `Sparx Systems UML Tutorial
<https://www.sparxsystems.com.au/resources/uml2_tutorial/>`_ to guide me.

Visual Studio Extensions
========================

`Python <https://marketplace.visualstudio.com/items?itemName=ms-python.python>`_

    Microsoft's Python extension

`PlantUML <https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml>`_

    PlantUML diagram previews and handy file editing features

`reStructuredText <https://marketplace.visualstudio.com/items?itemName=lextudio.restructuredtext>`_

    Provides RST file handling but I'm struggling to get the preview to work


Jupyter Notebooks
=================

Note that VSCode lets you `work with Jupyter Notebooks <https://code.visualstudio.com/docs/python/jupyter-support>`_ 
but I find it's easier to work on Notebooks in the browser.

I'd suggest installing the `Unofficial Jupyter Notebooks Extensions
<https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/index.html>`_ as
it provides a set of really useful tools such as ``Table of Contents 2``. The
``requirements.txt`` file already installs the library but you may need to run
the following in your virtual environment::

    jupyter contrib nbextension install --sys-prefix
    jupyter nbextensions_configurator enable --sys-prefix

Just run ``make jupyter`` to start Jupyter.

Deployment
==========

The documentation is deployed to http://www.weatherballoon.info using an Azure
DevOps pipeline.

.. literalinclude:: ../../../azure-pipelines.yml
    :language: yaml
