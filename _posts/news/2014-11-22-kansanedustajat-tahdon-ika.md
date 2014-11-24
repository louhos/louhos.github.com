---
title:  "Kansanedustajien Tahdon-kantojen ja iän korrelaatio"
date:   2014-11-22 16:00:00
layout: news
category : news
tags : [news,R]
language: fi
author: jaakko
comments: true
---

Tasa-arvoinen avioliittolaki käsitellään eduskunnassa 28.11.2014. Sivistysvaliokunta asettui niukasti vastustamaan uudistusta. Mielenkiintoiseksi asian tekee sen, että vastustajien ja kannattajien välillä menee selkeä ikäraja, kuten ao. HS:n uutisgrafiikasta nähdään ([HS 21.11.2014][HS]).

[HS]: http://www.hs.fi/politiikka/a1305900001070


<img src="/figs/2014-11-22-kansanedustajat-tahdon-ika/HS.png" alt="Drawing" style="width: 300px;"/>

Helsingin sanomat tutki myös kansanedustajien kantoja perustuen “useista eri lähteistä ja haastatteluista saatuihin tietoihin kansanedustajien kannoista, ja muutamassa tapauksessa kansanedustajien omiin ilmoituksiin” ([HS 21.11.2014][HS]).

Onko näiden kansanedustajien kantojen ja heidän ikänsä välillä yhtä vahva korrelaatio kuin sivistysvaliokunnassa?

Tarvittavat tiedot saa HS:n artikkelista ja eduskunnan sivuilta ja niistä saa kätevästi plotattua jakaumia ja histogrammeja R:n ggplot2-kirjastolla.  Alla on kuva viiden vuoden bineihin jaetuista histogrammeista.

<img src="/figs/2014-11-22-kansanedustajat-tahdon-ika/tahdon_ika_hist.png" alt="Drawing" style="width: 600px;"/>

Alla vielä toinen kuva jossa on estimoitu kunkin mielipiteen osuus kaikista iän mukaan. FIXME

<img src="/figs/2014-11-22-kansanedustajat-tahdon-ika/tahdon_ika_density.png" alt="Drawing" style="width: 600px;"/>

Vaikka ero kannassa iän mukaan ei olekaan enää yhtä selvä kuin sivistysvaliokunnassa, näyttää siltä, että vanhemmat todennäköisemmin äänestävät ei, nuoremmat jaa ja epävarmat ovat iältään siltä väliltä. Huomattavaa on, että vanhin kansanedustaja Jörn Donner puoltaa ehdotusta, kun taas nuorin edustaja Miko Niikko vastustaa sitä, mikä näkyy myös kuvaajissa selvästi.

[Lataa data csv:nä](http://louhos.github.io/static/data/Tahdonmod.csv).

Iltasanomat teetti aiheesta kyselyn kansanedustajille, tätä olisi mielenkiintoista verrata HS:n arvioon ([IS 24.11.2014][IS]).

[IS]: http://www.iltasanomat.fi/kotimaa/art-1288780101649.html

### Tarkempi kuvaus työprosessista

Kansanedustajien kannat sai suoraan copy-pasteamalla HS:n artikkelista. Sen sijaan heidän syntymävuotensa vaati enemmän työtä, koska mihinkään ei ole koottu kaikkien tämänhetkisten kansanedustajien tarkkoja syntymävuosia. Helposti on saatavissa [syntymäaika vuosikymmenittäin], joka saattaisi riittää, mutta päätin kuitenkin hakea jokaisen kansanedustajan syntymävuoden erikseen eduskunnan [kansanedustajalistauksesta], jossa on linkki kunkin kansanedustajan tietosivulle, josta saa kansanedustajan syntymäajan.

Koska vanhat konstit ovat monesti parempia kuin pussillinen uusia, päätin tietojen haun lynxillä ja käsittelyn pythonilla, joka subprocess-kirjastoa käyttäen kutsuu lynxiä. Käsittelyn jälkeen minulla oli csv-tiedosto, jossa on kunkin kansanedustajan nimi, syntymävuosi ja oletettu kanta tasa-arvoiseen avioliittolakiin. Ääkkösten kanssa joutui vähän kikkailemaan, koska sivuilta suoraan hakiessa ja toisaalta HS:n artikkelista copy-pastetessa ääkköset joutuivat eri formaattiin. En kuitenkaan tarvinnut kansanedustajien nimiä sinänsä, joten hoidin asian yksinkertaisella replace-rimpsulla. 

Plottausvaihtoehtojen tarkasteluun käytin kattavaa [Making histograms and density plots with ggplot2] -blogikirjoitusta. 

Kirjoittaja Jaakko Särelä on Reaktor Innovations Oy:n Senior Data Scientist ja harrastaa vapaa-aikanaan yhteiskunnallista vaikuttamista ja kaupunkiaktivismia.

[syntymäaika vuosikymmenittäin]: http://www.eduskunta.fi/triphome/bin/tixhaku.sh?lyh=hex8230?lomake=tix5050
[kansanedustajalistauksesta]: http://www.eduskunta.fi/triphome/bin/hex3000.sh?haku=suppea&kanta=hetekau&kieli=su&paluuhaku=%2Fthwfakta%2Fhetekau%2Fhex%2Fhex3000.shtml&LYH=LYHEDU&ASC=&SUKUNIMI=&ETUNIMI=&KOTIKUNTA=&VAALIPIIRI=&EKRJ_KOODI=&SUKUPUOLI=&EDUSKUNTAKIELI=
[Making histograms and density plots with ggplot2]: http://blog.lib.umn.edu/jeli0026/soils/2014/01/making-kick-ass-histograms-and-density-plots-with-ggplot2.html

Päivitys 24.11.2014: Vaihdettu paremmat kuvat ja data csv:nä. Lisätty linkki Iltasanomien uutiseen aiheesta.

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
<img alt="Creative Commons -käyttölupa" style="border-width:0"
src="http://i.creativecommons.org/l/by/4.0/88x31.png" /> </a>
