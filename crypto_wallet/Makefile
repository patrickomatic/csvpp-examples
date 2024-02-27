srcs := $(wildcard *.csvpp)
xlsx_files := $(srcs:%.csvpp=%.xlsx)
csv_files := $(srcs:%.csvpp=%.csv)

all: $(xlsx_files) $(csv_files)

%.xlsx: %.csvpp
	csvpp $(CSVPPFLAGS) -o $@ $^

%.csv: %.csvpp
	csvpp $(CSVPPFLAGS) -o $@ $^

clean:
	rm -f *.csv *.csvpo *.xlsx

.PHONY: all clean
