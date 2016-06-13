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
tue. Tästä [uudesta blogistamme](http://louhos.github.io/blog.html),
jota nyt luet, postausten lähdekoodit on mahdollista ladata omalle
koneelle, ajaa sellaisenaan tai muokata edelleen (ks. alla).


### Avoimen datan R-ekosysteemi laajenee

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

Alla lämmittelyksi toistettavalla R-esimerkillä piirretyt kuvaajat
pakettiemme CRAN-lataushistoriasta keväällä 2014.  [Esimerkin
taustakoodi](https://github.com/louhos/louhos.github.com/blob/master/_R/2014-06-07-uusiblogi.Rmd)
on piilotettu tekstin pitämiseksi selkeänä:






![center](/figs/2014-06-07-uusiblogi/cran2.png) 



### Blogipostauksen tuottaminen R-kielellä

Koko tämän postauksen, taustalla pyörivät R-koodit ja kuvat mukaan
lukien, voit ladata omalle koneellesi ja kääntää seuraavalla
komentosarjalla R:ssä.


{% highlight r %}
library(RCurl)
download.file("https://raw.githubusercontent.com/louhos/louhos.github.com/master/_R/2014-06-07-uusiblogi.Rmd", 
    destfile = "2014-06-07-uusiblogi.Rmd", method = "curl")
library(knitr)
knit("2014-06-07-uusiblogi.Rmd")
{% endhighlight %}


