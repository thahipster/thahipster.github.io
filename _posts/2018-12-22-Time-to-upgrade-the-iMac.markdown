---
layout: post
title: Es ist Zeit für ein Upgrade des iMacs
date: 2018-12-22
image: imac_cover.jpg
tags: 
 - iMac 2010
 - 512 GB SSD
 - Upgrade
 - fancable
 - trim
---

**Hallo Freunde**, ich bin gerade ein wenig stolz. Denn ich habe meinen **iMac** eigenhändig erweitert, hardwareseitig. Das mag zwar *trivial* klingen, jedoch ist es bei einem iMac nicht gerade leicht diesen überhaupt zu öffnen. Apple sieht dies für den Endkunden nicht vor, man darf selbst praktisch nur den Arbeitsspeicher erweitern, an diesen gelangt man über eine leicht zugängliche Serviceklappe, alles andere aber bleibt dem teuren *Apple Servicepartner* vorbehalten. <!--more-->

![](/assets/2018/12/imac/upgrade.png)
<small>iMac mit neuer 512 GB SSD im Austausch für das ODD</small>

Da mein iMac aber scheinbar thermische Probleme hat (hatte) und auch schon in die Jahre gekommen ist, ich aber mit dem Bildschirm, den Farben und der Geschwindigkeit von über **11000 Geekbench** [^3] Punkten vollends zufrieden bin, dachte ich mir, versuche ich den Schritt und probiere es aus. Ich habe also den Plan gefasst den iMac zu öffnen, ihn gründlich vom Staub zu befreien und im Zuge dessen den alten DVD-Brenner auszubauen und gegen eine SSD zu tauschen. Da ich auch noch eine große und recht schnelle 2 Terabyte Festplatte habe, würde ich die interne und extrem langsame 1 Terabyte von Apple direkt austauschen. 

![](/assets/2018/12/imac/overview.png)
<small>Mein iMac 2010, 12 GB-Ram, Core i7 CPU</small>

Ich habe mir zuvor folgende Teile bestellt, um nicht mitten im Zerlegen aufzufliegen, weil mir ein bestimmter Torx fehlt. Dabei war meine Prämisse, nicht zu viel Geld in ein System zu stecken, was ja unter Umständen vielleicht kaputt ist. Also investierte ich eher so im mittleren Qualitätsbereich. Da mein iMac intern nur SATA 3 Anschlüsse und Controllerchips verbaut hat, lohnt z.B. auch eine schnellere SSD nicht. 

#### Meine verwendeten Bauteile: [^1]

