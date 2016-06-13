---
title: "Urbaanien asuinympäristöjen suosio kasvaa"
date:   2015-05-19 10:00:00
layout: news
category : news
tags : [news,R]
language: fi
author: jaakkosarela
comments: true
---

Asuntojen hintojen nousu on viime vuosina keskittynyt taajamiin. Ilmiö on havaittavissa koko Suomessa, erityisesti pääkaupunkiseudulla, ja näkyy asukastiheyden ja hintojen nousunopeuden korrelaationa (alla olevissa kuvissa). Todennäköinen syy hintojen epätasaiselle kehitykselle on urbaanien asuinympäristöjen arvostuksen kasvu.    

Maailmalla on vallannut alaa uusi urbanismin aalto, jossa ihmiset haluavat muuttaa tiiviisiin kaupunkikeskustoihin omakotitalolähiöiden sijaan (ks esim. [NYT](http://www.nytimes.com/2014/04/17/opinion/americas-urban-future.html)). Korkeasta väestötiheydestä sanotaan olevan monia etuja: Se tarjoaa monipuoliset palvelut, työpaikkojen ja palveluiden hyvän saavutettavuuden, mahdollisuuden rakentaa viihtyisää kävely-ympäristöä ja tehokkaasti toimivan joukkoliikenteen. Lisäksi tiivis rakentaminen säästää viheralueita ja luo edellytykset talouskasvulle, mm. koska saman alan yritykset saavat lähekkäin sijaitsemisesta kasautumisetuja.

Millainen kehitys on Suomessa? Asuntojen hintojen muutokset kuvastavat muutoksia siinä, mitä asukkaan arvostavat, eli millaisssa asunnoissa he haluaisivat asua. [Reaktor Oy:n data scientistit](http://reaktor.fi/datascience), joihin itsekin kuulun, [mallinsivat](http://louhos.github.io/news/2015/05/07/asuntohintojen-muutokset/) asuntojen hintojen kehitystä vuosina 2005-2014 ja tekivät niistä [interaktiivisen kartan](http://kannattaakokauppa.fi). Malli antaa postinumerotasolla asuntojen hinnan kehityksen keskineliöhintana, lineaarisena trendinä ja trendin muutoksena. Näiden perusteella voidaan tutkia asukkaiden arvostusten muutoksia. 


Asuinalueen urbaaniudelle on monia mittareita, joista yksinkertaisin on väestötiheys. Alla kuvataan asuntojen hintojen muutosten ja väestötiheyden yhteyttä kunakin tarkasteluvuonna. Vaaka-akseli kuvaa väestötiheyttä asukkaina neliökilometrillä logaritmisella skaalalla, pystyakseli ennustettua hinnan muutosta prosentteina per vuosi ja jokaiselle postinumeroalueelle on erillinen pisteensä. 
Kuvaajasta nähdään, että tarkastelujakson alkupuolella (2005-2009) harvemmin asuttujen alueiden hinnat ovat nousseet keskimäärin nopeammin kuin tiheämmin asuttujen alueiden. Sen sijaan kohti tarkastelujakson loppua muutos on kääntynyt päinvastaiseksi: keskimäärin enemmän nousevat niiden asuntojen hinnat, jotka sijaitsevat tiheämmin asutuilla alueilla.





![center](/figs/2015-05-19-urbanisaatio/unnamed-chunk-1-1.png) 

Suomen tiheimmin asutut alueet sijaitsevat Helsingissä, joten kannattaa tarkastella myös erikseen tilannetta Helsingissä. Alla vastaava kehitys Helsingistä. Kuvaajasta näkee, että koko tarkastelujakson ajan tiheämmin asuttujen alueiden asuntojen hinnat ovat nousseet harvemmin asuttujen alueiden asuntojen hintoja nopeammin.


![center](/figs/2015-05-19-urbanisaatio/unnamed-chunk-2-1.png) 

Tilannetta voidaan tarkastella myös yksittäisten kuntien osalta. Alle on kuvattu yhteys väestötiheyden ja lineaarisen hintakehityksen välillä Suomen yhdentoista suurimman kaupungin osalta. Jos suora saa tietyn vuoden kohdalla positiivisen arvon, se tarkoittaa sitä, että kyseisessä kaupungissa tiheämmin asuttujen alueiden asuntojen hinnat nousivat enemmän kuin harvempaan asuttujen alueiden asuntojen hinnat. Vastaavasti päinvastoin negatiiviset arvot tarkoittavat harvemmin asuttujen alueiden asuntojen hintojen nopeampaa nousua. Suorien luottamusvälit on saatu [mallin posteriorinäytteistä](http://louhos.github.io/news/2015/05/07/asuntohintojen-muutokset/).

![center](/figs/2015-05-19-urbanisaatio/unnamed-chunk-3-1.png) 

Kuvaajista nähdään, että kaikissa Suomen 11 suurimmassa kaupungissa urbaanit asuinalueet ovat kasvattaneet suosiotaan. Tämä kehitys on ollut erityisen vahvaa pääkaupunkiseudulla. 

