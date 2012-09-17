# Copyright (C) 2011-2012 Louhos (louhos.github.com)
# Contact: louhos.github.com/contact.html
# All rights reserved.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the FreeBSD License:
# http://en.wikipedia.org/wiki/BSD_licenses

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# This script was implemented with soRvi version 0.1.72

# Load soRvi R library
library(sorvi)

# Load Maanmittauslaitos (MML) data 
LoadData("MML")

# Pick municipal borders shape file
kunnat <- MML[["1_milj_Shape_etrs_shape"]][["kunta1_p"]]

# Plot municipal borders with lines (kunta) and provinces with colors (maakunta)
p <- PlotShape(kunnat, varname = "Maakunta", type = "qualitative")

# Investigate other data contents in the shape file
print("Data fields in the shapefile object:")
print(names(kunnat))
