# TODO: use dotenv to create an example for google also
#
CSVPP := csvpp
subdirs := $(wildcard */.)

all: $(subdirs)

$(subdirs):
	$(MAKE) -C $@

clean:
	$(foreach dir, $(subdirs), $(MAKE) -C $(dir) clean;)

.PHONY: all clean $(subdirs)
