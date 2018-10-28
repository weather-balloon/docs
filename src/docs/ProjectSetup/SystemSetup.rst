************
System Setup
************

Introduction
============

TODO

I am mainly using a Mac but you should be able to adapt most examples to your
operating system of choice.

Domain
======

I registered the ``weatherballoon.info`` domain for the purposes of hosting
APIs, sites etc.

Azure
=====

Install the `Azure CLI
<https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest>`_

To access your Azure subscription, just run::

    az login

If you have multiple subscriptions, set the CLI to the appropriate one using::

    az account set --subscription "<SUBSCRIPTION NAME>"

Once you've logged in, setup a central (management) resource group:

    az group create --location australiaeast --name wb-management

This central resource group will house resources that won't be deployed via
pipelines. For the most part, these are static resources that will only be
deployed once and primarily managed manually.

    az storage account create --resource-group wb-management \
                            --name wbmanagement \
                            --sku Standard_LRS \
                            --https-only \
                            --kind StorageV2

A user-assigned managed identity will be created as I'll use it over a number of
services. 

To create the managed identity::

    az identity create --resource-group wb-management --name weatherballoon

TODO: Add Log Analytics workspace


Azure DevOps
============

Not long after I started piecing this project together, `Microsoft announced
Azure DevOps
<https://azure.microsoft.com/en-au/blog/introducing-azure-devops/>`_. I had
setup the initial code in GitHub but thought I might as well go for a body of
work that attempts to entirely use Azure-based resources. I have used Visual
Studio Team Services for a while but limitations around no public repositories
meant it didn't fit well with the approach I wanted to take here.

To start, I created the `weatherballoon organisation
<https://dev.azure.com/weatherballoon/>`_ in Azure DevOps. 

A single project is likely all I'll need for this work so I created the `Weather
Balloon <https://dev.azure.com/weatherballoon/Weather%20Balloon>`_ project to
house the various Git repositories, pipelines and planning boards that I'll use.

SSH Key
-------

Generate a new SSH key::

    ssh-keygen -C <YOUR EMAIL> -f ~/.ssh/weatherballoon

The public key is then added to your `SSH Public Keys
<https://dev.azure.com/weatherballoon/_usersSettings/keys>`_ in your Azure
DevOps user settings. I grab this using the ``pbcopy`` tool::

    cat ~/.ssh/weatherballoon.pub |pbcopy

Add an entry to ``~/.ssh/config/``::

    Host ssh.dev.azure.com
        HostName ssh.dev.azure.com
        IdentityFile ~/.ssh/weatherballoon

For more information around using SSH with Azure DevOps code repositories, refer
to the `How-to guide <https://docs.microsoft.com/en-gb/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=vsts>`_.

IDE
===

I'm using `Microsoft Visual Studio Code <https://code.visualstudio.com/>`_ as my
code editor. It's at version ``1.27.x`` at the time I write this but the product
is frequently updated so anything beyond that version should be fine.

Languages and SDKs
==================

Python 3.7+
    `Python Downloads <https://www.python.org/downloads/>`_

.NET Core SDK 2.1+
    `.NET Core SDK <https://www.microsoft.com/net/download>`_

Node.js 10+ (includes ``npm``)
    `Node Downloads <https://nodejs.org/en/download/current/>`_

You're likely to find that your platform's package manager gives you a
straight-forward way to do most of this. I use `Homebrew <https://brew.sh/>`_ on
my OS X system.

Tools
=====

* `Azure Storage Explorer
<https://azure.microsoft.com/en-au/features/storage-explorer/>`_

Microsoft also provides a variety of `Azure Developer Tools <https://azure.microsoft.com/en-au/tools/>`_ that are worth checking out.