# TODO: use dotenv to create an example for google also

SRCS := $(wildcard */*.csvpp)

XLSX_FILES := $(SRCS:%.csvpp=%.xlsx)
CSV_FILES := $(SRCS:%.csvpp=%.csv)

all: $(XLSX_FILES) $(CSV_FILES)

%.xlsx: %.csvpp
	csvpp -o $@ $^

%.csv: %.csvpp
	csvpp -o $@ $^

.PHONY: clean
clean:
	rm -f $(XLSX_FILES) $(CSV_FILES)
