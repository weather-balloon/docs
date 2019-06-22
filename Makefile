# Minimal makefile for Sphinx documentation

# You can set these variables from the command line.
SPHINXOPTS    = -j4
SPHINXBUILD   = pipenv run sphinx-build
SPHINXAUTOBUILD = pipenv run sphinx-autobuild
JUPYTER = pipenv run jupyter
SPHINXAUTOBUILDOPTS    = -j4 -B -p4444
SOURCEDIR     = src/docs/
BUILDDIR      = build/docs/

# Put it first so that "make" without argument is like "make help".
help :
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile 

jupyter :
	@$(JUPYTER) notebook

autobuild :
	@$(SPHINXAUTOBUILD) $(SPHINXAUTOBUILDOPTS) "$(SOURCEDIR)" "$(BUILDDIR)"

publish : clean html epub latexpdf
	@$(SPHINXBUILD)  -b html epub latexpdf -a "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

clean-local :
	rm -rf _build/
	