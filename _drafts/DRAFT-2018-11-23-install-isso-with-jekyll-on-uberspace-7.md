---
title: 'How to install ISSO Comment System with Jekyll on Uberspace 7'
layout: post
published: false
date: '10:41 23-11-2018'
taxonomy:
    category:
        - how-to
    tag:
		- anleitung
		- uberspace
		- jekyll
---

Ich habe einen Account auf Uberspace, der mit Version 7 läuft. Dort habe ich mir Jekyll als statisches Weblog-System installiert, wie ihr seht :-) Allerdings habe ich mich dann doch wieder mit dem **Thema** *statische Websiten-Ersteller* (Jekyll, Pelican, Octopress…) und *Kommentaren* beschäftigt. Kommentare sind ja kein *Big-Data*, sollten es zumindest nicht sein, somit fällt **Disqus** als externer Kommentardienstleister raus. Disqus kenne ich noch aus anderen Website-Zusammenhängen und eigentlich hat es mir auch nie gefallen. Aber wie dem auch sei… Dann gibt es da noch statische Generatoren, die dann nur die Zusammenbindung der Kommentare in Azure auslagern, aber nicht die Daten woanders speichern etc., allerdings benötigt es Github und Azure. Beides habe ich nicht. Ich habe mein Jekyll auf Uberspace gehostet und rsynce die statischen Seiten nach `~/html`.

## ISSO
Und da kommt ISSO ins Spiel. ISSO ist wie Disqus, ABER lokal gehostet. Bei dir selber. Keine Daten verlassen zu keinem Zeitpunkt deinen Server, sozusagen.

###In­stal­la­tion
Isso und seine Abhängigkeiten gemäß Entwickler und Uberspace als user installieren.

eingabe pip3.6 install isso werkzeug flup --user

port finden: UBERPORT=$(( $RANDOM % 4535 + 61000)); netstat -tulpen | grep $UBERPORT && echo "Port bereits belegt"

port anzeigen: echo $UBERPORT

port notieren

eingabge find ~ -name "isso*"

ergebnis /home/appleham/.local/lib/python3.6/site-packages/isso

Befehl zum link in bin: ln -sf /home/appleham/.local/lib/python3.6/site-packages/isso ~/bin/

mkdir ~/etc/isso

cat <<__EOF__ >~/etc/isso/user.cfg
[general]
# braucht es nicht port = 62694
dbpath = $HOME/etc/isso/comments.db
host =
	https://appleham.uber.space
    http://apfelham.uber.space/
__EOF__

erfolg: 2018-11-23 13:49:16,046 INFO: connected to https://appleham.uber.space

### Ressourcen
- Keine Ressourcen
