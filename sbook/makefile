.SUFFIXES : .dvi .tex .bbl .ind .aux .oldaux .html .ps .m .eps .pdf .bsh .c .pl .java .class .glo .gls .idx .glo .gls .dia .xml .Snw .qb
# PRESERVE the following lines when applying newpaper
TEX1FILES = csc8360sb.tex introduction.tex history.tex wifi.tex trends.tex design.tex waccess.tex \
       	troubleshooting.tex modes.tex cellular.tex security.tex fundamentals.tex
TEX2FILES = 
TEXFILES = $(TEX1FILES) $(TEX2FILES)
BIBFILES = csc8360sb.bib
BBLFILES = csc8360sb.bbl
SRCFILES = $(TEXFILES) makefile $(BIBFILES) $(BBLFILES)
TEMPLATEDIR = ${templatesdir}
BINDIR = ${HOME}/bin
DOCFILES = README
GRAPHICSFILES =
TGZFILES = $(SRCFILES) $(GRAPHICSFILES) $(BIBFILES)
EXPORTFILES = $(TEXFILES) $(BBLFILES) $(DOCFILES) $(BIBFILES) csc8360sb
EXPORTFILES2 = csc8360sb.tgz
MINIEXPORTFILES = csc8360sb.pdf csc8360sb.html csc8360sb
GENERATEDFILES = csc8360sb.log csc8360sb.ps csc8360sb.aux \
                 csc8360sb.pdf csc8360sb.tgz \
                 csc8360sb.minitgz makefile.new csc8360sb.blg \
                 csc8360sb.bbl csc8360sb.tex~ csc8360sb.oldaux \
                 makefilehelp ftpcmds makefile.template .CODE
BINFILES =
TEMPLATEFILES =
ZIPFILES = csc8360sb.tex
ZIPBFILES = csc8360sb.pdf
STYLEFILES = 
EXPORTHOST = probus
EXPORTDIR = sbook
EXPORTSITE = $(EXPORTHOST):$(EXPORTDIR)
EXPORTDIR2 = sbook/courseteam
EXPORTSITE2 = $(EXPORTHOST):$(EXPORTDIR2)
REEXPORTHOST = probus
REEXPORTDIR = sbook
REEXPORTSITE = $(REEXPORTHOST):$(REEXPORTDIR)
MINIEXPORTDIR = sbook
MINIEXPORTSITE = $(EXPORTHOST):$(MINIEXPORTDIR)
EXPORTCMD = rsync -a -L -e ssh
REEXPORTCMD = scp -r
# POSTEXPORTCMD = ssh $(EXPORTHOST) "cd $(EXPORTDIR) ; make reexport"
POSTEXPORTCMD = 
INSTALLCMD = cp
MKFRAMES = mkframes3.pl -p ~/units/64428/sguide/toctop.html -q ~/units/64428/sguide/tocbot.html -P "</font><p><font size=-1>" -l -r -h 0 -b
BINDIR = $(HOME)/bin
TEMPLATEDIR = $(templatesdir)
# LATEX2HTMLCMD = "tth -p~/tthinputs -L$*"
LATEX2HTMLCMD = latex2html -show_section_numbers -split 3 -toc_stars -toc_depth 4 -link 4 -t TOP
ICONDIR = /usr/local/src/latex2html/icons.gif
ICONFILES =  blueball.gif change_begin.gif change_begin_right.gif \
change_delete.gif change_delete_right.gif change_end.gif change_end_right.gif \
contents.xbm contents_motif.gif cross_ref_motif.gif foot_motif.gif \
greenball.gif icons.html image.gif index_motif.gif invis_anchor.xbm \
lucy_left.gif lucy_left_gr.gif lucy_right.gif lucy_right_gr.gif \
lucy_up.gif lucy_up_gr.gif next_group_motif.gif next_group_motif_gr.gif \
next_motif.gif next_motif_gr.gif orangeball.gif pinkball.gif \
previous_group_motif.gif previous_group_motif_gr.gif  previous_motif.gif \
previous_motif_gr.gif purpleball.gif redball.gif up_motif.gif \
up_motif_gr.gif whiteball.gif yellowball.gif
ICONDIR = /usr/local/src/latex2html/icons.gif
all: csc8360sb.pdf  
# UPDATE the following lines when running newpaper
allpdfs:
	for f in *.eps ; \
	do make `echo $$f | sed 's/eps/pdf/'` ; \
	done
clean:
	rm -rf $(GENERATEDFILES)
	rm *.aux *ans* *old* *.ind *.inx *.out
update:
	cvs update
release:
	cd $parentdir ;\
	cvs release -d $dir
commit:
	cvs commit
help:
	less makefilehelp
print: csc8360sb.ps 
	lpr csc8360sb.ps
mpage: csc8360sb.ps
	mpage -1 -o -t -P -dp -m0 csc8360sb.ps
xview: csc8360sb.pdf
	evince csc8360sb.pdf &
xviewans: csc8360sb_ans.pdf
	evince csc8360sb_ans.pdf &
view: csc8360sb.pdf
	evince csc8360sb.pdf &
csc8360sb_ans.tex: csc8360sb.tex
	sed -e 's/ansfalse/anstrue/g' < csc8360sb.tex > csc8360sb_ans.tex 
