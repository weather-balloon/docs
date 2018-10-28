###################################
Feature 1: Locate a weather station
###################################

.. contents::

Introduction
============

The feature is described as follows:

    As a user I want to find my nearest weather station so that I can get
    weather observations for my local area



:ref:`Feature 2: Locate a forecast region` will handle forecasting.

Background
==========

User location
-------------

We're likely to be able to determine the user's location via either :

- Using the `HTML 5 Geolocation API <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API>`_
- Asking the user to enter their postcode or town
- Asking the user to click on a map (e.g. to select a station or area)

Data sources
------------

The :ref:`Getting a web user’s location` notebook provides analysis of the data sources.

Post codes
    For this work I will use `postcodes from GeoNames <http://download.geonames.org/export/zip/>`_.

Weather station location
    Various weather agencies list their station details - e.g.:

    * `Australian BoM <http://www.bom.gov.au/climate/data/stations/>`_
    * `UK Met Office <https://www.metoffice.gov.uk/public/weather/climate-network/#?tab=climateNetwork>`_

    These will have the GPS co-ordinate of the station.

    For this work I will use the `BoM's list <ftp://ftp.bom.gov.au/anon2/home/ncc/metadata/sitelists/stations.zip>`_.


Loading Weather stations
========================

Design
------

.. uml:: diagrams/feature1/weatherstations_seq.puml

Implementation
--------------







Loading Postcodes
=================

Design
------

.. uml:: diagrams/feature1/postcode_seq.puml

Implementation
--------------

Azure Function: CsvToJson
^^^^^^^^^^^^^^^^^^^^^^^^^

Unfortunately, LogicApps doesn't have a CSV parser (!) so I'll create a basic
Azure Function in C#. The function will accept HTTP POST requests with the CSV
text in the request body. I'll assume that the CSV has a header row but you can
pass ``header=0`` in the query string to disable this.

You can access the `Source
code <https://dev.azure.com/weatherballoon/Weather%20Balloon/_git/function-parse-csv>`_
under the DevOps project and try out the code locally.

This will be the first Azure Function created so let's spend some time setting
up our environment:

#. First of all, install the `Azure Functions extension`_ for Visual Studio Code.
#. The `extension's documentation`_ provides the follow-up steps for configuring your system to run functions  locally.

.. _Azure Functions extension: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions

.. _extension's documentation: https://code.visualstudio.com/tutorials/functions-extension/getting-started

