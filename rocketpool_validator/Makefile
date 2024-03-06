# Build a spreadsheet that can be used to calculate taxable cost basis for a Rocket Pool validator.
#
# This will build a workbook with two separate spreadsheets - "Rewards" & "Summary".  
#
# * "Rewards" serves as the ledger of transactions where the input will be added. You can get
# this data from something like ethstaker.tax or etherscan.io
# 
# * "Summary" aggregates the data to provide the totals.
#
all: rocketpool_validator.xlsx summary.csv rewards.csv 

# compile both of the sheets into the same workbook
rocketpool_validator.xlsx: rewards.csvpp summary.csvpp 
	csvpp $(CSVPPFLAGS) -n "Rewards" -o $@ rewards.csvpp
	csvpp $(CSVPPFLAGS) -n "Validator Summary" -o $@ summary.csvpp

rewards.csv: rewards.csvpp
	csvpp $(CSVPPFLAGS) -o $@ $^

summary.csv: summary.csvpp
	csvpp $(CSVPPFLAGS) -o $@ $^

clean:
	rm -f *.csv *.csvpo *.xlsx

.PHONY: all clean
