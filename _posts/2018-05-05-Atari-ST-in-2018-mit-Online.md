---
title: Atari 1040 ST in 2018 mit online und so
published: true
layout: post
date: '05-05-2018 19:34'
image: atarist.jpg
taxonomy:
    category:
        - anleitungen
    tag:
        - 'high sierra'
        - mojave
        - installation
        - 'usb stick'
        - media
        - boot
---

Wie ihr durchaus wissen könntet, habe ich große Freude daran alte Hardware zu benutzen. So wie neulich, als ich mein **2005er Powerbook G4 12"** einem Linux unterzog ([Link](/2017/12/linux-fur-ppc-linux-auf-powerbook-g4-12/)) und dieses fortan einer tatsächlichen Nutzung überführte. Zumindest bildete ich mir das ein, denn eigentlich nutzt man so alte Hardware nicht mehr wirklich sinnvoll, man nutzt sie eigentlich nur einfach irgendwie. Dafür gibt es ganze Newsgruppen im Netz, deutschsprachig zum beispiel die legendäre *de.alt.folklore.computer*[^3]; Doch *egal*… <!--more-->

![IMG_7136](/content/images/2018/03/IMG_7136.JPG)

==Der Artikel ist noch nicht ganz fertig gestellt==

Und jetzt? Ja, jetzt fand ein originaler *1988er* **Atari 1040 STF** den Weg in mein Heim, sehr zum Leidwesen aller Stakeholder hier. Aber, es ist ja auch nicht für ewig. Inklusive Bildschirm und Festplatte. Die Festplatte übrigens verfügt über eine *Kapazität von 30 MB* und ist durch den Lüfter lauter als ein 1500 Watt Fön. Aber Spaß kostet halt. In diesem Fall Nerven :-)

* Atari 1040 STF, 1 MB Speicher inkl. 720 Kb Diskettenlaufwerk
* Megafile 30, MFM-Festplatte mit 30 MB [^1]
* Atari SM124 Bildschirm, 72 Hz Monochrome, hochauflösend 640x400
* Atari SF314, 720 Kb externes Diskettenlaufwerk

![IMG_7131](/content/images/2018/03/IMG_7131.JPG)

Der **SM124 Monitor** lieferte für die damalige Zeit hervorragende Werte, im Bereich der IBM-PC-kompatiblen Computer gab es gerade CGA, HGC und für besonders teure Rechner EGA, das nur 640×350 Bildpunkte und 60 Hz Bildwiederholfrequenz bot. Er galt als besonders hochauflösend und augenschonend, für kleines Geld.

### Was habe ich alles gelernt?
* Der Atari 1040 hat 3 Auflösungen; 
    * (ST-)High-Res: 640x400 in monochrome
    * (ST-)Mid-Res: 640x200 mit 4 Farben
    * (ST-)Low-Res: 320x200 mit 16 Farben
* Mit dem Atari kann man 97% aller Spiele nur mit einem Farbbildschirm oder am Fernseher spielen
    * Für den Anschluss an ein Fernsehgerät benötigt man einen Atari 1040 ST**FM**
* Ich habe einen Atari 1040 STF, der mit einem Monochrome-Monitor betrieben wird; dieser Monitor kann nur schwarz/weiß darstellen und kann nur die hohe Auflösung (High-Res), die für die meisten Spiele inkompatibel ist. Ich habe später im Artikel, wo es um ROM-Images geht, eine Liste mit monochromen Spielen verlinkt. 

![IMG_7428-1](/content/images/2018/05/IMG_7428-1.JPG)
<small>Atari 1040 STF samt Megafile 30, SF314 sowie SM124.</small>

## Atari *.st Rom Images via Diskette am Atari benutzen.
Hier möchte ich kurz einen für mich gangbaren Weg skizzieren, wie man aus dem Netz geladene ROM Images zurück auf eine Diskette spielt und diese mit dem Atari nutzt. Problematisch ist nämlich, dass der Atari nur 720 Kb anstelle von 1,44 Mb lesen und schreiben kann. Weiterhin noch viel problematischer ist der Fakt, dass man heute unter Windows keine 720 Kb Disketten mehr formatieren kann. Und am problematischsten ist der Fakt, dass man keine echten 720 Kb Disketten mehr kaufen kann. :-)

