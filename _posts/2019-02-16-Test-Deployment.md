---
title: Deployment of apfelhammer.de
tags:
- test
- jekyll
- cool
- fix.it
- github
- buddyworks
image: "dlanor-s-703975-unsplash.jpg"
date: 2019-02-16, 22:09:25

---
**Hallo** Freunde, mit diesem Eintrag möchte ich gern meine *Auto-Push-Variante* prüfen. Und sozusagen durch das Schreiben dieses Artikels auch gleich durchführen. Sie wissen schon… Ich habe ja [neulich](/2019/02/14/apfelhammer-de-nutzt-github/) bereits berichtet, dass ich hier ein wildes Konstrukt entwickelt habe, was ich kurz aufzeigen möchte. <!--more-->

![Mein Jekyll Workflow](/assets/2019/02/Jekyll-Workflow.jpg)
<small>apfelhammer.de Workflow zur Veröffentlichung der Webseite.</small>

Demnach funktioniert diese Website also folgendermaßen: [^1]

1. Ich schreibe meine Artikel mit Markdown, es sind also Textdateien die einer gewissen Ausschreibungssprache folgen [^2]. Zugehörige CSS-Dateien bilden das Design ab. Zusammen gemengt wird das Später dann via Jekyll, dem eigentlich statischen Website-Generator. Er generiert aus meinen Markdowns und den CSS-Dateien (und optional Javascript) eine fertige Webseite. **Apfelhammer.de**
2. Die Datein werden automatisch in ein Repository auf Github.com veröffentlicht. Dort liegen sie rum und sind versioniert und bieten alle Vorteile, die Github so bieten kann. Eigentlich ist Github für Programmierer und zueghörigen Code, aber man kann eigentlich auch seine eigene Master-Thesis da drin speichern [^3].
3. Nun greift eine sogenannte CI [^4] ein, [Buddy.Works](https://buddy.works), diese wird automatisch angeschoben, weil Github ihr mitteilt, dass etwas im Repository (da wo meine Website liegt) passiert ist. Nämlich genau dann, wenn ich z.B. eine neue Markdown Datei, so wie diese hier, verfasst habe, also ein neuer Artikel fertig ist. Oder ein Bild. Oder das Theme sich geändert hat.
4. Nun wird die CI aktiv und generiert die Website. In einem Container. Unsichtbar. Sie nimmt also meine Website aus dem Github Repository, startet **Jekyll**, baut mit Jekyll meine Website fertig zusammen, führt noch einen Test durch ob meine Website auch in Ordnung ist, gibt dann ein OKAY wenn alle Tests erfolgreich durchgelaufen sind (bei mir wird der HTML-Code geprüft)
5. und lädt dann über einen Terminal-Befehl die fertig generierte Jekyll-Website hoch auf meinen Webserver, der bei Uberspace liegt…
6. … und so ist meine Website veröffentlicht. Das Ergebnis seht ihr gerade vor euch, während ihr diesen Artikel lest.

*Der Vorteil*? Ich müsste all diese Schritte per Hand durchführen. Aber so laufen sie automatisch ab. Jedes mal wenn ich irgendwo ein Komma ändere, müsste ich das alles wieder erneut durchführen. Das ist eben der Nachteil eines statischen Webseiten-Generators.

### Vorteile statischer Websites
Früher waren eigentlich alle Seiten mal statisch. Sie bestanden aus ein paar HTML-Dateien, zu Beginn gab es noch nicht mal CSS, das Design einer jeden Seite stand direkt in der Datei, im HTML Code, drin. Dann kam irgendwie PHP, Ruby und das sogenannte WEB 2.0, das *Mitmach-Web* und mit Ihm die Weblogs auf. Es wurden CMS erfunden und diese funktionieren automatisch. Meist mit einer Datenbank im Hintergrund in der die Artikel etc. gespeichert sind, generiert ein PHP-basiertes Weblog wie Wordpress die Seite BEIM AUFRUF, wenn der Browser sie anfordert. Das kostet bei komplexen Websites natürlich viel Rechenleistung und dementsprechend Zeit. Bei mir liegen nur ein paar fertige HTML-Seiten, ein paar Bilder, ein bisschen CSS-Code auf dem Webserver und der Browser kann es einfach abrufen. Das geht schneller. Durch die geringere Komplexität bietet sie auch weniger Angriffsfläche für Fehler oder Einfallstore für Cracker.

### Nachteile statischer Websites
Da ich meine Website immer neu bauen muss, ist das natürlich ziemlich nervig. Selbst wenn ich nur ein Komma ändere, muss ich die Seite neu generieren, sie durch Jekyll in meinem Fall also neu zusammen bauen lassen, sie per Hand überprüfen ob alles okay ist, sie FTP-Programm o.ä. auf den Webserver hoch laden und erst dann wäre mein geändertes Komma online.
Ein weiterer Nachteil statischer Websites ist der Fakt, dass hier keine KOmmentare abgebilder werden können. Denn Kommentare sind dynamisch. Dies muss man zusätzlich über Dritt-Applikationen schaffen. Dynamische CMS o.ä. haben Kommentare über ihr eigenes Datenbanksystem bereits intergriert.
Sicher gibt es noch viele weitere Nachteile, auf die ich hier aber gerade nicht eingehen möchte, da ihr hierfür die Kommentar-Funktion nutzen könnt.

<small>
**Artikelfoto:** Photo by [Dlanor S](https://unsplash.com/photos/2xEQDxB0ss4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on Unsplash.<br />
**Artikelfoto** 2: Eigenes Werk. (C) Ich.
</small>

---

**Fußnoten:**

[^1]: Den Arbeitsablauf habe ich selber gemacht. Bitte lachen Sie nicht. Die Symbole und Grafiken sind Eigentum der jeweiligen Firmen. Alle Rechte vorbehalten.
[^2]: Markdown ist eine vereinfachte Auszeichnungssprache, die von John Gruber und Aaron Swartz entworfen und im Dezember 2004 mit Version 1.0.1 spezifiziert wurde. Ein Ziel von Markdown ist, dass schon die Ausgangsform ohne weitere Konvertierung leicht lesbar ist. [Quelle](https://de.wikipedia.org/wiki/Markdown).
[^3]: GitHub ist ein Onlinedienst, der Software-Entwicklungsprojekte auf seinen Servern bereitstellt (Filehosting). Namensgebend war das Versionsverwaltungssystem Git. Die GitHub, Inc. hat ihren Sitz in San Francisco in den USA.[Quelle](https://de.wikipedia.org/wiki/GitHub)
[^4]: CI bedeutet *Continous Integration*, und der Service führt alleine gewisse Aktionen durch, bezogen auf Software-Code oder eben hier meine Website, wenn es dazu automatisiert einen Befehl erhält. Bei mir: gibt es Änderung oder neue Datei? Dann generiere Website neu und stelle sie online.
