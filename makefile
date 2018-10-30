tex_files = $(wildcard *.tex)
pdf_files = $(patsubst %.tex,%.pdf,$(tex_files))
file_types = cv resume
all_tex_files = $(tex_files) $(foreach x,$(file_types),$(wildcard $(x)/*.tex))
makefile_dep = makefile.dep

%.pdf: %.tex
	echo $(^)
	xelatex $(<)
	rm -f *.aux *.log *.out

all: $(pdf_files)

-include $(makefile_dep)

$(makefile_dep): makefile $(all_tex_files)
	@> $(@)
	@for x in $(file_types); \
		do y=`ls *_$$x.tex`; \
		z=`echo $$y | sed -e "s/\.tex/\.pdf/"`; \
		echo "$$z : $$y \$$(wildcard $$x/*.tex) awesome-cv.cls" >> $(@); \
		echo "" >> $(@); \
	done

.PHONY: clean

clean:
	rm -f *.aux *.log *.out $(pdf_files) $(makefile_dep)
