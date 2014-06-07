---
title:  "Louhos-blogi muuttaa!"
date:   2014-06-07 12:00:45
layout: news
category : news
tags : [news]
language: fi
---

### Louhos-blogi muuttaa

Olemme rakentaneet yhteiskunnallisen avoimen datan algoritmikirjastoja
vuodesta 2010. Louhos-blogissa olemme tiedottaneet projektin
etenemisestä ja julkaisseet esimerkkejä yhteiskunnallisen datan ja
laskennallisen analyysin yhdistelystä uusilla välineillä.  

Tämän postauksen myötä Louhos-blogimme muuttaa nyt kokonaisuudessaan
tähän uuteen osoitteseen. Tahdomme jatkossa kirjoittaa postauksia
suoraan toistettavalla lähdekoodilla
(mm. [Rmarkdown](http://rmarkdown.rstudio.com/) ja [iPython
notebook](http://ipython.org/notebook.html)), joita käytöstä nyt
väistyvä [Wordpress-blogimme](https://louhos.wordpress.com) ei
tue. [Uudesta blogistamme](http://louhos.github.io/), jota nyt luet,
postausten lähdekoodit on mahdollista ladata omalle koneelle, ajaa
sellaisenaan tai muokata edelleen.


### Siirtymävaihe

Samalla on tullut ajankohtaiseksi pilkkoa suomalaisen avoimen datan <a
href="http://louhos.github.io/sorvi/">sorvi-kirjasto</a> pienempiin
palasiin. Tämä auttaa riippuvuusviidakon setvimisessä helpottaen sekä
ylläpitoa että käyttöä.

Kehitämme laskentakirjastoja toistaiseksi vapaaehtoispohjalta. Olemme
nyt siirtämässä entisen sorvi-kirjaston ja Louhos-blogin
toiminnallisuudet uudelle toimintaa entistä paremmin tukevalle
alustalle. Odotellessa voit vilkaista rOpenGov-hankkeen <a
href="https://github.com/ropengov">Github-sivulta</a>
viimeistelyvaiheessa olevia kirjastoja Suomesta ja muualta. Paljon on
jo valmiina, ja tulemme kohtapuoliin kirjoittelemaan tähän blogiin
tarkempia esittelyjä valmiista kirjastoista, joita ovat esimerkiksi
äskettäin <a href="http://datademo.fi/">Datademo</a>-rahoitusta
saaneet <a href="https://github.com/rOpenGov/helsinki">helsinki</a> ja
<a href="https://github.com/rOpenGov/gisfin">gisfin</a> -kirjastot.


### R-ekosysteemi laajenee

Matkan varrella vahvistuneiden kansainvälisten verkostojen tiimoilta
on syntynyt <a
href="http://ropengov.github.io/">rOpenGov-verkosto</a>. Tällä
kansainvälisellä yhteiskunnallisen datan R-ekosysteemillä on tekijöitä
useista eri maista. Sivusto kokoaa tutkimuskäyttöön soveltuvia
laskentavälineitä yhteen ja edistää menetelmien harmonisointia eri
maiden välillä.

Uudet tekijät ja kontribuutiot ovat tervetulleita, yhteystietomme
löytyvät <a href="http://louhos.github.io/contact.html">Louhoksen</a>
(Suomi) ja <a
href="http://ropengov.github.io/contribute/">rOpenGov-hankkeen</a>
(kansainvälinen toiminta) sivujen kautta.




{% highlight r %}

# if (!require('devtools')) install.packages('devtools');
# require('devtools') make sure you have Rtools installed first! if not,
# then run: install_Rtools() install_github('installr', 'talgalili') # get
# the latest installr R package

if (packageVersion("installr") %in% c("0.8", "0.9", "0.9.2")) install.packages("installr")  #If you have one of the older installr versions, install the latest one

require(installr)
{% endhighlight %}



{% highlight text %}
## Loading required package: installr
## 
## Welcome to installr version 0.14.5
## 
## More information is available on the installr project website:
## https://github.com/talgalili/installr/
## 
## Contact: <tal.galili@gmail.com>
## Suggestions and bug-reports can be submitted at: https://github.com/talgalili/installr/issues
## 
## 			To suppress this message use:
## 			suppressPackageStartupMessages(library(installr))
{% endhighlight %}



{% highlight r %}

# The first two functions might take a good deal of time to run (depending
# on the date range)
RStudio_CRAN_data_folder <- download_RStudio_CRAN_data(START = "2014-06-05", 
    END = "2014-06-06")
{% endhighlight %}



{% highlight text %}
## Files where downloaded to:  /tmp/Rtmp8LAICf
{% endhighlight %}



{% highlight r %}
my_RStudio_CRAN_data <- read_RStudio_CRAN_data(RStudio_CRAN_data_folder)
{% endhighlight %}



{% highlight text %}
## Reading /tmp/Rtmp8LAICf/2014-06-05.csv.gz ...
## Reading /tmp/Rtmp8LAICf/2014-06-06.csv.gz ...
{% endhighlight %}



{% highlight text %}
## Loading required package: data.table
{% endhighlight %}



{% highlight r %}


package_users_per_day <- function(pkg_name, dataset, remove_dups = TRUE, ...) {
    # Modified from:
    # http://www.r-statistics.com/2013/06/answering-how-many-people-use-my-r-package/
    
    ss <- grepl(pkg_name, dataset$package)
    pkg_dataset <- dataset[ss, ]
    if (remove_dups) 
        pkg_dataset <- pkg_dataset[!duplicated(pkg_dataset$ip_id), ]
    installation_per_day <- aggregate(pkg_dataset$date, list(pkg_dataset$date), 
        length)
    
    colnames(installation_per_day) <- c("date", "downloads")
    
    # Convert dates to the data class
    installation_per_day$date <- as.Date(installation_per_day$date)
    installation_per_day$downloads.cumulative <- cumsum(installation_per_day$downloads)
    
    installation_per_day
}

# Collect the data
dfs <- NULL
for (pkg in c("sorvi", "helsinki", "sotkanet")) {
    
    # Get download stats for the package
    df <- package_users_per_day(pkg, my_RStudio_CRAN_data)
    
    # Add package name
    df$pkg <- pkg
    
    # Add to data
    dfs <- rbind(dfs, df)
    
}

# Convert package info to factor
dfs$pkg <- factor(dfs$pkg)

library(ggplot2)
{% endhighlight %}



{% highlight text %}
## Loading required package: methods
{% endhighlight %}



{% highlight r %}
theme_set(theme_classic(15))
p <- ggplot(dfs, aes(x = date, y = downloads.cumulative, col = pkg))
p <- p + geom_line()
p <- p + ggtitle("Latauksia huhtikuun alusta")
p <- p + xlab("Päivä") + ylab("Lataukset yhteensä")
print(p)
{% endhighlight %}

![center](/figs/2014-06-07-uusiblogi/cran.png) 


