# Build a spreadsheet that can be used to calculate taxable cost basis for an ethereum validator.
#
# This will build a workbook with two separate spreadsheets - "Withdraws" & "Summary".  
#
# * "Withdraws" serves as the ledger of transactions where the input will be added. You can get
# this data from something like ethstaker.tax or etherscan.io
# 
# * "Summary" aggregates the data to provide the totals.
#
all: eth_validator.xlsx summary.csv withdraws.csv 

# compile both of the sheets into the same workbook
eth_validator.xlsx: withdraws.csvpp summary.csvpp 
	csvpp $(CSVPPFLAGS) -n "Withdraws" -o $@ withdraws.csvpp
	csvpp $(CSVPPFLAGS) -n "Validator Summary" -o $@ summary.csvpp

withdraws.csv: withdraws.csvpp
	csvpp $(CSVPPFLAGS) -n "Withdraws" -o $@ $^

summary.csv: summary.csvpp
	csvpp $(CSVPPFLAGS) -n "Validator Summary" -o $@ $^

clean:
	rm -f *.csv *.csvpo *.xlsx

.PHONY: all clean
