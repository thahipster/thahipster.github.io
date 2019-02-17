---
layout: post
published: true
title: Linux für PPC - Linux auf Powerbook G4 12"
date: 2017-12-01 
image: powerbook.jpeg
tags: 
 - powerbook g4
 - linux
 - ppc
 - powerpc
---

Was stellt man mit seinem alten **Powerbook G4 12"** an? OS X 10.5.8 ist schnarchend langsam und wird nicht mehr mit Sicherheitsupdates versorgt. Aktuelle Browser gibt es nicht mehr. Von zusätlicher Software wie Skype ganz abgesehen. Ansonsten funktioniert es aber. Und so bleibt man ratlos zurück. Oder nutzt genau diesen Umstand als Grund, warum man doch damit rum hacken sollte. So wie ich. <!--more--> 

![G4linux-715181](/content/images/2017/11/G4linux-715181.jpg)
<small>Foto by [shaos](http://shaos.net/blog/2008/04/refurbished-15-powerbook-g4.html)</small>

Diesen Artikel verfasse ich übrigens auf meinem Uralt-Gerät, was mir optisch immer noch sehr gut gefällt, aber das ist nur eine Anekdote. Es hat einen 1,5 Ghz PPC Prozessor und 1,25 GB-Ram, maxed out ;-) Es bestitzt ein CD-RW/DVD-Combo-Laufwerk und eine 60 GB-HDD, 5400 Rpm.
Geht es um Linux für PowerPC, sieht es jedoch schlecht aus. *Fedora* hat mit Version 17 aufgehört, 32-bit PPC Hardware (nämlich die Powerbooks mit G4 Prozessor) zu untersützen. *YellowDog Linux*, welches dereinst für PPC-Nutzer die Wahl der Wahl war, wird seit 2009 nicht mehr gepflegt, kann man also nicht (mehr) empfehlen. Und so schränkt sich der Kreis der Möglichkeiten weiter ein.

