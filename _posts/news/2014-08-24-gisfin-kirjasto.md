---
title:  "gisfin - Avoimen suomalaisen paikkatiedon työkalupakki R-kielelle"
date:   2014-08-24 20:00:00
layout: news
category : news
tags : [news,R,ropengov,gisfin]
language: fi
author: joona
comments: true
---

[Paikkatiedon](https://fi.wikipedia.org/wiki/Paikkatieto) käsittely on keskeinen osa avoimen datan analysointia ja visualisointia. Nykyisellään paikkatietoaineistot ovat hajallaan eri lähteissä, tiedostomuodoissa ja koordinaattijärjestelmissä, joten niiden hyödyntäminen vaatii huomattavaa erityisosaamista. Iso osa paikkatietoaineistojen käsittelyyn liittyvistä toimenpiteistä on kuitenkin automatisoitavissa. Tästä syystä olemme kehittäneet suomalaisen paikkatiedon käsittelyyn tarkoitetun R-paketin: [`gisfin`](https://github.com/rOpenGov/gisfin). [Datademo-rahoituksen](http://datademo.fi/) turvin olemme saaneet `gisfin`-paketin kehityksen vauhdikkaaseen alkuun.

Paketin kehitysversio löytyy [githubista](https://github.com/rOpenGov/gisfin) ja vaikka kehitettävää on vielä paljon, voi pakettia jo hyödyntää monenlaisiin tehtäviin. Datalähteet, joita paketti hyödyntää, sekä lyhyet käyttöä kuvaavat esimerkit löytyvät paketin [tutoriaalista](https://github.com/rOpenGov/helsinki/blob/master/vignettes/gisfin_tutorial.md). 

Tärkeimmät tällä hetkellä mukanava olevat lähteet ovat

+ [Helsingin kaupungin Kiinteistöviraston aluejakokartat (HKK)](http://ptp.hel.fi/avoindata/)
+ [Helsingin seudun ympäristöpalvelun paikkatietoaineistot (HSY)](http://www.hsy.fi/seututieto/kaupunki/paikkatiedot/Sivut/Avoindata.aspx)
+ [Maanmittauslaitoksen avointa dataa](http://www.maanmittauslaitos.fi/avoindata)
+ [Tilastokeskuksen paikkatietoaineistoja](http://www.stat.fi/tup/rajapintapalvelut/index_en.html)

Seuraavaksi aiomme laajentaa yksittäisistä kaupungeista saatavilla olevan datan määrä sisällyttämällä pakettiin [Lounaispaikan](http://paikkatietokeskus.lounaispaikka.fi/fi/aineistot/) Turku-aineistoja. [Ota yhteyttä](http://louhos.github.io/contact.html) jos haluat ehdottaa uusia datalähteitä!

`gisfin`-paketti jatkaa suomalaisen avoimen datan R-ekosysteemin laajenemista. Keväällä [toteutimme](http://louhos.github.io/news/2014/06/11/helsinki-kirjasto/) Datademon edellisen kierroksen rahoituksen turvin pääkaupunkiseudun avoimeen dataan keskittyneen [`helsinki`-paketin](https://github.com/rOpenGov/helsinki). Omalta osaltamme Datademo on tarjonnyt sopivia resursseja kehitystyön ylläpitämiseen ja kokemuksemme molemmista kierroksista ovat olleet erittäin positiivisia.

`gisfin` on edelleen aktiivisen kehityksen alla ja tulevaisuudessa lisäämme [uusia datalähteitä](https://github.com/rOpenGov/gisfin/blob/master/vignettes/todo-datasets.md) ja kehitämme käyttöesimerkkejä. Paketin kehitykseen liittyi loppumetreillä mukaan myös Jussi Jousimo Helsingin yliopistolta, joka toi mukaan Tilastokeskuksen paikkatietoaineistoja. Lisäksi meillä on Jussin johdolla työn alla [`fmi`-paketti](https://github.com/rOpenGov/fmi) Ilmatieteen laitoksen [avointen datojen](https://ilmatieteenlaitos.fi/avoin-data) käsittelyyn sekä yleisesti paikkatiedon verkkojakeluun tarkoitettua [WFS](https://en.wikipedia.org/wiki/Web_Feature_Service)-rajapintamäärittelyä ymmärtävä [`rwfs`-paketti](https://github.com/rOpenGov/rwfs). Suomalainen avoimen datan R-ekosysteemi jatkaa siis laajenemistaan myös tulevaisuudessa!

## Esimerkkejä

### Suomen kunnat kartalle

Kuntarajat ovat tarpeellisia erilaisissa vaikkappa vaaleihin tai tilastotietoihin liittyvissä visualisoinneissa. Toisaalta kuntarajat muuttuvat lähes vuosittain. Ajantasainen kuntaraja-aineisto on saatavissa Maanmittauslaitokslta, mutta verrattain hankalassa GML-formaatissa. Alla oleva esimerkki näyttää, kuinka `list_mml_datasets`-funktiota voidaan käyttää listaamaan saatavilla olevat MML:n avoimet aineistot. Tämä jälkeen kuntaraja-aineisto (hallintoalueet) haetaan `get_mml`  -funktiolla.


{% highlight r %}
library(gisfin)

list_mml_datasets()
{% endhighlight %}



{% highlight text %}
## $`2012`
## character(0)
## 
## $`Maastotietokanta-tiesto1`
## [1] "N61_v"
## 
## $`Maastotietokanta-tiesto2`
## [1] "N62_p" "N62_s" "N62_t" "N62_v"
## 
## $`Yleiskartta-1000`
##  [1] "AmpumaRaja"             "HallintoAlue"          
##  [3] "HallintoAlue_DataFrame" "HallintoalueRaja"      
##  [5] "KaasuJohto"             "KarttanimiPiste500"    
##  [7] "KarttanimiPiste1000"    "KorkeusAlue"           
##  [9] "KorkeusViiva500"        "KorkeusViiva1000"      
## [11] "LentokenttaPiste"       "LiikenneAlue"          
## [13] "MaaAlue"                "Maasto1Reuna"          
## [15] "Maasto2Alue"            "MetsaRaja"             
## [17] "PeltoAlue"              "RautatieViiva"         
## [19] "SahkoLinja"             "SuojaAlue"             
## [21] "SuojametsaRaja"         "SuojeluAlue"           
## [23] "TaajamaAlue"            "TaajamaPiste"          
## [25] "TieViiva"               "VesiAlue"              
## [27] "VesiViiva"             
## 
## $`Yleiskartta-4500`
##  [1] "HallintoAlue"        "HallintoalueRaja"    "KarttanimiPiste2000"
##  [4] "KarttanimiPiste4500" "KarttanimiPiste8000" "KorkeusAlue"        
##  [7] "KorkeusViiva"        "Maasto1Reuna"        "RautatieViiva"      
## [10] "TaajamaPiste2000"    "TaajamaPiste4500"    "TaajamaPiste8000"   
## [13] "TieViiva2000"        "TieViiva4500"        "TieViiva8000"       
## [16] "VesiAlue"            "VesiViiva2000"       "VesiViiva4500"      
## [19] "VesiViiva8000"
{% endhighlight %}



{% highlight r %}
# Haetaan hallinto-alue aineisto
sp.mml <- get_mml(map.id="Yleiskartta-4500", data.id="HallintoAlue")

# Luodaan sopiva temaattinen karttaväritys aineistolle
sp.mml@data$COL <- factor(generate_map_colours(sp.mml))
# Piirretään kartta-aineisto käyttäen kuntia
spplot(sp.mml, zcol="COL", col.regions=rainbow(length(levels(sp.mml@data$COL))), colorkey=FALSE)
{% endhighlight %}

![center](/figs/2014-08-24-gisfin-kirjasto/MML_kunnat-1.png) 

### Helsingin äänestysalueet

Maamme suuremmat kaupungit kuten Helsinki, Turku ja Tampere tarjoavat monenlaisia avoimia aineistoja, joista osa on myös paikkaan sidottuja. Helsingissä paikkatietoaineistoja on saatavilla esimerkiksi [Helsingin kaupungin paikkatietopalveluiden](http://ptp.hel.fi/) kautta. Seuraava esimerkki noutaa kaupungin sivuilta pääkaupunkiseudun äänestysalueet ja visualisoi kartan kunnittain.


{% highlight r %}
sp.aanestys <- get_helsinki_aluejakokartat(map.specifier="aanestysalue")
spplot(sp.aanestys, zcol="KUNTA", col.regions=rainbow(length(levels(sp.aanestys@data$KUNTA))), colorkey=FALSE)
{% endhighlight %}

![center](/figs/2014-08-24-gisfin-kirjasto/hkk-aanestysalue-1.png) 

Seuraava esimerkki puolestaan näyttää, kuinka Helsingin peruspiirijako voidaan piirtää Googlen karttapalvelusta saadun taustakartan päälle. Haetaan ensin aineisto:


{% highlight r %}
library(ggmap)
{% endhighlight %}



{% highlight text %}
## Error in library(ggmap): there is no package called 'ggmap'
{% endhighlight %}



{% highlight r %}
library(ggplot2)

sp.piiri <- get_helsinki_spatial(map.type="piirijako", map.specifier="ALUEJAKO_PERUSPIIRI")
{% endhighlight %}

Googlen kartta-aineistot ovat maantieteellisessä, 
[WGS84](https://fi.wikipedia.org/wiki/WGS84)-pohjaisessa 
koordinaattijärjestelmässä. Peruspiirien piirtämistä varten selvitetään ensin
missä koordinaattijärjestelmässä peruspiiriaineisto on:


{% highlight r %}
sp.piiri@proj4string
{% endhighlight %}



{% highlight text %}
## CRS arguments:
##  +init=epsg:3879 +proj=tmerc +lat_0=0 +lon_0=25 +k=1 +x_0=25500000
## +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs
{% endhighlight %}

[EPSG](http://www.epsg-registry.org/)-koodi 3879 paljastaa, että aineisto on 
Helsingissä käytössä olevassa ETRS89/GK25FIN tasokoordinaattijärjestelmässä. 
Aineiston saamiseksi yhteismitalliseksi Googlen taustakartan kanssa, on se ensin
projisoitava maantieteelliseen koordinaattijärjestelmään:


{% highlight r %}
sp.piiri <- sp::spTransform(sp.piiri, CRS("+proj=longlat +datum=WGS84"))
{% endhighlight %}

Lopuksi piirretään peruspiirit ja taustakartta käyttäen suosittua 
`ggplot2`-pakettia ja sen karttalaajennosta, `ggmap`-pakettia:


{% highlight r %}
# Syötetään keskikoordinaatit peruspiirien maaantieteelliselle ulottuvuudelle
hel.center <- apply(bbox(sp.piiri), 1, mean)

# Haetaan kartta Googlen karttapalvelusta
hel.map <- ggmap::get_map(location=hel.center, source="google", zoom=10, scale=2)
{% endhighlight %}



{% highlight text %}
## Error in loadNamespace(name): there is no package called 'ggmap'
{% endhighlight %}



{% highlight r %}
# Muokataan paikkatietoaineisto ggplot2:lle sopivaan muotoon ja piirretään
# aineistot
df.piiri <- sp2df(sp.piiri, region="NIMI")
ggmap(hel.map) + geom_polygon(data=df.piiri, aes(x=long, y=lat, fill=NIMI), alpha=0.5) + theme(legend.position="none")
{% endhighlight %}



{% highlight text %}
## Error in eval(expr, envir, enclos): could not find function "ggmap"
{% endhighlight %}

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
<img alt="Creative Commons -käyttölupa" style="border-width:0"
src="http://i.creativecommons.org/l/by/4.0/88x31.png" /> </a>
