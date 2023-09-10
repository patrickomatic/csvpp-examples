SRCS := all_features/all_features.csvpp \
				crypto_wallet/crypto_wallet.csvpp \
				loan/loan.csvpp \
				stocks/stocks.csvpp

XLSX_FILES := $(SRCS:%.csvpp=%.xlsx)
CSV_FILES := $(SRCS:%.csvpp=%.csv)

all: $(XLSX_FILES) $(CSV_FILES)

%.xlsx: %.csvpp
	csv++ -o $@ $^

%.csv: %.csvpp
	csv++ -o $@ $^

# TODO: use dotenv to create an example for google also

.PHONY: clean
clean:
	rm -f $(XLSX_FILES) $(CSV_FILES)
