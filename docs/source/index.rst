Generate ESP Project
--------------------

**gen_esp** is tool for generation of esp project.

Developed in `python <https://www.python.org/>`_ code.

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

|gen_esp python checker| |gen_esp python package| |github issues| |documentation status| |github contributors|

.. |gen_esp python checker| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python_checker.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python_checker.yml

.. |gen_esp python package| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package_checker.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package.yml

.. |github issues| image:: https://img.shields.io/github/issues/vroncevic/gen_esp.svg
   :target: https://github.com/vroncevic/gen_esp/issues

.. |github contributors| image:: https://img.shields.io/github/contributors/vroncevic/gen_esp.svg
   :target: https://github.com/vroncevic/gen_esp/graphs/contributors

.. |documentation status| image:: https://readthedocs.org/projects/gen-esp/badge/?version=latest
   :target: https://gen-esp.readthedocs.io/en/latest/?badge=latest

.. toctree::
   :maxdepth: 4
   :caption: Contents

   self
   modules

Installation
-------------

|gen_esp python3 build|

.. |gen_esp python3 build| image:: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_build.yml/badge.svg
   :target: https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_build.yml

Navigate to release `page`_ download and extract release archive.

.. _page: https://github.com/vroncevic/gen_esp/releases

To install **gen_esp** type the following

.. code-block:: bash

    tar xvzf gen_esp-x.y.z.tar.gz
    cd gen_esp-x.y.z/
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

    # pyton3
    pip3 install gen_esp

Dependencies
-------------

**gen_esp** requires next modules and libraries

* `ats-utilities - Python App/Tool/Script Utilities <https://pypi.org/project/ats-utilities/>`_

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
        
        6 directories, 10 files

Copyright and licence
-----------------------

|license: gpl v3| |license: apache 2.0|

.. |license: gpl v3| image:: https://img.shields.io/badge/license-gplv3-blue.svg
   :target: https://www.gnu.org/licenses/gpl-3.0

.. |license: apache 2.0| image:: https://img.shields.io/badge/license-apache%202.0-blue.svg
   :target: https://opensource.org/licenses/apache-2.0

Copyright (C) 2016 - 2024 by `vroncevic.github.io/gen_esp <https://vroncevic.github.io/gen_esp>`_

**gen_esp** is free software; you can redistribute it and/or modify
it under the same terms as Python itself, either Python version 3.x or,
at your option, any later version of Python 3 you may have available.

Lets help and support PSF.

|python software foundation|

.. |python software foundation| image:: https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/psf-logo-alpha.png
   :target: https://www.python.org/psf/

|donate|

.. |donate| image:: https://www.paypalobjects.com/en_us/i/btn/btn_donatecc_lg.gif
   :target: https://www.python.org/psf/donations/

Indices and tables
------------------

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
