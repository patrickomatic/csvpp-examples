# TODO: use dotenv to create an example for google also
#
subdirs := $(wildcard */.)

all: $(subdirs)

$(subdirs):
	$(MAKE) -j 16 -C $@

clean:
	rm -f */*.csv */*.xlsx */*.csvpo

.PHONY: all clean $(subdirs)
