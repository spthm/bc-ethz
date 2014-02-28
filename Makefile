pdb_allfiles.tar: $(addsuffix .data,$(wildcard *.pdb))
	tar -cvf $@ $+
%.pdb.data : %.pdb
	awk -f program.awk $< > $@
