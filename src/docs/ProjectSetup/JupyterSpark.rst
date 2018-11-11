***********************
Local Jupyter and Spark
***********************

Add the ``conda-forge`` channel to Anaconda.

To get a local environment running, install the following packages in Anaconda:

* ``pyspark``
* ``jupyter_nbextensions_configurator``

Set the environment variable::

    export SPARK_HOME="/anaconda3/lib/python3.7/site-packages/pyspark"

To start Spark as a stand-alone::

    pyspark


Tips & Tricks
=============

Jupyter Kernels
    Get a list of configured kernels using ``jupyter kernelspec list``