- Torx-Set ([Link](https://www.amazon.de/gp/product/B00445Y48G/ref=oh_aui_detailpage_o00_s01?ie=UTF8&psc=1))
- ODD/SSD-Case ([Link](https://www.amazon.de/gp/product/B00F23Y2BS/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1))
- SSD 512 GB ([Link](https://www.amazon.de/gp/product/B00D1E6RMW/ref=oh_aui_detailpage_o00_s01?ie=UTF8&psc=1))
- 2 TB WD HDD WD2001FASS (die hatte ich noch rumliegen, ist schon älter) ([Link](https://www.amazon.de/Western-Digital-WD2001FASS-interne-Festplatte/dp/B002MD05SA))

### Vorgehensweise

Ich habe also den iMac geöffnet, das ODD [^2] ausgebaut, den Rahmen in der größe des bisherigen ODDs eingebaut, die SSD in diesen Rahmen gesteckt, die alte Festplatte ausgebaut, die neue Festplatte eingebaut und nebenbei alles sauber gemacht. Dann habe ich den iMac wieder zusammen gebaut, eingeschaltet und gebetet. Und siehe da, es kam kein Plong und ich dachte schon, ich hätte ihn gekilled. Wenige Sekunden später jedoch kam das Zeichen, dass kein System auf der Festplatte gefunden wird. Was ja auch vollkommen richtig ist. Ich muss ja erst wieder ein macOS High Sierra auf diesem Gerät installieren. 

![Der Caddy für die SSD, der exakt dem ODD gleicht](/assets/2018/12/imac/caddy.jpg)
<small>Der Caddy für die SSD, der exakt dem ODD gleicht</small>

Also steckte ich meinen USB-Stick an, bootet von diesem (jetzt kam auch das *Plong* beim Einschalten), oinstallierte das System und freute mich, wie schnell die ganze Bude nun rennt. Echt Hammer. Das hat auf jeden Fall enorm etwas gebracht. Weiterhin tricky ist die ganze Lüfter-Geschichte. Man muss exakt so vorgehen, wie es in folgendem Video beschrieben wird, dann kann eigentlich nichts schief gehen. Wenn der iMac nach dem Zusammenbau klingt wie ein Flugzeug beim Start, d.h. es drehen sich alle Lüfter auf Vollspeed, dann gibt es ein Problem mit den Temperatursensoren, ergo lüftet der iMac to the Max. Solche Probleme traten bei mir nicht auf.

Folgendem Video bin ich Schritt für Schritt gefolgt, es passt perfekt. Der einzige Unterschied: im Video wird ein defektes ODD gegen ein neues ODD getauscht, ich tausche hingegen mein ODD gegen die SSD im Caddy.

<div align="center">
	<iframe width="560" height="315" src="https://www.youtube.com/embed/NhikeiS3qho" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

Danke an OCC für das praktische Video.

### Der Vorteil meiner Variante
Ihr fragt euch sicher, warum ich nicht gleich die alte interne HDD gegen eine SSD getauscht habe und dafür das ODD behalten? Nun, das hat mehrere Gründe. Fangen wir mal an:

1. Wenn man die HDD gegen eine SSD austauscht, funktioniert der Temperatur-Sensor nicht mehr (die SSD hat schlicht keinen Sensor verbaut der abgefragt werden könnte) und so holt man sich eine Menge Lüfter-Probleme ins Haus. Meine 2 TB Festplatte ist fast baugleich zur apple-eigenen 1 TB Festplatte, aber es ist kein Apple-Teil.
2. Mein DVD-Laufwerk ist defekt, es erkennt nur noch selten ein eingelegtes Medium. Da ich persönlich heutzutage kein optisches Laufwerk mehr benötige, baue ich dieses lieber aus. Der Caddy für die SSD passt exakt dort hin wo das ODD war. Die Anschlüsse von DVD und HDD sind gleich schnell, man erfährt also keine Geschwindigkeitseinbußen und macOS ist es egal von welcher Platte es bootet. Somit wird das meine Systen-Platte und die HDD wird meine Datenplatte.
3. Hatte ich ja noch die 2TB HDD die ich gegen die ultra langsame alte Apple-HDD austauschen möchte. Als Datenspeicher ist so eine HDD super, die SSD dient fürs System und die Programme. Fusion-Drive möchte ich nicht, da hier keine Handhabe bezüglich der Verteilung der Daten habe.

Das läuft, der iMac ist gleich noch mal ne Stufe enmpor geklettert ^^ 

### Probleme?
Ein Problem auf das ich stieß, lag an mangelnder Sorgfalt. Ich habe die Kabel der 1-TB-Festplatte abgezogen, ohne daran zu denken dass hier neben Strom und Datenkabel auch ein Temperaturkabel auf das Mainboard führt. Der Anschluss an der Festplatte besteht aus 8 Pins, der Stecker jedoch nur aus 6. Wie also anschließen? Folgendes Bild hat mir geholfen.

![](/assets/2018/12/imac/fan.jpg)
<small>Genau so muss der Sensor an die neue HDD angeschlossen werden</small>

Was noch wichtig ist? TRIM-Support. [Im folgenden Artikel](/2018/12/22/how-to-enable-trim/) beschreibe ich kurz, wie man TRIM unter macOS für seine nicht-Apple-SSD aktiviert.

*Das wars auch schon wieder*, bis bald. Wenn ihr Fragen habt, kommentiert einfach :-)

<small>
**Artikelbild**: Photo by [Sora Sagano](https://unsplash.com/photos/WFSap6CIXuw?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/search/photos/imac?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
</small>

---

**Fußnoten**:

[^1]: Das sind keine Affiliate-Links, es sind einfach nur Links die jemandem nützlich sein könnten. 
[^2]: ODD steht für Optical Disk Drive, in meinem Fall also für das DVD-Laufwerk. Das benötige ich nicht mehr. Ich habe ohnehin noch ein externes. Allerdings kann man sich für kleines Geld auch ein leeres externes Gehäuse kaufe und sein ehemaliges internes Laufwerk da einbauen. Dann hat man einen externen DVD-Brenner per USB.
[^3]: Ich behaupte ja immer, mein iMac von 2010 sei so schnell. Ich finde, dass er sich wirklich immer noch sehen lassen kann. Ein nagelneues Macbook Pro mit Core i5 von 2017 erreicht im [Geekbench 2 gerade mal 8900 ](https://everymac.com/systems/apple/macbook_pro/specs/macbook-pro-core-i5-2.0-13-late-2016-retina-display-no-touch-bar-specs.html), mein [iMac hingegen über 10.000](https://everymac.com/systems/apple/imac/specs/imac-core-i7-2.93-27-inch-aluminum-mid-2010-specs.html). Erstaunlich, was?