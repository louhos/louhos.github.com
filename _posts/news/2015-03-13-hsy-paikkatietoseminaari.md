---
title:  "Avoimella paikkatiedolla kohti älykkäämpää kaupunkia"
date:   2015-03-13 16:45:00
layout: news
category : news
tags : [news, avoin data, paikkatieto]
language: fi
author: juuso
comments: true
---

Helsingin Seudun Ympäristöpalvelut ([HSY]) järjesti keskiviikkona vuotuisen paikkatietoseminaarin Heurekassa. Tämän vuoden seminaarissa teemana oli älykäs kaupunki, ja vieläpä kehitys älykkäästä viisaaseen kaupunkiin. Tapahtuman ohjelma ja esitysten kalvot löytyvät [täältä][hsy-kalvot].

[HSY]: https://www.hsy.fi/fi/asukkaalle/Sivut/default.aspx
[hsy-kalvot]: https://www.hsy.fi/fi/asiantuntijalle/tapahtumat/seminaarit/paikkatietoseminaarit/Sivut/Paikkatietoseminaarit.aspx


Sain kutsun puhumaan seminaarin yli 200 päiselle yleisölle avoimen paikkatiedon visualisoinnista ja mallinnuksesta. Päädyin kertomaan viime syksynä Antin ja Jannen kanssa tekemästämme fillarilaskentadatan analyysistä. [Esityksessäni][kalvot] herätti mielenkiintoa erityisesti avoimen tekemisen korostaminen ja myös R:llä tehdyt visualisoinnit ja mallinnus kiinnostivat. Alla esimerkkinä lämpötilan vaikutuksesta pyöräilymääriin kertova kuva. Lisää tuloksia voi lukea [Kaupunkifillari-blogista][blogi], ja lisäksi data ja lähdekoodi ovat saatavilla [GitHubissa].

<center>
<img src="/figs/2015-03-13-hsy-paikkatietoseminaari/a4f_lampotila_vari_v2.png" alt="lampotila" style="width: 400px;"/>
</center>

[kalvot]: http://www.slideshare.net/ouzor/hsy-2015-fillaridata
[blogi]: http://www.kaupunkifillari.fi/blog/2015/03/04/pyoraily-on-arkista-touhua
[GitHubissa]: https://github.com/apoikola/fillarilaskennat/

Seminaarissa oli paljon mielenkiintoista ohjelmaa liittyen paikkatietoon ja älykkäisiin kaupunkeihin. [SeutuRuutu] on käyttöliittymä mielenkiintoisiin Helsingin seudun paikkatietoaineistoihin, kuten tarkkaan väestötietoon. Näitä ei kuitenkaan ole avoimesti saatavana, vaan käyttöön pitää hakea lupa.

[SeutuRuutu]: https://www.hsy.fi/fi/asiantuntijalle/seututieto/paikkatiedot/Sivut/SeutuRuutu.aspx


Miliza Ryötin ja Tuire Valkosen [kalvoista][hki-kalvot] voi katsoa esimerkkejä Helsingin Seudun Maankäyttösuunnitelmasta 2050, Asuntostrategiasta 2025 ja Liikennejärjestelmäsuunnitelmasta (HLJ) 2015. Itseäni kiinnostivat erityisesti HLJ:n pyöräilyn kehittämiseen liittyvät kehityssuunnitelmat, joista kuvakaappaus esimerkkinä alla.

<center>
<img src="/figs/2015-03-13-hsy-paikkatietoseminaari/fillari_elama.png" alt="fillari" style="width: 600px;"/>
</center>


[hki-kalvot]: https://www.hsy.fi/fi/asiantuntijalle/tapahtumat/seminaarit/paikkatietoseminaarit/Documents/2015/Miliza_Ryoti_ja_Tuire_Valkonen.pdf

