---
title:  "helsinki - Pääkaupunkiseudun avoimen datan työkalupakki R-kielelle"
date:   2014-06-11 13:36:00
layout: news
category : news
tags : [news,R,ropengov,helsinki]
language: fi
author: juuso
comments: true
---

Avoin data tarjoaa mahdollisuuden tutkia monia mielenkiintoisia yhteiskunnallisia kysymyksiä. Pääkaupunkiseudun kohdalla tämä onnistuu nyt [Datademo-rahoituksella](http://datademo.fi/) toteutetun [helsinki-kirjaston](https://github.com/rOpenGov/helsinki) avulla. Kirjasto tuo tärkeimmät pääkaupunkiseudun avoimet tietoaineistot R-laskentaympäristöön ja mahdollistaa niiden analyysin, yhdistämisen ja visualisoinnin.

Kirjaston kehitysversio löytyy [githubista](https://github.com/rOpenGov/helsinki) ja julkaisuversio [CRANista](http://cran.r-project.org/web/packages/helsinki/index.html). Kirjastossa mukana olevat datalähteet lyhyine esimerkkeineen löytyvät [tutoriaalista](https://github.com/rOpenGov/helsinki/blob/master/vignettes/helsinki_tutorial.md). [Ota yhteyttä](http://louhos.github.io/contact.html) jos haluat ehdottaa uusia datalähteitä! Tärkeimmät tällä hetkellä mukanava olevat lähteet ovat

* [Helsingin kaupungin Kiinteistövirasto (HKK)](http://ptp.hel.fi/avoindata/)
* [Helsingin seudun ympäristöpalvelu (HSY)](http://www.hsy.fi/seututieto/kaupunki/paikkatiedot/Sivut/Avoindata.aspx)
* [Pääkaupunkiseudun Palvelukartan API](http://api.hel.fi/servicemap/v1/)
* [HRI:n tilasto-API](http://dev.hel.fi/stats/)

helsinki-kirjasto on osa suomalaisen avoimen datan R-ekosysteemin [laajenemista](http://louhos.github.io/news/2014/06/07/uusiblogi/), jossa alkuperäinen [sorvi-kirjasto](http://louhos.github.io/sorvi/) pilkotaan useampaan helpommin hallittavaan ja käytettävään kirjastoon. Datademo-rahoituksen turvin pystyimme toteuttamaan helsinki-kirjastosta tärkeimmät datalähteet kattavan työkalun käyttöesimerkkeineen nopealla aikataululla. Ilman datademo-rahoitusta tässä olisi kestänyt huomattavasti pidempään. Kirjaston kehitys jatkuu tulevaisuudessa [uusien datalähteiden](https://github.com/rOpenGov/helsinki/blob/master/vignettes/todo-datasets.md) lisäämisellä ja käyttöesimerkkien julkaisulla.

Datademo-rahoituksesta jäi erittäin positiivinen kuva. Aktiivinen keskustelu ja kommentointi oli erittäin hyödyllistä, parantaen kaikkien ehdotusten laatua ja synnyttäen myös uusia ideoita. Osallistuimme Datademon toisellekin kierrokselle paikkatietoon keskittyvällä [gisfin-kirjastolla](https://github.com/ropengov/gisfin) ja saimme rahoitusta myös sille, mikä on hienoa!

Esimerkkinä helsinki-kirjaston käytöstä tutkimme miten ala-asteen koulujen sijainti pääkaupunkiseudulla suhtautuu asukastiheyteen. Aloitetaan asentamalla helsinki-kirjasto:


{% highlight r %}
# Install package helsinki from CRAN
install.packages("helsinki")
# Load package
library(helsinki)
{% endhighlight %}



Tutkiaksemme koulujen sijainnin suhdetta väestötiheyteen haemme ensin vuoden 2013 väestöruudukon ([HSY:ltä](http://www.hsy.fi/seututieto/kaupunki/paikkatiedot/Sivut/Avoindata.aspx)) funktiolla `get_hsy()` ja muokataan data sopivaan muotoon. Aineistossa on asetettu kaikkien alle sadan asukkaan ruutujen arvoksi 99 tietosuojasyistä.


{% highlight r %}
# Retrieve population grid for year 2013
popgrid.sp <- get_hsy(which.data = "Vaestotietoruudukko", which.year = 2013)
# Transform into lat/long coordinates
library(sp)
library(rgdal)
popgrid.sp <- sp::spTransform(popgrid.sp, CRS("+proj=longlat +datum=WGS84"))
# Transform to ggplot2-compatible data frame
library(ggplot2)
library(rgeos)
popgrid.df <- ggplot2::fortify(popgrid.sp, region = "INDEX")
# Merge original population grid data to the data frame
popgrid.df <- merge(popgrid.df, popgrid.sp, by.x = "id", by.y = "INDEX")
{% endhighlight %}


Haetaan sitten [Pääkaupunkiseudun Palvelukartan uudesta API:sta](http://api.hel.fi/servicemap/v1/) (uusi Palvelukartta [täällä](http://dev.hel.fi/servicemap/)) pääkaupunkiseudun peruskouluihin liittyvät palvelut funktiolla `get_servicemap()`. HUOM! API on vielä kehitysvaiheessa ja hakutulokset saattavat muuttua, näin kävi tätä blogikirjoitusta valmistellessakin!


{% highlight r %}
# Search services with 'perusopetus' (basic education)
res1 <- get_servicemap(query = "search", q = "perusopetus")
# List id, name and parent category id for the results
t(sapply(res1$results[1:11], function(x) c(x$id, x$name$fi, x$parent)))
{% endhighlight %}



{% highlight text %}
##       [,1]    [,2]                                              [,3]   
##  [1,] "26444" "Perusopetus"                                     "26412"
##  [2,] "27638" "yleinen perusopetus"                             "27636"
##  [3,] "27668" "yleinen perusopetus"                             "27666"
##  [4,] "32539" "Luokkien 1-6 perusopetus"                        "32536"
##  [5,] "32617" "Luokkien 7-9 perusopetus"                        "32536"
##  [6,] "32706" "Erityispedagogiikan mukainen perusopetus"        "32536"
##  [7,] "32707" "steinerpedagogiikan mukainen perusopetus"        "32706"
##  [8,] "32714" "Ruotsinkielinen perusopetus 2014-2015"           "26444"
##  [9,] "32717" "Luokkien 1-6 perusopetus"                        "32714"
## [10,] "32747" "Luokkien 7-9 perusopetus"                        "32714"
## [11,] "32536" "Suomen- ja vieraskielinen perusopetus 2014-2015" "26444"
{% endhighlight %}


Valitaan hakutuloksista numerot 4 ja 9 (id:t 32539 ja 32717), eli 'Luokkien 1-6 perusopetus' kategorioista 'Suomen- ja vieraskielinen perusopetus 2014-2015' ja 'Ruotsinkielinen perusopetus 2014-2015'.


{% highlight r %}
# Get all units under service ids 32539 and 32717 (use high 'page_size' to
# retrieve all results at once)
res2 <- get_servicemap(query = "unit", service = "32539,32717", page_size = 1000)
# Check which results have location information
has.location <- which(sapply(res2$results, function(x) !is.null(x$location)))
# Get coordinates for those results
coords <- t(sapply(res2$results[has.location], function(x) x$location$coordinates))
# Construct data frame
ed.df <- data.frame(long = coords[, 1], lat = coords[, 2], school = "alakoulu")
{% endhighlight %}


Datan visualisointia varten haetaan ensin karttatausta [Stamen-palvelusta](http://maps.stamen.com/) käyttäen [ggmap-kirjastoa](https://sites.google.com/site/davidkahle/ggmap). 


{% highlight r %}
# Get background map for helsinki using ggmap package
library(ggmap)
# Get bounding box from the population grid
hel.bbox <- as.vector(popgrid.sp@bbox)
# Get background map from Stamen maps
hel.map <- ggmap::get_map(location = hel.bbox, source = "stamen", maptype = "toner", 
    crop = TRUE)
{% endhighlight %}


Visualisoidaan lopuksi sekä väestöruudukko että koulujen sijainnit kartalle [ggplot2-kirjastolla](http://ggplot2.org/).


{% highlight r %}
# Plot background map
p <- ggmap(hel.map)
# Add population grid
p <- p + geom_polygon(data = popgrid.df, aes(x = long, y = lat, group = id, 
    fill = ASUKKAITA))
# Change fill scale for
p <- p + scale_fill_gradient(low = "grey80", high = "blue")
# Add services as points
p <- p + geom_point(data = ed.df, aes(x = long, y = lat), colour = "red")
# Remove axis information
p <- p + theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank())
# Add title
p <- p + ggtitle("Pääkaupunkiseudun väestötiheys ja koulujen sijainti")
# Print figure
print(p)
{% endhighlight %}

![center](/figs/2014-06-11-helsinki-kirjasto/popschool.png) 


Kartalla näkyvät tiheästi asutut alueet sinisellä ja koulut punaisina pisteinä. Koulujen sijainti näyttää vastaavan hyvin väestökeskittymiä, mutta erityisesti Espoon haja-asutusalueilla kouluja on harvassa ja koulumatkat voivat olla pitkiäkin. Samaan tapaan voisi tutkia muidenkin palvelujen sijaintia suhteessa asukastiheyteen.

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
<img alt="Creative Commons -käyttölupa" style="border-width:0"
src="http://i.creativecommons.org/l/by/4.0/88x31.png" /> </a>
