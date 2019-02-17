---
layout: post
title: Vintage PC mit DOS 6.22 und Windows 3.11 (und OS/2 Warp)
date: '17:20 2018-12-11'
image: ideflash.jpg
tags: 
 - vintage
 - retro
 - retro-gaming
 - vintage-pc
 - doom
 - doom2
 - ms-dos
 - vintage-games
 - compaq
---

Wir bei den thafakers mögen ja Vintage. Das haben wir an der einen oder anderen Stelle schon gezeigt. Beispielsweise mit dem alten [Powerbook G4 12"](/2017/12/01/linux-fur-ppc-linux-auf-powerbook-g4-12/), dass wir mit einem freundlichen *Linux for PPC* wiederbelebt haben oder gar dem [Atari 1040 STF](/2018/05/05/Atari-ST-in-2018-mit-Online/) von 1989, mit dem wir am Ende sogar *online* waren. Irgendwie fasziniert uns die (damals alltägliche) Arbeit mit den alten Geräten. Die Art und Weise wie Software funktonierte, User-Interfaces und all das, was damit zusammen hängt. Und das ist manchmal sogar nicht so weit weg von dem, was wir 20 oder 30 Jahre später kennen. Aber wie dem auch sei... <!--more-->

![Pentium 166 mit Windows 3.11 und mIRC sowie dem Volkov Commander](/content/images/2018/10/IMG_0647-Kopie.jpg)
<small>Pentium 166 mit Windows 3.11 und mIRC sowie dem Volkov Commander</small>

Langer Einleitung kurzer Sinn haben sich die Fakers einen alten (Ur)Pentium I mit 166 Mhz, 1.6 GB HDD und <del>32</del> 128 MB-Ram angeschafft und spielen nun fröhlich damit rum.
Zunächst fand ein **DOS 6.22**[^1] seinen Weg auf das Gerät, ergänzt um ein Windows 3.11 (WfW Windows for Workgroups); Da der Rechner ohne Netzwerkkarte daher kam, wurde kurzerhand für 1,99€ eine **3Com 100MBit NIC** angeschafft und eingebaut, was wunderbar funktioniert. 
Das größte Problem bei alten Spielen wie beispielsweise *Warcraft 2* war jedoch, dass kein Sound zu hören war. Der Compaq wurde damals nämlich ohne Soundkarte geordert. Also musste auch diese nachgerüstet werden, was mit einer **ESS 1868** *ISA-PNP*-Soundkarte erfolgt.

## Table of Contents
Dieser Artikel ist wie immer... Work in Progress :-)

1. Die Hardware
    1.1 Compaq Deskpro 2000 5166
    1.2 Die Grafikkarte
    1.3 Die Soundkarte
    1.4 Der Massenspeicher
2. Die Software
    2.1 DOS 6.22
    2.2 Windows for Workgroups 3.11
    2.3 OS/2 Warp 4.52 German
        2.3.1 FixPacks
3. Spiele
    3.1 Modifikationen für (ausreichend) Speicher unterhalb 1 MB
    3.2 Ressourcen für DOS Spiele
5. Das Internet
    4.1 TCP/IP unter DOS 6.22
        4.1.1 WATTCP
        4.1.2 Microsoft Network Client 3.0 (TCP/IP)
        4.1.3 Arachne Webbroser für DOS
4. Viertens fehlt :-)

### Die Hardware

#### Compaq Deskpro 2000 (5166)

![compaq-deskpro-2000](/content/images/2018/09/compaq-deskpro-2000.jpg)

- COMPAQ Deskpro 2000 M5166/2500 D0M
- HDD - 1.6 GB HDD (IDE) [^5]
- CPU - Intel Pentium 166MHz
- RAM - 32MB EDO Ram [^2]
- VIDEO CARD - Cirrus Logic XXX 2 MB Video Ram
- FLOPPY 1.44

#### Die Grafikkarte

![ati_videoxpression](/content/images/2018/09/ati_videoxpression.jpg)

- Chip: ATI-264VT2 (Mach64 VT)
- RAM: 2 MB
- FCC ID: EXM340
- Angaben auf Platine: PN 109-34000-00
- Angaben auf Aufkleber:
- P/N 1023401800 (1996)
- Vendor: 1002
- Device: 5654

#### Die Soundkarte

![soundcard_highscreen_sound_boostar](/content/images/2018/09/soundcard_highscreen_sound_boostar.jpg)

Der Compaq kam wurde damals nämlich ohne Soundkarte geordert. Also musste auch diese nachgerüstet werden, was mit einer  **ESS 1868** ISA-PNP-Soundkarte erfolgt. Die Website amoretro sagt dazu folgendes: […] Ein Vertreter der „abgesägten“ Soundkarte, diesmal von der Computerkette Vobis, die diese Karte massenhaft in ihrer „HighScreen“-Serie einsetzte. Die Karte selbst setzt auf den ES1868F Chip, der gute SoundBlaster / SoundBlaster Pro und AbLib-Kompatibilität mitbringt. Auch Windows Sound System ist für die PnP-Karte kein Problem. Über den WaveBlaster Header kann auch ein General-Midi Wavetable Daughterboard angeschlossen werden. Insgesamt eine unkomplizierte 08/15 Soundkarte mit guter Kompatibilität. […] [^3]

