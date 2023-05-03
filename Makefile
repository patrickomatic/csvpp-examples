CSVPP_REPO := ../csv-plus-plus

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

.PHONY: dependencies
# check out the repo and get the absolute newest changes
dependencies:
	gem install csv_plus_plus

.PHONY: local_dependencies
# check out the repo and get the absolute newest changes
local_dependencies:
	pushd $(CSVPP_REPO) && rake gem:build && popd
	gem install --local $(CSVPP_REPO)/csv_plus_plus-*.gem
