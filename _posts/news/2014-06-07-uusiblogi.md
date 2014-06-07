---
title:  "Louhos-blogi muuttaa!"
date:   2014-06-07 12:00:45
layout: news
category : news
tags : [news]
language: fi
---

### Tausta

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
tue. Tästä [uudesta blogistamme](http://louhos.github.io/), jota nyt luet,
postausten lähdekoodit on mahdollista ladata omalle koneelle, ajaa
sellaisenaan tai muokata edelleen.


### Siirtymävaihe

Samalla on tullut ajankohtaiseksi pilkkoa suomalaisen avoimen datan <a
href="http://louhos.github.io/sorvi/">sorvi-kirjasto</a> pienempiin
palasiin. Tämä auttaa riippuvuusviidakon setvimisessä helpottaen sekä
ylläpitoa että käyttöä. Olemme nyt siirtämässä entisen sorvi-kirjaston
ja Louhos-blogin toiminnallisuudet uudelle toimintaa entistä paremmin
tukevalle alustalle. Odotellessa voit vilkaista rOpenGov-hankkeen <a
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
maiden välillä. Uudet tekijät ovat tervetulleita. Yhteystietomme löytyvät <a
href="http://louhos.github.io/contact.html">Louhoksen</a> (Suomi) ja
<a href="http://ropengov.github.io/contribute/">rOpenGov-hankkeen</a>
(kansainvälinen toiminta) sivujen kautta.

### Suomi-R-kirjastojen lataushistoria

Alla lämmittelyksi toistettava R-esimerkki, joka hakee
CRAN-repositorystä pakettiemme lataushistorian ja piirtää niistä
kuvaajat. Voit ladata ja kääntää koko tämän blogipostauksen, R-koodit
mukaan lukien, seuraavalla komentosarjalla R:ssä:





Ja tässä vielä se varsinainen esimerkki:


{% highlight text %}
## Files where downloaded to:  /tmp/RtmpCVqDAJ
{% endhighlight %}



{% highlight text %}
## Reading /tmp/RtmpCVqDAJ/2014-06-05.csv.gz ...
## Reading /tmp/RtmpCVqDAJ/2014-06-06.csv.gz ...
{% endhighlight %}

<img src="/figs/2014-06-07-uusiblogi/cran.png" title="center" alt="center" width="1\linewidth" />


