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

Weather station location
------------------------

Various weather agencies list their station details - e.g.:

* `Australian BoM <http://www.bom.gov.au/climate/data/stations/>`_
* `UK Met Office <https://www.metoffice.gov.uk/public/weather/climate-network/#?tab=climateNetwork>`_

These will have the GPS co-ordinate of the station.

Data sources
============



Design
======

.. uml:: diagrams/feature1/postcode_seq.puml