Marko Kauppi ja Jouko Järnefelt Tampereen kaupungilta esittelivät avoimen lähdekoodin ratkaisuja paikkatiedon analysointiin ja visualisointiin. Kannattaa tsekata Joukon [kalvot][jouko-kalvot], niissä on lukuisia hienoja QuantumGIS (link) :llä tehtyjä paikkatietovisuja, joista kuvakaappaus alla.

<center>
<img src="/figs/2015-03-13-hsy-paikkatietoseminaari/qgis.png" alt="qgis" style="width: 600px;"/>
</center>


[jouko-kalvot]: https://www.hsy.fi/fi/asiantuntijalle/tapahtumat/seminaarit/paikkatietoseminaarit/Documents/2015/Jouko_Jarnefelt.pdf

Esa Mäkinen kertoi hienojen videopätkien säestämänä Hesarin tekemistä datajournalismin jutuista. Esa myös esitti paikkatiedon avaajille toiveita, joista erityisesti toive aluejakojen yhtenäistämistä tiedon tuottajien välillä on erittäin relevantti. Seuraavaksi Outi Hermans loi katsauksen paikkatiedon käytön kehittämiseen Helsingin kaupungilla vuosina 2011-2014. Tuona aikana kehitettiin mm. [Helsinki Region Infosharen][hri] datakatalogia, joka onkin yksi Suomen parhaista avoimen datan varastoista.

[hri]: http://hri.fi/

Ari Purhonen kertasi tiedon jalostusketjun jossa datasta jalostetaan informaatiota, tietämystä ja lopulta mahdollisesti jopa viisautta. Hän näytti myös esimerkkejä miten Espoon kaupungilla käytetään 3D-visualisointeja kaupungin kehitystyössä ja osallistamisessa. Mielenkiintoista oli myös [Pekka Sarkolan][gispo] tekemä pilottianalyysi liito-oraville sopivien tienylityspaikkojen datalähtöisestä tunnistamisesta (kuvakaappaus alla).
<center>
<img src="/figs/2015-03-13-hsy-paikkatietoseminaari/orava.png" alt="orava" style="width: 600px;"/>
</center>
[gispo]: http://gispo.fi/Gispo

3D-visualisoinneista pistivät paremmaksi Pekka Virkamäki ja Petri Kokko, jotka esittelivät Vantaan asuntomessuilla pilotoitavaa 5D mallia. Pelimaailmasta napatun 3D-moottorin avulla arkkitehtien suunnitemiin pystyi tutustumaan tarkasti ja lisäksi seuraamaan sunnittelu- ja rakennustöiden edistymistä. Hyvä esimerkki teknologian luomista mahdollisuuksista!

Jari Kähkölä Staralta kertoi [Aurat Kartalla] -visualisoinnista tuttuihin työkoneisiin liittyvistä kehityssuunnitelmista. Faris Alsuhail kertoi tekemästään kouluterveyskyselyaineiston tutkimuksesta, jossa vertailtiin alueellisia eroja koululaisten hyvinvoinnin välillä. Koulujen yksilöimisen välttämiseksi tutkimus jouduttiin tekemään karkealla suuraluetasolla, jolloin eroja alueiden välillä oli todella vähän verrattuna esimerkiksi sukupuolten välisiin eroihin (kuvakaappaus alla). Toivottavasti tulevaisuudessa löytyy keinoja näin tärkeän aineiston tarkempaan tutkimiseen!

<center>
<img src="/figs/2015-03-13-hsy-paikkatietoseminaari/terveys.png" alt="qgis" style="width: 800px;"/>
</center>

[Aurat Kartalla]: http://www.auratkartalla.com/

Seminaari oli erittäin mielenkiintoinen ja hyvin järjestetty tapahtuma, kiitos järjestäjille, puhujille ja yleisölle! Toivottavasti ensi vuonna nähdään vielä enemmän mielenkiintoisia avoimen paikkatiedon sovelluksia.



<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
<img alt="Creative Commons -käyttölupa" style="border-width:0"
src="http://i.creativecommons.org/l/by/4.0/88x31.png" /> </a>