csc8360sb.ps: csc8360sb.pdf
csc8360sb.html: csc8360sb.aux $(TEX1FILES) csc8360sb.bbl .latex2html-init
csc8360sb.bbl: $(TEX1FILES) $(BIBFILES)
csc8360sb.pdf: $(TEX1FILES) $(BIBFILES) $(GRAPHICSFILES) csc8360sb.aux csc8360sb.ind
csc8360sb.tgz: $(TGZFILES)
	tar -czvf csc8360sb.tgz $(TGZFILES)  
csc8360sb.minitgz: $(SRCFILES)
	tar -czvf csc8360sb.minitgz $(SRCFILES) 
csc8360sb.zip: $(ZIPFILES)  $(ZIPBFILES)
	if [ -f csc8360sb.zip ] ; then \rm csc8360sb.zip ; fi
	zip -l csc8360sb.zip $(ZIPFILES) 
	zip csc8360sb.zip $(ZIPBFILES)
reexport: $(EXPORTFILES)  
	ssh $(REEXPORTHOST) "bash -c \"if [ -d $(REEXPORTDIR) ] ; then echo 'Directory exists' ; else mkdir -p $(REEXPORTDIR) ; fi\""
	$(REEXPORTCMD) index.tgz $(EXPORTFILES) makefile $(REEXPORTSITE)
export: $(EXPORTFILES) csc8360sb.ps  \
        csc8360sb.pdf  csc8360sb.html 
	ssh $(EXPORTHOST) "bash -c \"if [ -d $(EXPORTDIR) ] ; then echo 'Directory exists' ; else mkdir -p $(EXPORTDIR) ; fi\""
	$(EXPORTCMD) csc8360sb.tgz $(EXPORTFILES) csc8360sb.pdf makefile \
              csc8360sb.html $(EXPORTSITE)
	$(POSTEXPORTCMD) 
miniexport: $(MINIEXPORTFILES)
	ssh $(EXPORTHOST) "bash -c \"if [ -d $(MINIEXPORTDIR) ] ; then echo 'Directory exists' ; else mkdir -p $(MINIEXPORTDIR) ; fi\""
	$(EXPORTCMD) $(MINIEXPORTFILES) $(MINIEXPORTSITE)
	$(POSTEXPORTCMD) 
install:
	$(INSTALLCMD) $(BINFILES) $(BINDIR)
	$(INSTALLCMD) $(TEMPLATEFILES) $(STYLEFILES) $(TEMPLATEDIR)
.m.eps:
	matlab -display 0 < $< 
.m.pcm: 
	vis -uo < $< > $@
.aux.oldaux:
	latex $*
	chkdiff $*
.pdf.ps:
	pdftops $*.pdf
.tex.ps: $< $*.aux
	pdflatex $<
	if ! chkdiff $* ; then pdflatex $< ; fi
	if ! chkdiff $* ; then pdflatex $< ; fi
	chkdiff $*
	pdftops $*.pdf
.tex.dvi: $< $*.aux
	chngpdftex.pl $< $*.XXDVIXX
	cp $< $*.XXSAVEPDFXX
	mv $*.XXDVIXX $<
	latex $<
	chkdiff $*
	mv $*.XXSAVEPDFXX $<
.idx.ind:
	makeindex < $< > $@
.aux.bbl:
	if grep "^\\\\bibliography" $*.tex ; then bibtex $* ; fi
.tex.html:
	$(LATEX2HTMLCMD) $*
	( cd $* ; rm -f $(GRAPHICSFILES) )
	for f in $(GRAPHICSFILES) ; \
	do ln -s /home/addie/courses/CSC8360/sbook/$$f $*/$$f ; \
	done
	if [ ! "$(ICONFILES)" = "" ] ; \
	then ( cd $* ; rm -f $(ICONFILES) ) ; \
	( cd $(ICONDIR) ; cp $(ICONFILES) /home/addie/courses/CSC8360/sbook/$* );\
	fi
	touch $*.html
	cd $* ;\
	replace "< Objectives" "Objectives" $*.html index.html ;\
	$(MKFRAMES) ;\
	if [ -f node1.html ] ;\
	then replace "< Objectives" "Objectives" node*.html ;\
	fi
.xml.tex: $<
	mkgoodsb -f $<
	for f in /home/addie/good/tmp/stage3.tex ; \
		do eval `echo "cp $$f $$f" | sed 's/\/home\/addie\/good\/tmp\//GOOD/' | sed "s/\/home\/addie\/good\/tmp\/stage3/$*/" | sed 's/GOOD/\/home\/addie\/good\/tmp\//'` ; \
		done ; \
	overwrite $*.tex /usr/bin/perl -n -e '$$_ =~ s/\\Img{(.*)\.eps}/\\Img{$$1.pdf}/;' -e 'print;' < $*.tex
.tex.pdf: $< $*.aux
	pdflatex $<
	if ! chkdiff $* ; then pdflatex $< ; fi
	if ! chkdiff $* ; then pdflatex $< ; fi
	chkdiff $*
.tex.bsh: $<
	tex2bash $*
.tex.pl: $<
	tex2bash $*.tex $*.pl
.eps.pdf: $<
	epstopdf $<
.tex.aux:
	touch $*.aux
.tex.oldaux:
	touch $*.oldaux
.tex.idx:
	touch $*.idx
.dia.eps:
	dia -e $*.eps $<
.Snw.tex: $<
	Rscript -e "Sweave(\"$<\")"
.qb.tex: $<
	quickbeam < $< > $*.tex