#### USB-Diskettenlaufwerke vs. echte Diskettenlaufwerke
Weiterhin: USB-Diskettenlaufwerke funktionieren nicht wie Diskettenlaufwerke, die auf einem Mainboard per "Shugart"-Stecker angeschlossen sind. Niemals. Man kann z.B. nicht "überschreiben". Das ist aber bei ROM-Images oft notwendig. Zu ATARI-Zeiten war das *sehr* üblich. Mit diesem Weg hier können wir also nur die ursprünglich-herkömmlichen 720Kb-Files auf Diskette kopieren. Wer mehr will, der muss einen PC mit echtem internen Diskettenlaufwerk organisieren.

DOS und Atari formatieren ihr Fat12(?) ziemlich ähnlich. Fast. Disketten die unter DOS kopiert werden, funktionieren auch immer am Atari und man kann sie zum Datenaustuasch verwenden. Das ist sehr praktisch, im Gegensatz zu beispielswese Amigas; Bis TOS 1.02 sollte man zum Formatieren am Atari Zusatzsoftware wie Fastcopy 3 nutzen, da TOS n Bit falsch setzt, oder so ähnlich :-) Ab TOS 1.04 funktioniert die Formatierung problemlos 

#### Problem von 1.44Mb-Disketten als 720Kb-Disketten
Es gibt ein ausführliches Newsposting in welchem beschrieben wird, warum 1.44-MB-Disketten, die via Klebestreifen 720 Kb-kompatibel gemacht werden, wesentlich schlechter halten, schneller verschleißen und einfach unzuverlässiger sind. Jedoch finde ich den Link nicht mehr.
Dauerhaft ist das also keine Lösung und man sollte sich irgendwie echte 720kb Disketten besorgen. Oder ganz von Disketten abkommen.

#### Was brauchen wir?
Als Grundlage: Ich habe keine PCs, ich habe kein Windows, ich habe nur Macs. Also beschreibe ich hierbei immer eine virtuelle Maschine auf meinem iMac.

1. Ein USB-Diskettenlaufwerk, welches auch 720Kb Disks erkennt
    1.1. Meins: Ein **Fujitsu UF00002** von NEC. Gibt es auf eBay oft für 5€
