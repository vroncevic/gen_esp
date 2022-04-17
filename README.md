<img align="right" src="https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/gen_esp_logo.png" width="25%">

# Generate ESP Project

☯️ **gen_esp** is tool for generation of esp project.

Developed in 🐍 **[python](https://www.python.org/)** code.

The README is used to introduce the modules and provide instructions on
how to install the modules, any machine dependencies it may have and any
other information that should be provided before the modules are installed.

[![gen_esp py code checker](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_py_checker.yml/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_py_checker.yml) [![gen_esp python package checker](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package.yml/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_package.yml) [![GitHub issues open](https://img.shields.io/github/issues/vroncevic/gen_esp.svg)](https://github.com/vroncevic/gen_esp/issues) [![GitHub contributors](https://img.shields.io/github/contributors/vroncevic/gen_esp.svg)](https://github.com/vroncevic/gen_esp/graphs/contributors)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Installation](#installation)
    - [Install using pip](#install-using-pip)
    - [Install using build](#install-using-build)
    - [Install using py setup](#install-using-py-setup)
    - [Install using docker](#install-using-docker)
- [Dependencies](#dependencies)
- [Generation flow of py module](#generation-flow-of-py-module)
- [Tool structure](#tool-structure)
- [Docs](#docs)
- [Contributing](#contributing)
- [Copyright and Licence](#copyright-and-licence)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### Installation

Used next development environment

![Development environment](https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/debtux.png)

[![gen_esp build python2 package](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python2_publish.yml/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python2_publish.yml) [![gen_esp build python3 package](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_publish.yml/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_python3_publish.yml)

Currently there are three ways to install package
* Install process based on using pip mechanism
* Install process based on build mechanism
* Install process based on setup.py mechanism
* Install process based on docker mechanism

##### Install using pip

Python 📦 is located at **[pypi.org](https://pypi.org/project/gen_esp/)**.

You can install by using pip

```bash
# python2
pip2 install gen_esp
# python3
pip3 install gen_esp
```

##### Install using build

Navigate to release **[page](https://github.com/vroncevic/gen_esp/releases/)** download and extract release archive 📦.

To install **gen_esp** type the following

```bash
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
```

##### Install using py setup

Navigate to **[release page](https://github.com/vroncevic/gen_esp/releases)** download and extract release archive 📦.

To install **gen_esp**, locate and run setup.py with arguments

```bash
tar xvzf gen_esp-x.y.z.tar.gz
cd gen_esp-x.y.z
# python2
pip2 install -r requirements.txt
python2 setup.py install_lib
python2 setup.py install_egg_info
# python3
pip3 install -r requirements.txt
python3 setup.py install_lib
python3 setup.py install_egg_info
```

##### Install using docker

You can use Dockerfile to create image/container 🚢.

[![gen_esp docker checker](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_docker_checker.yml/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/gen_esp_docker_checker.yml)

### Dependencies

**gen_esp** requires next modules and libraries

- [ats-utilities - Python App/Tool/Script Utilities](https://vroncevic.github.io/ats_utilities)

### Generation flow of py module

Base flow of generation process

![Generation flow](https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/gen_esp_flow.png)

### Tool structure

**gen_esp** is based on OOP

Generator structure

```bash
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
```

### Docs

[![documentation status](https://readthedocs.org/projects/gen_esp/badge/?version=latest)](https://gen_esp.readthedocs.io/en/latest/?badge=latest)
 [![pages-build-deployment](https://github.com/vroncevic/gen_esp/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/vroncevic/gen_esp/actions/workflows/pages/pages-build-deployment)

📗 More documentation and info at

* [gen_esp.readthedocs.io](https://gen_esp.readthedocs.io/en/latest/)
* [www.python.org](https://www.python.org/)

### Contributing

🌎 🌍 🌏 [Contributing to gen_esp](CONTRIBUTING.md)

### Copyright and Licence

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Copyright (C) 2016 by [vroncevic.github.io/gen_esp](https://vroncevic.github.io/gen_esp)

**gen_esp** is free software; you can redistribute it and/or modify
it under the same terms as Python itself, either Python version 2.x/3.x or,
at your option, any later version of Python 3 you may have available.

Lets help and support PSF.

[![Python Software Foundation](https://raw.githubusercontent.com/vroncevic/gen_esp/dev/docs/psf-logo-alpha.png)](https://www.python.org/psf/)

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://psfmember.org/index.php?q=civicrm/contribute/transact&reset=1&id=2)
