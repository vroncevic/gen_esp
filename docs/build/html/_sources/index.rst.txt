Generate ESP Project
--------------------

**gen_esp** is tool for generation of esp project.

Developed in `python <https://www.python.org/>`_ code.

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

|Python package| |GitHub issues| |Documentation Status| |GitHub contributors|

.. |Python package| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package.yml

.. |GitHub issues| image:: https://img.shields.io/github/issues/vroncevic/gen_esp.svg
   :target: https://github.com/vroncevic/gen_esp/issues

.. |GitHub contributors| image:: https://img.shields.io/github/contributors/vroncevic/gen_esp.svg
   :target: https://github.com/vroncevic/gen_esp/graphs/contributors

.. |Documentation Status| image:: https://readthedocs.org/projects/gen_esp/badge/?version=latest
   :target: https://gen_esp.readthedocs.io/projects/gen_esp/en/latest/?badge=latest

.. toctree::
   :maxdepth: 4
   :caption: Contents

   self

Installation
-------------

|Install Python2 Package| |Install Python3 Package|

.. |Install Python2 Package| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python2_publish.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python2_publish.yml/badge.svg?branch=master

.. |Install Python3 Package| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_publish.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_publish.yml/badge.svg?branch=master

|Debian Linux OS|

.. |Debian Linux OS| image:: https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/debtux.png

Navigate to release `page`_ download and extract release archive.

.. _page: https://github.com/vroncevic/gen_esp/releases

To install **gen_esp** type the following

.. code-block:: bash

    tar xvzf gen_esp-x.y.z.tar.gz
    cd gen_esp-x.y.z/
    # python2
    wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
    python2 get-pip.py 
    python2 -m pip install --upgrade setuptools
    python2 -m pip install --upgrade pip
    python2 -m pip install --upgrade build
    pip2 install -r requirements.txt
    python2 -m build --no-isolation --wheel
    pip2 install ./dist/gen_esp-*-py2-none-any.whl
    rm -f get-pip.py
    chmod 755 /usr/local/lib/python2.7/dist-packages/usr/local/bin/gen_esp_run.py
    ln -s /usr/local/lib/python2.7/dist-packages/usr/local/bin/gen_esp_run.py /usr/local/bin/gen_esp_run.py
    # python3
    wget https://bootstrap.pypa.io/get-pip.py
    python3 get-pip.py 
    python3 -m pip install --upgrade setuptools
    python3 -m pip install --upgrade pip
    python3 -m pip install --upgrade build
    pip3 install -r requirements.txt
    python3 -m build --no-isolation --wheel
    pip3 install ./dist/gen_esp-*-py3-none-any.whl
    rm -f get-pip.py
    chmod 755 /usr/local/lib/python3.9/dist-packages/usr/local/bin/gen_esp_run.py
    ln -s /usr/local/lib/python3.9/dist-packages/usr/local/bin/gen_esp_run.py /usr/local/bin/gen_esp_run.py

You can use Docker to create image/container, or You can use pip to install

.. code-block:: bash

    # pyton2
    pip2 install gen_esp
    # pyton3
    pip3 install gen_esp

|GitHub docker checker|

.. |GitHub docker checker| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_docker_checker.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_docker_checker.yml

Dependencies
-------------

**gen_esp** requires next modules and libraries

* `ats-utilities - Python App/Tool/Script Utilities <https://pypi.org/project/ats-utilities/>`_

Generation flow of project setup
---------------------------------

Base flow of generation process

.. image:: https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/python_setup_flow.png

Tool structure
---------------

**gen_esp** is based on OOP.

Tool structure

.. code-block:: bash

    gen_esp/
    ├── conf/
    │   ├── gen_esp.cfg
    │   ├── gen_esp.logo
    │   ├── gen_esp_util.cfg
    │   └── template/
    │       └── generator_test.template
    ├── __init__.py
    ├── log/
    │   └── gen_esp.log
    ├── pro/
    │   ├── __init__.py
    │   ├── read_template.py
    │   └── write_template.py
    └── run/
        └── gen_esp_run.py

Copyright and licence
-----------------------

|License: GPL v3| |License: Apache 2.0|

.. |License: GPL v3| image:: https://img.shields.io/badge/License-GPLv3-blue.svg
   :target: https://www.gnu.org/licenses/gpl-3.0

.. |License: Apache 2.0| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
   :target: https://opensource.org/licenses/Apache-2.0

Copyright (C) 2021 by `vroncevic.github.io/gen_esp <https://vroncevic.github.io/gen_esp>`_

**gen_esp** is free software; you can redistribute it and/or modify
it under the same terms as Python itself, either Python version 2.x/3.x or,
at your option, any later version of Python 3 you may have available.

Lets help and support PSF.

|Python Software Foundation|

.. |Python Software Foundation| image:: https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/psf-logo-alpha.png
   :target: https://www.python.org/psf/

|Donate|

.. |Donate| image:: https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif
   :target: https://psfmember.org/index.php?q=civicrm/contribute/transact&reset=1&id=2

Indices and tables
------------------

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
