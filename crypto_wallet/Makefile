srcs := $(wildcard *.csvpp)
xlsx_files := $(srcs:%.csvpp=%.xlsx)
csv_files := $(srcs:%.csvpp=%.csv)

all: $(xlsx_files) $(csv_files)

%.xlsx: %.csvpp
	csvpp -o $@ $^

%.csv: %.csvpp
	csvpp -o $@ $^

.PHONY: all
