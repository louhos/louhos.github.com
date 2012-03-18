---
layout: page
title: soRvi - asennus
---
{% include JB/setup %}

[soRvi](/sorvi/index.html) on yhteiskunnan avointen
tietovarantojen keskitettyyn hakuun, putsaamiseen, analysointiin,
yhdistelyyn ja visualisointiin suunnattu avoimen lähdekoodin hanke,
joka keskittyy erityisesti suomalaiseen avoimeen dataan. Avoimen
lähdekoodin R-kielelle toteutetun kirjaston välineet helpottavat
tiedonlouhinta-algoritmien soveltamista julkisiin tietolähteisiin
ammattimaisessa laskentaympäristössä. Valmiiden hakurutiinien ansiosta
monipuoliset aineistot ja tehokkaat analyysimenetelmät ovat
välittömästi yhdistettävissä ilman hankalia esikäsittelyvaiheita.

soRvi-paketti toimii mm. Linux-, Mac- ja
Windows-ympäristöissä. Alla tiivis ohjeistus kehitysversion
käyttöönotosta. Pyydämme raportoimaan havaituista puutteista
osoitteeseen sorvi-commits at lists.r-forge.r-project.org

##### 1. Asenna [R-laskentaympäristö](http://www.r-project.org). 
Tuemme uusinta versiota (R-2.14.2), joskin saattaa toimia myös
aikaisemmilla. Graafisista R-käyttöliittymistä suosittelemme
ohjelmistoa [RStudio](http://rstudio.org/).

##### 2. Asenna riippuvuudet:    

- **Windows:** Suurin osa riippuvuuksista asentuu tarvittaessa
automaattisesti. Asenna lisäksi [PERL](http://www.perl.org/get.html)
- **Mac:**
Asenna [XCode](http://developer.apple.com/xcode). Lisäksi
voit asentaa joissakin esimerkeissä tarvittavan ohjelmiston rgdal [rgdal-asennusohjeet](http://spatialanalysis.co.uk/2010/11/installing-rgdal-on-mac-os-x/) 
[rgdal-asennusohjeet2](http://stackoverflow.com/questions/7168345/problems-installing-rgeos-and-rgdal-on-mac-os-x-lion)).
* **Linux:**
Aja komentoriviltä [asennuskripti](http://github.com/louhos/takomo/tree/master/installation/). Tämä
asentaa ohjelmistot [XML](http://xmlsoft.org/downloads.html), [GEOS](http://trac.osgeo.org/geos), 
[PROJ.4](http://trac.osgeo.org/proj)
ja [CURL](http://curl.haxx.se/download.html), sekä
joissakin esimerkeissä tarvittavia paketteja
([GDAL](http://trac.osgeo.org/gdal/wiki/DownloadSource)
ja [freeglut](http://freeglut.sourceforge.net/)). Jos
asennusskriptin ajamisessa tulee ongelmia, voit kokeilla mainittujen
pakettien manuaalista asentamista.  

##### 3. Asenna soRvi: 
Käynnistä R ja aja 
[sorvin asennusskripti](http://sorvi.r-forge.r-project.org/examples/sorvi.installation.R) R:stä käsin komennolla

{% highlight r %}  
source("http://sorvi.r-forge.r-project.org/examples/sorvi.installation.R")  
{% endhighlight %}  
  
##### 4. Kokeile asennuksen onnistumista: 

Lataa soRvi käyttöön R:ssä komennolla   

{% highlight r %}
library("sorvi") 
{% endhighlight %}

Jos asennus onnistui, ruudulle tulostuu tietoa paketista. Seuraavaksi voit
kokeilla vaikkapa seuraavaa esimerkkiä:

{% highlight r %}
source("http://sorvi.r-forge.r-project.org/examples/helloworld.R")
{% endhighlight %}
