## csv++ Examples

Included in this repo are some helpful templates [written in the csv++ programming language](https://github.com/patrickomatic/csv-plus-plus).

## The Examples

* [all_features.csvpp](./all_features/all_features.csvpp) - A single template demonstrating all the features of csv++.
  - [Excel output](./all_features/all_features.xlsx)
  - [CSV output](./all_features/all_features.csv)

* [crypto_wallet.csvpp](./crypto_wallet/crypto_wallet.csvpp) - Track crypto assets in and out of a wallet including cost basis.
  - [Excel output](./crypto_wallet/crypto_wallet.xlsx)
  - [CSV output](./crypto_wallet/crypto_wallet.csv)

* [loan.csvpp](./loan/loan.csvpp) - A simple non-amortized loan with a fixed interest rate.
  - [Excel output](./loan/loan.xlsx)
  - [CSV output](./loan/loan.csv)

* [stocks.csvpp](./stocks/stocks.csvpp) - Calculate cost basis and average price of a stock.
  - [Excel output](./stocks/stocks.xlsx)
  - [CSV output](./stocks/stocks.csv)

## Installing

This repository uses [asdf](https://github.com/asdf-vm/asdf) to manage the Ruby version but you could use whatever Ruby installer you'd like.

```
$ ... install asdf ...
$ :
$ make dep
