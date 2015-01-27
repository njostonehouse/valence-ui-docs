# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    = 
SPHINXBUILD   = sphinx-build
PAPER         = letter
SCOPE         = ext
BUILDDIR      = _build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
SCOPEOPT_int    = -A d2l_internal=true -t internal
SCOPEOPT_ext    = -t external 
ALLSPHINXOPTS   = -d $(BUILDDIR)/$(SCOPE)/doctrees $(PAPEROPT_$(PAPER)) $(SCOPEOPT_$(SCOPE)) $(SPHINXOPTS) .
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) .

.PHONY: help clean html dirhtml singlehtml pickle json htmlhelp qthelp devhelp epub latex latexpdf text man changes linkcheck doctest gettext

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  pickle     to make pickle files"
	@echo "  json       to make JSON files"
	@echo "  htmlhelp   to make HTML files and a HTML help project"
	@echo "  qthelp     to make HTML files and a qthelp project"
	@echo "  devhelp    to make HTML files and a Devhelp project"
	@echo "  epub       to make an epub"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  texinfo    to make Texinfo files"
	@echo "  info       to make Texinfo files and run them through makeinfo"
	@echo "  gettext    to make PO message catalogs"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"

clean:
	-rm -rf $(BUILDDIR)/$(SCOPE)/*

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/$(SCOPE)/html."

dirhtml:
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/dirhtml
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/$(SCOPE)/dirhtml."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/singlehtml
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/$(SCOPE)/singlehtml."

pickle:
	$(SPHINXBUILD) -b pickle $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/pickle
	@echo
	@echo "Build finished; now you can process the pickle files."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/json
	@echo
	@echo "Build finished; now you can process the JSON files."

htmlhelp:
	$(SPHINXBUILD) -b htmlhelp $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/htmlhelp
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
	      ".hhp project file in $(BUILDDIR)/$(SCOPE)/htmlhelp."

qthelp:
	$(SPHINXBUILD) -b qthelp $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/qthelp
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
	      ".qhcp project file in $(BUILDDIR)/$(SCOPE)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/$(SCOPE)/qthelp/Valence.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/$(SCOPE)/qthelp/Valence.qhc"

devhelp:
	$(SPHINXBUILD) -b devhelp $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/devhelp
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/Valence"
	@echo "# ln -s $(BUILDDIR)/$(SCOPE)/devhelp $$HOME/.local/share/devhelp/Valence"
	@echo "# devhelp"

epub:
	$(SPHINXBUILD) -b epub $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/epub
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/$(SCOPE)/epub."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/latex
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/$(SCOPE)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/$(SCOPE)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/$(SCOPE)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/text
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/$(SCOPE)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/man
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/$(SCOPE)/man."

texinfo:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/texinfo
	@echo
	@echo "Build finished. The Texinfo files are in $(BUILDDIR)/$(SCOPE)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
	      "(use \`make info' here to do that automatically)."

info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/$(SCOPE)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/$(SCOPE)/texinfo."

gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/locale
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/$(SCOPE)/locale."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/changes
	@echo
	@echo "The overview file is in $(BUILDDIR)/$(SCOPE)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/$(SCOPE)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(BUILDDIR)/$(SCOPE)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/$(SCOPE)/doctest/output.txt."
