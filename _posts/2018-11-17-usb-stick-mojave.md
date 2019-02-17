---
title: 'USB Stick macOS High Sierra Mojave'
published: true
layout: post
date: '17-11-2018 19:34'
image: imac.jpg
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

Anleitung zur Erstellung eines bootfähigen USB Sticks. 
Zur Installation eines firschen **macOS High Sierra** oder **Mojave** auf euren Mac via USB-Stick, ein sogenannter *Clean-Install* ohne Ballast auf der Festplatte.

![iMac 27" mit macOS 10.13 Mojave](/assets/2018/imac.jpg)

### Vorwort
Ich besitze einen etwas älteren **iMac 27"** mit **Core i7 2.93 GHz** mit **12 GB-Ram**, der zwar noch genügend Leistung abliefert, aber an sich nun doch schon etwas in die Jahre gekommen ist. Er hat z.B. kein Thunderbolt. Aus diesem Grund möchte ich das Gerät veräußern. Aktuell läuft hier ein macOS 10.12., dessen Name ich vergessen habe. **Sierra**. Das OS heißt *Sierra*, ganz klar. Dieser Mac kann kein Movaje mehr ausführen. Also Apple verbietet es ihm, von der Leistung her sollte es kein Problem sein. Aber wie dem auch sei, das ist auch nicht wichtig.

![](/assets/2018/Bildschirmfoto%202018-11-18%20um%2010.37.34.png)

## How To create bootable USB Stick to fresh install macOS High Sierra

### Vorbereitung

1. Zunächst braucht ihr einen USB-Stick der groß genug ist, 16 GB sollten in jedem Fall reichen. Der wird mit dem Festplattendienstprogramm formatiert, sämtliche Daten gehen verloren.
2. Ihr braucht High Sierra auf eurer Festplatte. Weil High Sierra mittlerweile nicht mehr (offiziell) angeboten wird, geht ihr den Weg über den **High Sierra Patcher**. Der High Sierra Patcher ist übrigens eigentlich dafür da, dass ihr High Sierra auf Geräten installieren könnte, die von Apple nicht mehr dafür zugelassen sind. Mein iMac kann aber nativ High Sierra, weshalb ich diese Fotware nur zum Download nutze, für sonst nichts.
3. Download High Sierra Patcher ([Link](https://drive.google.com/open?id=1Wsbkxqx24SQzRjX_Ng-_H2gQdPW_U70U) Google Drive)
4. startet ihn und klickt auf *Tools* --> *Download macOS High Sierra*
5. ![](/assets/2018/Bildschirmfoto%202018-11-17%20um%2015.16.39.png)
6. Nachdem ihr das Verzeichnis gewählt habt, lädt er High Sierra herunter. Das dauert, je nach Leitung, einige Zeit denn der Installer ist ca. 6 GB groß. 
![](/assets/2018/download-complete-macos-high-sierra-installer-9-610x358.jpg)
7. Wenn er fertig ist, wählt ihr **Not now**. Jetzt habt ihr den Installer.app im Verzeichnis eurer Wahl, ich habe nach `~/downloads` herunter geladen.
8. Wir haben High Sierra Installer auf der Platte und wir haben einen leeren USB-Stick --> sehr gut, jetzt gehts endlich los.

## Create bootable USB Stick with High Sierra

1. Öffnet das Terminal Dienstprogramm
![](/assets/2018/Bildschirmfoto%202018-11-17%20um%2015.30.36.png)
2. Im Terminal Fenster tippt ihr folgendes ein: 
{% highlight terminal %}
 sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
{% endhighlight %}
3. Ihr müsst den Pfad von <code>/Volumes/MyVolume</code> anpassen. Der High Sierra Patcher lädt High Sierra in den Dokumenten-Ordner eures Benutzers, wenn ihr hier nicht etwas anderes angegeben habt. Ich habe Ihne nach  `~/downloads` laden lassen, also gebe ich diesen PFad auch im Terminal an. Seht selbst: <code>sudo ~/downloads/Install\ macOS\ High\ Sierra.app</code>
![](/assets/2018/Bildschirmfoto%202018-11-17%20um%2019.33.45.png)
4. Hey - Ho - Let's Go!
5. Der Stick wird gelöscht und ein bootfähiges Verzeichnis erstellt. Wir hätten uns Schritt 1 mit dem _Festplattendienstprgramm_ also sparen können :-)
6. Der Installer wird auf den Stick kopiert.
7. Sobald dieser Vorgang abgeschlossen ist, könnt ihr den Mac neu starten, diesmal vom Stick. Haltet dazu beim Einschalten, wenn der **Gong** ertönt, die Taste *ALT* auf eurer Tastatur gedrückt. Es werden dann die Festplatten angezeigt, und ihr wählt euren Stick.
![](/assets/2018/images.jpeg)
9. Es bootet der Installer. Ihr könnt eure Platte komplett formatieren und ein völlig frisches System installieren.
10. Ein absoluter **Clean Install**. 
11. *Sehr befriedigend*
12. Das wars :-)

Bis bald. Falls Ihr Fragen habt, so verfügt mein CMS noch nicht über eine Kommentarfunktion. Das tut mir leid.

<small>
**Artikelbilder**: (C) bei mir.
</small>