3. Einen Macintosh mit *WMare Fusion* (Ich habe einen iMac 27")
4. Windows 95, 98 oder 2000 als VMware Image: für die Disketten
5. Atari ST kompatible Formatierung von 720 Kb DD Disketten lautet: 9 Spuren, 80 Tracks.
6. Software: Omniflop um ST-Software-Images auf den Atari schieben zu können.
    6.1 MSA um ST Images zu zerteilen und wieder zusammen zu setzen
    6.2 

### ROM Images Downloaden, Spiele kopieren
Die gute Nachricht: viele Programme sind als Image, so wie man das von einem CD/DVD-Rom ISO Image her kennt, abgelegt. Man lädt sie also herunter und kopiert sie mittels passender Software auf seine Diskette. Die schlechte Nachricht: viele dieser Images sind größer, als die 720 Kb, die so eine Atari Diskette schluckt. Sprich: es wird "überkopiert". Ne Spur mehr auf die Diskette gekracht. Leider aber können USB-Diskettenlaufwerke soetwas nicht kopieren. NIE. Ihr könnt suchen, so lange ihr wollt. Es wird nicht funktionieren. Es sei denn, ihr habt einen PC mit einem eingebauten, echten 3,5" Diskettenlaufwerk. Dann geht es. 

* [Climatics](http://www.climatics.com/filerun/) - Ein unendliches Archiv an aller Software, die es je für den Atari gab.
* [List of monochrome Games](http://www.atari-forum.com/viewtopic.php?t=24636) - Eine Liste mit monochromen Atari ST Ppielem.

## Mein Atari ist online
Ja, er ist online. Er hat in meinem Heimnetzwerk die IP 192.168.178.219 und ich kann ihn anpingen. Ich kann damit via Telnet auf meinen kleinen Linux-Server zugreifen und ich kann auch einfach AtariIRC starten. Oder mit CAB versuchen, eine Website aufzurufen. Das funktioniert alles. Zugegebenermaßen ist das nicht wirklich praktikabel, also das Surfen, aber… ich kann sogar Mails und News lesen. Bei News meine ich jedoch keine RSS-Feeds, sondern tatsächlich das klassische Newsnet [^4], Newsgroups, also NNTP. Es ist natürlich immer mit Einschränkungen verbunden und manchmal muss man sich fragen, was sich die Programmierer bei Erstellung ihrer Software so User-Interface-Mäßig gedacht haben… aber es ist eben auch in den 80er gewesen. Das ist einfach mal unendlich lange her. Und doch surft mein Atari. Mit 1 MB Ram. *Unglaublich*.

#### Das Setup:
Auf meinem Schreibtisch steht ein 27" iMac von 2010. Den Atari habe ich auch dort aufgebaut. Somit liegt es nahe, den Atari mit dem iMac zu verbinden. Und genau das beschreibe ich. Eine Verbindung per Nullmodem-Kabel vom Atari zum iMac. Der iMac hat hier die Aufgabe, den Atari ins Heimnetz und online zu bringen. Auf meinem iMac 27" läuft deshalb eine Linux-Distribution, ein [Lubuntu](https://lubuntu.net) in einer VMWare. [^5] Ich habe zuvor schon berichtet, dass ich die Disketten Images und die Software via Windows 2000 kopiere, für die Online-Geschichte war mir aber Linux lieblicher. Das geht prinzipiell auch mit Windows, im Netz kursieren Anleitungen für Windows XP. Aber der Aufwand besteht aus 17 Schritten, wohingegen der mit Linux nur aus genau einem Script besteht. Dazu später mehr… Der Atari ist mit einem Nullmodem-Kabel mit dem iMac verbunden. Das Linux in der VM leitet per Nullmodem den Atari in mein Heimnetzwerk weiter. Und das geht tatsächlich :-)

![IMG_7610-1](/content/images/2018/05/IMG_7610-1.JPG)
<small>Links der männliche 25-polige MODEM Anschluss. Hier kommt mein Adapter 25-polig weinblich auf 9-polig männlich dran dran</small>

![IMG_7936](/content/images/2018/05/IMG_7936.JPG)
<small>Der Adapter samt Kabel</small>

![IMG_7941](/content/images/2018/05/IMG_7941.JPG)
<small>Der Adapter samt USB-Kabel und USB 2 Anschluss</small>

* Atari 1040 via Nullmodem an iMac
    * Nullmodem: USB Kabel auf DB 9 (RS232) und hier Adapter auf DB 25
* auf iMac VM mit Linux (Lubuntu)

#### Script <--> LINUX-seitig
Es kann sein, dass ihr noch zusätzliche Dinge installieren müsst. Etwa *ppp* oder so. Ich weiß es nicht mehr. Ich nehme als Grundlage ein extra kleines Lubuntu, weil mein VMWare Image Linux echt nicht mehr machen soll, als selber online zu sein und per Nullmodem den Atari ins Netz zu bringen. Dazu brauche ich keine dicke fette Distri, dazu reicht Lubuntu. *Wir sagen ja zu Lubuntu*!

```
#!/bin/sh
#
pppd crtscts lock noauth 172.16.146.131:192.168.178.219 /dev/ttyUSB0 19200 &
iptables -t nat -A POSTROUTING -o ens33 -j MASQUERADE
sysctl -w net.ipv4.ip_forward=1
```

So, *puhh*, hier gilt es jetzt, verschiedene Dinge anzupassen. Lasst mich mal überlegen… :-) zunächst ein Shell-Script. Bei mir heißt diese Datei `nullmodem.sh` und liegt im User-Verzeichnis.

* **pppd** ist der Daemon für die Verbindung. (nichts tun)
* **172er** IP ist die der VMWare. **ANPASSEN**
* Die **192er** IP ist die des Ataris. **ANPASSEN**
* **/dev/ttyUSB0** ist mein USB Nullmodem-Kabel. **ANPASSEN**
* **19200** ist die Baud-Rate, mehr geht nicht. (so lassen)
* **ens33** ist die Netzwerkkarte. Die heißt hier in VMWare nicht eth0 oder en1 oder sowas. Na egal. **ANPASSEN**
* **forward=1** Daten via IPv4 weiterleiten. (nichts tun)

Mehr gibt es zu diesem Script nicht zu sagen. Wenn ihr es per *chmod* ausführbar gemacht habt, könnte ihr es starten. Success sollte in etwas folgendermaßen aussehen:
```
thafaker@vm-lubuntu:~$ sudo sh nullmodem.sh
net.ipv4.ip_forward = 1
```
**pppd** Forwarding läuft. Eigentlich solltet ihr nun euren Atari mit `ping 192.168.178.219` bereits anpingen können. Das Script habe ich übrigens von *Simon Sunnyboy* ([Link](http://paradize.final-memory.org/sting1.shtml)).

Ach nein, noch könnt ihr euren Atari natürlich nicht anpingen, da die Einstellungen auf dem Atari noch nicht statt gefunden haben. Das ist schließlich kein Zuckerschlecken. Dem Atari muss schließlich alles über Netzwerk beigebracht werden… und dazu gibt es das Paket **STinG**.

![IMG_7436](/content/images/2018/05/IMG_7436.JPG)<small>Atari SF314 720 Kb externes Diskettenlaufwerk.</small>

#### STinG <--> Atari-seitig
Nun… der Atari selbst, nein, TOS [^2] hat keine Netzwerkfähigkeiten an Bord. Das heißt, man muss die spärlichen 1024 KB Ram dafür nutzen, Netzwerktreiber und so Zeugs zu laden. Dank der Software STinG erhält der Atari alles, was er braucht. Einen kompletten Netzwerkstack also. Nur ist die Konfiguration von STinG nicht so schlüssig, wie man sich das heutzutage so vorstellt. Und nun frage ich mich schon wieder: wo fange ich überhaupt an?

… *to be continued* …

<small>
**Artikelbilder**: (C) voll und ganz bei mir.
</small>

---

**Fußnoten**:

[^1]: Modified Frequency Modulation (MFM) ist ein Aufzeichnungsverfahren und eine Leitungscodierung, die unter anderem bei magnetischen Datenträgern wie Magnetband oder Diskette Anwendung findet. Das MFM-Verfahren wird in Diskettenlaufwerken eingesetzt. Auch bei den ersten Festplatten wurde MFM verwendet, sie wurden daher MFM-Festplatten genannt. 
[^2]: Das Betriebssystem des Atari ST sitzt in einem ROM-Baustein, genauer 2 oder 6 Bausteinen. Für den Atari ST(F/M) sind TOS 1.02 und 1.04 (genannt Rainbow-TOS) üblich.
[^3]: Hier der [Link](https://groups.google.com/forum/#!forum/de.alt.folklore.computer) auf Google Groups, da offene Usenet-Server rar werden und generell, das gesamte Usenet ausstirbt, ist Google News hier tatsächlich eine recht gut erste Adresse.]
[^4]: Newsgroups sind Internetforen (früher auch abseits des Internets in selbständigen (Mailbox-) Netzen), in denen zu einem umgrenzten Themenbereich Textbeiträge ausgetauscht werden. Veröffentlicht ein Benutzer einen Artikel in einer Newsgroup, so wird dieser an einen Newsserver gesendet. Dieser kann den Artikel dann seinen Benutzern zur Verfügung stellen und an andere Server weiterleiten, die ihn wiederum ihren Benutzern zur Verfügung stellen. Man ruft die News also ab wie auch EMails.
[^5]: Lubuntu ist ein Ubuntu mit einem schlanken Desktop (LXDE), deshalb ist es nicht so riesig. Für unser Vorhaben ausgezeichnet.