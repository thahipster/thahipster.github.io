---
title: Apfelhammer.de nutzt Github
image: "/2019-02-14_thomas-kvistholt-191153-unsplash.jpg"
tags:
- github
- pages
- Apfelhammer.de
date: 2019-02-14 19:47:43 +0100

---
An dieser Stelle muss ich aber mal eben davon berichten, wie **Apfelhammer.de** jetzt läuft. Und dabei ist es völlig okay wenn das bei euch, den wehrten Lesern, gleich zwei Fragen aufwirft:

1. Wie soll denn eine Website laufen?
2. Ich erkenne keinen Unterschied zu vorher!

_Well_, mit "laufen" meine ich tatsächlich: mit welcher zu Grunde liegenden Technik Apfelhammer.de nun betrieben wird. Denn Apfelhammer ist eine _Jekyll-Website_ und **Jekyll** ([Link](https://jekyllrb.com/)) ist ein statischer Website-Generator [^1]. Das ist schon mal recht speziell. Aber damit nicht genug, wird Jekyll von mir nämlich von einem Uberspace auf Github-Pages deployd, um von dort in mein HTML-Root von apfelhammer.de publiziert zu werden. Ach, fragt nicht! :-)

![WYSIWYG Editor](/content/images/2019-02-14_Bildschirmfoto 2019-02-14 um 20.18.11.png "WYSIWYG Editor")<small>WYSIWYG Editor Forestry</small>

Welchen Vorteil das bringt? Ich kann plötzlich ein Webinterface, ähnlich einem CMS zum Schreiben neuer Artikel, benutzen und Bilder per _Drag'n'Drop_ hochladen. "Ob das nicht konträr gegenüber dem eigentlichen Sinn eines *Static-Website-Generators* steht" fragt ihr euch? Richtig, eigentlich schon. Aber von den Vorteilen die eine statische HTML-Website so mit sich bringt geht hierbei nichts verloren. Nach wie vor landet am Ende nur ein Gerüst aus HTML Dateien und weiteren Inhalten wie Bilden, gepaart mit den CSS-Dateien fürs Desgin auf dem Webserver. Alles andere geschieht im Hintergrund.

Aber wie dem auch sei, es bleibt spannend. Aktuell gefällt mir das sehr gut, obschon ich natürlich aber auch weiterhin die Möglichkeit sehr schätze, meine Daten per Terminal und SSH Verbindung zu bearbeiten, Bilder per FTP hoch zu laden und die Sache mit einem jekyll build am Ende per Hand und rsync zu kopieren. :-)

_Es bleibt also spannend_.

<small>
**Artikelbild**: Photo by [Thomas Kvistholt](https://unsplash.com/photos/oZPwn40zCK4?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on Unsplash.
</small>

---

**Fußnoten:**

[^1]: Statische Webseiten bestehen aus HTML, CSS und optional Javascript. Die Seite muss nicht erst durch eine serverseitige Programmiersprache bei Abruf generiert werden. Sie "kompiliert" vielmehr den Inhalt mit einem Template für das Aussehen und schwups: Apfelhammer.de