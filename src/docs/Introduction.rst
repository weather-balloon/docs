############
Introduction
############

Welcome to the Weather Balloon Project!

This project provides a demonstration of Azure in DevOps project. 
I'm creating it as part of my study for the 
`AZ-203: Developing Solutions for Microsoft Azure <https://www.microsoft.com/en-us/learning/exam-AZ-203.aspx>`_
and `AZ-400: Microsoft Azure DevOps Solutions <https://www.microsoft.com/en-us/learning/azure-devops.aspx#cert-expansion-tab-exam-az-400>`_ exams

Use Case
========

The Weather Balloon site will focus on providing weather services based on data from the 
`Australian Bureau of Meteorology <http://www.bom.gov.au/>`_. 

.. uml:: diagrams/introduction/usecase.puml

Problem domain
==============

The use case makes it look rather simple but there's a lot to do to get the service going:

- Creating a searchable list of weather stations
- Loading observation and forecast data
- Providing various APIs, functions and sites for the service

Weather data is central to the problem domain and
I undertook research into applicable measurements and documented them in :ref:`Appendix: Notebooks`.

Approach
========

It's just me working on the project but I have used the 
`Agile process <https://dev.azure.com/weatherballoon/Weather Balloon/_boards/board/t/Weather Balloon Team/Features>`_ 
in Azure DevOps. The DevOps project provides the Agile board and build/release pipelines.

The codebase is in `GitHub <https://github.com/weather-balloon>`_.

I've described the setup etc in the :ref:`Project Setup` section.

Credits
=======

A number of third-party resources are utilised throughout this project and are
attributed below:

- The GeoNames data is licensed under a `Creative Commons Attribution 3.0
  License <http://creativecommons.org/licenses/by/3.0/>`_

- The Australian Bureau of Meteorology data is `Copyright Commonwealth of Australia 2018, Bureau of Meteorology <http://www.bom.gov.au/other/copyright.shtml?ref=ftr>`_
