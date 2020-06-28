usethis::use_roxygen_md()
usethis::use_readme_rmd()

library(devtools)
library(testthat)
library(roxygen2)

library(dplyr)
library(magrittr)
library(stringr)
library(stringi)
library(tidyverse)


#自分で関数を追加
#githubインストール



fun1(5,10)
?fun1

writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
Sys.which("make")
install.packages("jsonlite", type = "source")

library(virtual)
fun1(5,10)


#データをつくる関数をつくる
#データの個数を指定したらその分のデータフレームが作れる
#パッケージにでーたを格納する方法を調べる#見つからない探すのが下手くそ

#read.csvとread_csvの違いとは？
read_csv("住所.csv") -> jusyo
read.csv("女名前.csv") -> onna_namae
read.csv("男名前.csv") -> otoko_namae
read.csv("名字データ.csv") -> myoji

