
draft-irtf-icnrg-flic-00.xml: draft-irtf-icnrg-flic.xml
	sed -e '$(join $(addprefix s/,$(addsuffix -latest/,$(drafts))), $(addsuffix /g;,$(drafts_next)))' $< > $@
diff-draft-irtf-icnrg-flic-.txt.html: draft-irtf-icnrg-flic-.txt draft-irtf-icnrg-flic.txt
	-$(rfcdiff) --html --stdout $^ > $@
