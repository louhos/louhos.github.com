# soRvi-paketin asennusskripti R-kielelle
# Lisätietoa projektista: louhos.github.com/sorvi

# (C) 2011-2012 Louhos (louhos.github.com). All rights reserved.
# Contact: <sorvi-commits@lists.r-forge.r-project.org>
# License: FreeBSD (keep this notice).

# Kayttoohjeet: 
# 1) Asenna vaaditut jarjestelmariippuvuudet - ohjeet sivulla:
#     http://louhos.github.com/sorvi/asennus.html
#
# 2) Aja tama skripti R:n komentorivilta komennolla:
#    source("http://sorvi.r-forge.r-project.org/examples/sorvi.installation.R")
#    (asentaminen edellyttaa toimivaa verkkoyhteytta)

install.packages(devtools)
library(devtools)
install_github(repo = "soRvi-dev", username = "louhos", type = "source")




