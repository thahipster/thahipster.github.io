---
layout: post
title: Apfelhammer.de kann jetzt Kommentare
date: '13:51 2018-12-03'
image: kommentare.jpeg
tags: 
 - jekyll
 - website
 - kommentare
 - isso
 - neu
---

Das mag vielleicht *befremdlich* klingen, also die Information darüber, dass man auf *Apfelhammer* jetzt auch Kommentare schreiben kann, auf einem Weblog… aber Ja. Das **ist** etwas besonderes. Denn die zugrunde liegende Webtechnik, nämlich *Jekyll* ([Link](https://jekyllrb.com/)), ist ein sogenannter *statischer Webseiten-Generator*, der aus den geschriebenen Inhalten statische HTML-Webseiten erstellt. Und weil sich *statische* Website und dynamische *Kommentare* eigentlich ausschließt, ist es besonders. <!--more-->

![Diskussion](https://upload.wikimedia.org/wikipedia/commons/b/b5/Cbase_berlin_13.6.04%2C_Diskussion.jpg)

Aber ich schweife ab [^1]. Was ich eigentlich sagen möchte: <code>Fühlen sich sich recht herzlich zur Kommentierung meiner Beiträge eingeladen.</code> Und nun zur Technik. Hier läuft **ISSO** [^2] ([Link](https://posativ.org/isso/)) im Hintergrund. ISSO ist sozusagen ein Äquivalent zu dem recht bekannten **Disqus**, aber eben bei ISSO selber gehostet. Denn Kommentare sind kein *Big-Data*. Sondern gehören den Leuten und sollten den Server eigentlich auch nicht verlassen. 

Um irgendwie weiter vearbeitet zu werden. Bei Disqus gab es da ein paar Probleme, die viele Leute nach Alternativem haben schauen lassen. Na wie dem auch sei. Ich habe also auf meinem Webhost ISSO installiert. ISSO erlaubt es übrigens, anonym Kommentare zu verfassen. Gespeichert wird es in einer **SQLite**-Datenbank. Und bei Aufruf des betreffenden Artikels werden die Kommentare abgerufen und eingeblendet. *Ganz einfach*.

Probieren sie es aus. :-) 

<small>
**Artikelbild** 1: CC BY-SA 3.0 File:Cbase berlin 13.6.04, Diskussion.jpg Created: 13 June 2004 
([LINK](https://commons.wikimedia.org/w/index.php?search=diskussion&title=Special%3ASearch&profile=advanced&fulltext=1&advancedSearch-current=%7B%22namespaces%22%3A%5B6%2C12%2C14%2C100%2C106%2C0%5D%7D&ns6=1&ns12=1&ns14=1&ns100=1&ns106=1&ns0=1#/media/File:Cbase_berlin_13.6.04,_Diskussion.jpg)) <br />
**Artikelbild** 2: Photo by [rawpixel](https://unsplash.com/photos/AJCNM8JrzT8?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/explore?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
</small>

**Fußnoten**:

[^1]: Ich schweife immer ab, daran muss man sich wohl gewöhnen.
[^2]: Isso is an informal, german abbreviation for “Ich schrei sonst!”, which can roughly be translated to “I’m yelling otherwise”. It usually ends the discussion without any further arguments.