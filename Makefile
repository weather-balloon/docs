# Minimal makefile for Sphinx documentation

# You can set these variables from the command line.
SPHINXOPTS    = -j4
SPHINXBUILD   = sphinx-build
SPHINXAUTOBUILD = sphinx-autobuild
SPHINXAUTOBUILDOPTS    = -j4 -B -p4444
SOURCEDIR     = src/docs/
BUILDDIR      = build/docs/

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

#serve-docs:
#	cd build/docs; python -m http.server 4444;

#publish:
#	@$(SPHINXBUILD) -b html -a "$(SOURCEDIR)" docs/

autobuild:
	@$(SPHINXAUTOBUILD) $(SPHINXAUTOBUILDOPTS) "$(SOURCEDIR)" "$(BUILDDIR)"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)