#### Die Massenspeicher
Im Original wird der Compaq mit einer 1.6GB IDE HDD ausgeliefert. Kombiniert mit einem CD-Rom-Laufwerk stellt dies die Datenverbindung in die weite Welt dar. Ich habe jedoch für kleines Geld einen **IDE-auf-CF** Adapter von Delock nachgerüstet, eine 4-GB-CF Karte eingesteckt und fortan ist Festplatte C:\> diese CF-Karte. _Vorteil_: Lautlos, im Gegensatz zur recht lauten Originalfestplatte. Schnellere Zugriffszeit, (ähnlich wie bei HDDs in aktuellen Computern in Bezug zu SSDs, ist diese CF-Karte ja auch ein Speicher ohne Mechanik), weniger Stromverbrauch.

Link zu Reichelt.de [^4]: [https://www.reichelt.de/](https://www.reichelt.de/kartenleser-fuer-cf-cards-ide-delock-91624-p78409.html?&trstct=pos_0)

### Die Software

#### DOS 6.22
Hier gibt es nicht allzu viel berechnen, da dies ein völlig normales DOS 6.22 ist, was ich im Original auf drei Disketten besaß. Und es ließ sich installieren. Ich habe mit Fehlern gerechnet, die es aber nicht gab. Im Nachhinein hätte ich gern auch mal ein neues FreeDOS ausprobiert, aber das ist jetzt hinfällig. DOS ist wirklich unglaublich schnello :-) Der Boot-Prozess samt Treiber (immerhin Maus, CD-Rom, Netzwerkkarte, Grafikkarte und Soundkarte) geschieht in wenigen Sekunden bis zur Eingabeaufforderung.

Was läuft so?

* Memmaker zur Speicheroptimierung
* DOS erkennt nur 64 der 128 MB, kann einfach noch nicht mehr adressieren
* VC - Volkov-Commander, ein 100% Clone vom echten Norton Commander (TM)
* Diverse Spiele:
    * Prince of Persia [^6]
    * Warcraft II (CD-Rom, deutsch)
    * Commander Keen (alle Teile) (Mister Keen hat übrigens gerade [28-jähriges Jubiläum](https://twitter.com/romero/status/1073661674320744448))
    * Doom und Doom 2 (lesen sie passend dazu über [SIGIL](/2018/12/11/DOOM-Reloaded/).)
    * Wolf3d.exe (ebenfalls von den Romeros)
    * Sharkys 3D-Pool
    * 4D-Sports-Driving aka Stunts.exe
    * Oh No, more Lemmings...
    * Command & Conquer (1): Der Tiberiumkonflikt (2 CD-Rom, deutsch)
	* Zool
* ...

#### Windows for Workgroups 3.11
Natürlich konnte ich mich nicht erwehren und habe ein Windows 3.11 installiert. 8 Disketten, oder gar neun? wie dem auch sei, es läuft *Pfeilschnell* und mit allen Features, die man sich nur vorstellen kann.

<small>
**Artikelbild**: Das Foto stammt von mir.
</small>

---

**Fußnoten**:

[^1]: Das letzte originale DOS der Firma Microsoft. Spätere DOS-Versionen waren in Windows 95 respetive Windows 98 inkludiert. Es gibt jedoch externe, kompatible Versionen von DOS, beispielsweise **FreeDOS**.
[^3]: Quelle: http://www.amoretro.de/2012/04/highscreen-sound-boostar-ess-audiodrive-es1868f-isa.html
[^2]: Mittlerweile konnten wir für quasi Nichts 4 x 32 MB Double-Sided Module ergattern, sodass unser Vintage Compaq jetzt mit unglaublichen 128 MB Ram werkelt. DOS selbst erkennt nur 64 :-) was beweist, wie unglaublich viel RAM das damals gewesen wäre.
[^4]: Wir nutzen *keine* Affiliate-Links, wir finden es nur praktisch für ähnlich Interessierte, gleich einen Link zum Produkt anzubieten.
[^5]: Mittlerweile wurde der PC um eine 4-GB-CF Karte ersetzt, die nun seine Festplatte darstellt. Die originale Festplatte ist abgeklemmt, befindet sich aber noch im Gehäuse. So kann sie bei Bedarf innerhalb von 4 Minuten wieder angeschlossen werden. Und der PC bleibt original.
[^6]: Oh wie sehr ich dieses Spiel geliebt habe. Natürlich war es das erste Spiel, was ich hier auf dem DOS-Rechner ausprobieren musste. Hier kann man es im Browser spielen.