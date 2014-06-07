---
title:  "Louhos-blogi muuttaa!"
date:   2014-06-07 12:00:45
layout: news
category : news
tags : [news]
language: fi
author:
  name: Leo Lahti
---

Olemme rakentaneet yhteiskunnallisen avoimen datan algoritmikirjastoja
[vuodesta 2010](https://louhos.wordpress.com). Louhos-blogissa olemme
tiedottaneet projektin etenemisestä ja julkaisseet esimerkkejä
yhteiskunnallisen datan ja laskennallisen analyysin yhdistelystä
uusilla välineillä.

Tämän postauksen myötä Louhos-blogimme muuttaa nyt kokonaisuudessaan
uuteen osoitteseen. Tahdomme jatkossa kirjoittaa postauksia suoraan
toistettavalla lähdekoodilla
(mm. [Rmarkdown](http://rmarkdown.rstudio.com/) ja [iPython
notebook](http://ipython.org/notebook.html)), joita käytöstä nyt
väistyvä [Wordpress-blogimme](https://louhos.wordpress.com) ei
tue. Tästä [uudesta blogistamme](http://louhos.github.io/), jota nyt
luet, postausten lähdekoodit on mahdollista ladata omalle koneelle,
ajaa sellaisenaan tai muokata edelleen. 


### R-ekosysteemi laajenee

Matkan varrella vahvistuneiden kansainvälisten verkostojen tiimoilta
on syntynyt <a
href="http://ropengov.github.io/">rOpenGov-verkosto</a>. Tällä
kansainvälisellä yhteiskunnallisen datan R-ekosysteemillä on tekijöitä
useista eri maista. Sivusto kokoaa tutkimuskäyttöön soveltuvia
laskentavälineitä yhteen ja edistää menetelmien harmonisointia eri
maiden välillä.  

Samalla on tullut ajankohtaiseksi pilkkoa suomalaisen avoimen datan <a
href="http://louhos.github.io/sorvi/">sorvi-kirjasto</a> pienempiin
palasiin. Tämä auttaa riippuvuusviidakon setvimisessä helpottaen sekä
ylläpitoa että käyttöä. Olemme nyt siirtämässä entisen sorvi-kirjaston
ja Louhos-blogin toiminnallisuudet uudelle toimintaa entistä paremmin
tukevalle alustalle. Jos aikataulu joskus sallii, suunnitelmissa on
kehittää myös sivuston ulkoasua, toistaiseksi kuitenkin keskitymme
ensisijaisesti toiminnallisuuden kehittelyyn. Odotellessa voit
vilkaista rOpenGov-hankkeen <a
href="https://github.com/ropengov">Github-sivulta</a>
viimeistelyvaiheessa olevia kirjastoja Suomesta ja muualta. Paljon on
jo valmiina, ja tulemme kohtapuoliin kirjoittelemaan tähän blogiin
tarkempia esittelyjä valmiista kirjastoista, joita ovat esimerkiksi
äskettäin <a href="http://datademo.fi/">Datademo</a>-rahoitusta
saaneet <a href="https://github.com/rOpenGov/helsinki">helsinki</a> ja
<a href="https://github.com/rOpenGov/gisfin">gisfin</a> -kirjastot.  

Uudet tekijät ovat tervetulleita. Yhteystietomme löytyvät <a
href="http://louhos.github.io/contact.html">Louhoksen</a> (Suomi) ja
<a href="http://ropengov.github.io/contribute/">rOpenGov-hankkeen</a>
(kansainvälinen toiminta) sivujen kautta.


### Suomalaisen avoimen datan R-kirjastojen lataushistoria

Alla lämmittelyksi toistettava R-esimerkki, joka hakee
CRAN-repositorystä pakettiemme lataushistorian ja piirtää niistä
kuvaajat:


{% highlight r %}

# if (!require('devtools')) install.packages('devtools');
# require('devtools') make sure you have Rtools installed first! if not,
# then run: install_Rtools() install_github('installr', 'talgalili') # get
# the latest installr R package

if (packageVersion("installr") %in% c("0.8", "0.9", "0.9.2")) install.packages("installr")  #If you have one of the older installr versions, install the latest one

require(installr)

# The first two functions might take a good deal of time to run (depending
# on the date range)
RStudio_CRAN_data_folder <- download_RStudio_CRAN_data(START = "2014-04-01", 
    END = "2014-06-06")
{% endhighlight %}



{% highlight text %}
## Files where downloaded to:  /tmp/RtmpzcTgBS
{% endhighlight %}



{% highlight r %}
my_RStudio_CRAN_data <- read_RStudio_CRAN_data(RStudio_CRAN_data_folder)
{% endhighlight %}



{% highlight text %}
## Reading /tmp/RtmpzcTgBS/2014-04-01.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-02.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-03.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-04.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-05.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-06.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-07.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-08.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-09.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-10.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-11.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-12.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-13.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-14.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-15.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-16.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-17.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-18.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-19.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-20.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-21.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-22.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-23.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-24.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-25.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-26.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-27.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-28.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-29.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-04-30.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-01.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-02.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-03.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-04.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-05.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-06.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-07.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-08.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-09.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-10.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-11.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-12.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-13.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-14.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-15.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-18.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-19.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-20.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-22.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-23.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-24.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-25.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-26.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-27.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-28.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-29.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-30.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-05-31.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-01.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-02.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-03.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-04.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-05.csv.gz ...
## Reading /tmp/RtmpzcTgBS/2014-06-06.csv.gz ...
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
theme_set(theme_classic(15))
p <- ggplot(dfs, aes(x = date, y = downloads.cumulative, col = pkg))
p <- p + geom_line()
p <- p + ggtitle("Latauksia huhtikuun 2014 alusta")
p <- p + xlab("Päivä") + ylab("Lataukset yhteensä")
print(p)
{% endhighlight %}

![center](/figs/2014-06-07-uusiblogi/cran.png) 



### Blogipostauksen tuottaminen R-kielellä

Koko tämän blogipostauksen, R-koodit ja kuvat mukaan lukien, voit
tuottaa seuraavalla komentosarjalla R:ssä.


{% highlight r %}
library(RCurl)
download.file("https://raw.githubusercontent.com/louhos/louhos.github.com/master/_R/2014-06-07-uusiblogi.Rmd", 
    destfile = "2014-06-07-uusiblogi.Rmd", method = "curl")
library(knitr)
knit("2014-06-07-uusiblogi.Rmd")
{% endhighlight %}


