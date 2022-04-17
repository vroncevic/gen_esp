# -*- coding: utf-8 -*-

import os
import sys
sys.path.insert(0, os.path.abspath('../../'))
project = u'gen_esp'
copyright = u'2016, Vladimir Roncevic <elektron.ronca@gmail.com>'
author = u'Vladimir Roncevic <elektron.ronca@gmail.com>'
version = u'1.1.0'
release = u'https://github.com/vroncevic/gen_esp/releases/'
extensions = ['sphinx.ext.autodoc', 'sphinx.ext.viewcode']
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = None
exclude_patterns = []
pygments_style = None
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = 'gen_espdoc'
latex_elements = {}
latex_documents = [(
    master_doc, 'gen_esp.tex', u'gen\\_esp Documentation',
    u'Vladimir Roncevic \\textless{}elektron.ronca@gmail.com\\textgreater{}',
    'manual'
)]
man_pages = [(master_doc, 'gen_esp', u'gen_esp Documentation', [author], 1)]
texinfo_documents = [(
    master_doc, 'gen_esp', u'gen_esp Documentation', author, 'gen_esp',
    'One line description of project.', 'Miscellaneous'
)]
epub_title = project
epub_exclude_files = ['search.html']