Gelandet bin ich letztendlich bei *Debian*, genauer gesagt bei einem der vielen offiziellen Ubuntu-Derivate, nämlich **Lubuntu**. Dieses ist besonders leichtgewichtig und speziell für alte Hardware konzipiert, kommt es auch extra mit einem *leichten* Grafikmanager daher. **LXDE** ([Link](https://www.youtube.com/watch?v=p1V8wM1osew)) wird hier als Desktop-Umgebung genutzt. Es legt den Schwerpunkt auf Geschwindigkeit und Energieeffizienz, so dass die Anforderungen an die Hardware relativ gering sind.
Ich habe mir *Version 12.04* (Precise Pangolin) geladen ([hier der Download](http://cdimage.ubuntu.com/lubuntu/releases/precise/release/lubuntu-12.04-desktop-powerpc.iso)) und diese ISO auf CD gebrannt. Richtig, keine DVD-Distributon, auch die zusätzliche Software ist also als eher weniger denn allumfassend einzuordnen. Aber Ubuntu sei dank kann man alles nachinstallieren, sofern man denn etwas vermisst.

#### Meine Specs
* Powerbook G4 12"
* 1,5 GHz G4 Prozessor
* 1,25 GB-Ram
* 60 GB HDD

#### Die Installation
Die Installation geht ziemlich problemlos von statten, ich habe aber auch kein Dual-Boot gewählt, sondern OSX von der Festplatte geworfen und lasse Lubuntu allein laufen. Man legt die CD ein und hält während des Einschaltens die **Taste C** gedrückt, sodass das Powerbook von der CD startet. Während der Installation sind keine großen Schwierigkeiten zu erwarten, der Text-Installer lädt wie gewohnt, man gibt ein paar Dinge wie Sprache und Tastatur-Layout ein, wählt sein Festplatten-Partitions-Setup (benutze gesamte Platte) und die Installation des Systems beginnt. Nachdem diese durchgeführt ist, richtet man sein Netzwerk ein. Hier muss man bedenken, dass die eingebaute Airport-WLan-Karte (Broadcom b43 Chipset) nicht erkannt wird. Also Kabel anschließen und per NIC verbinden. DHCP, kein Problem und schon ist man im Netz. Es gibt ein oder zwei Reboots, irgendwo dazwischen hat man sich einen Nutzer angelegt und schon steht man vor dem grafischen Login. Die nVidia-Grafikkarte (NVIDIA GeForce FX Go5200 (32MB) ) wird also mit *Nouveau*-Treiber erkannt und funktioniert (soweit) problemlos.

![ug25G](/content/images/2017/11/ug25G.png)

Nach dem Login findet man sich im Destop wieder. Dieser ist sehr einfach aufgebaut und reagiert flüssig. Allerdings fängt doch der Lüfter alsbald an zu drehen, da im Hintergrund schon erkannt wurde, dass viele Updates zur Verfügung stehen. Nämlich Version 14.irgendwas (Trusty Tahr) der Distribution. Ich habe dieses System-Upgrade auch gleich durchgeführt, allerdings nicht in der grafischen Oberfläche, sondern bin in die Konsole gesprungen. Ein beherztes <code>FN + ALT + CTRL + F1</code> und man befindet sich im Terminal 1. Hier wird man nach dem Login ebenfalls auf das anstehende Update hingewiesen, was man natürlich nicht durchführen muss, aber kann. <code>do-system-upgrade</code> lautet der Befehl und schon fängt das Gerät an, ca 500 MB Software zu laden und zu installieren, was sicher 2h gedauert hat. Der Lüfter lief intervall-artig dauerhaft und ziemlich laut, die CPU ist generell der Flaschenhals. Speicher ist auf meinem Gerät nicht das Problem, aber der G4 ist ständig bei 100% Auslastung. Ubuntu selbst [nennt als Hinweis](https://wiki.ubuntuusers.de/Alte_Hardware/) zur Verwendung von alter Hardware ab Ubuntu 12.04 mindestens einen Prozessor der Pentium IV Klasse. Und ich bezweifle einfach mal, dass der G4 diesem Vergleich stand hält. Aber wie dem auch sei, nach diesem Update funktioniert alles weiterhin so gut, dass ich auch gleich noch das Upgrade auf 16.04 durchführte, was er mir abermals nach dem Login vorschlug. Warum ich nun also ein 12.04 installiert habe, nur um dann zwei komplette Version upzugraden, kann ich auch nicht sagen. Aber das Ergebnis ist in Ordnung, denn es funktioniert und ich habe die aktuelles LTS-Version installiert. 2017. Auf dem Gerät von 2004. Und man kann es benutzen.

![Bildschirmfoto-vom-2017-11-30-19-29-34](/content/images/2017/12/Bildschirmfoto-vom-2017-11-30-19-29-34.png)

#### Wlan Powerbook G4 Linux
Die Aiport-Karte ist ein Broadcom-Teil mit b43 (genauer: Broadcom bcm43xx) Chipsatz. Da hier keine offenen treiber existieren, muss man sich mit *wpasupplicant* und der korrekten closed-Firmware behelfen. Der b43/b43legacy-Treiber verwendet eine proprietäre Closed-Source-Firmware, die aus lizenzrechtlichen Gründen nicht auf dem Ubuntu-Installationsmedium mitgeliefert wird und daher separat heruntergeladen werden muss. Dies kann in vielen Distributionen ziemlich schwierig werden, ist unter Ubuntu jedoch kein Problem, da hierfür schon alles vorbereitet ist.

Gebt im Terminal folgende befehl ein:
<code>sudo apt-get install b43-fwcutter firmware-b43-installer</code>

Nach einem Neustart konnte ich in LXDE bereits mein Wlan auswählen, das Kennwort eingeben und war fortan drahtlos online. Ohne Abbrüche. *Ziemlich easy*.

#### AFP Dateifreigabe?
Wenn ihr wie ich noch andere Macs habt, möchtet ihr vielleicht auch auf Dateien zugreifen. Unter Linux steht hierfür das Paket *netatalk* zur Verfügung. Ich hätte nicht gedacht wie leicht es ist, Linux als Mac im Netzwerk erscheinen zu lassen. Noch dazu kann man den alten Mac als Linux auch gleich als TimeMachine Server nutzen. Also… nicht dass dies nicht vorher mit 10.5.8 auch schon gegangen wäre, aber naja :-)

[Diese kurze Anleitung](https://wiki.ubuntuusers.de/netatalk/) befolgt ihr, und schon habt ihr nach 10 Minuten einen Linux-Rechner als Mac im Apple-Netz. Und vor allem ist AFP nach meiner Erfahrung viel schneller als Samba, die Dateifreigabe von Windows. Doch probiert selbst.

#### @-Zeichen Powerbook G4 Linux Terminal
Was habe ich geflucht, weil ich kein @ schreiben kann. Scheinbar mapped Linux das @-Zeichen auf die dritte Ebene, diese ist mit <code>ALT-GR</code> zu erreichen. Das Powerbook hat zwar zwei ALT-Tasten, jedoch keine GR. Und somit erreicht man die dritte Ebene nicht… und kann folglich auch kein @ oder € schreiben. Ich habe viele Anleitungen versucht, einige davon zielen darauf es unter der grafischen Oberfläche zu verändern, dann legt man es beispielsweise auf eine andere Taste. Jedoch hat man im Terminal, also der Linux-Console die nicht auf X läuft, immer noch kein @. Nun… es ist ganz simpel.

Man hält also die Tasten FN+ALT gedrückt, lässt dann die FN-Taste los und hält ALT weiterhin gedrückt, drückt jetzt jedoch noch zusätzlich die L Taste, also ALT+L und siehe da: ein @-Zeichen. Unglaublich. Es ist also diese Dreier-Kombo. Und am Ende recht einfach. Wenn man es weiß…

*to be continued...*

<small>
**Artikelbild**: Photo by [Namroud Gorguis](https://unsplash.com/photos/FZWivbri0Xk?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/search/photos/music?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
</small>

---

**Fußnoten**:

[^1]: *Faible*: Vorliebe, Schwäche, die jemand für jemanden, etwas hat; Neigung, Hang, etwas Bestimmtes zu tun "ein Faible für jemanden, etwas haben"
[^2]: Quelle: [hier](https://de.wikipedia.org/wiki/Michael_Hutchence).
