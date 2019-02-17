---
layout: post
title: How To Enable TRIM Support iMac 2010
date: 2018-12-22 14:34
image: ssd_cover.jpg
tags: 
 - enable trim
 - trim support
 - macos
 - osx
 - ssd
 - apple
---

Neulich habe ich meinen [iMac um eine interne SSD erweitert](/2018/12/22/Time-to-upgrade-the-iMac/) und dafür das DVD-Laufwerk raus geworfen. Allerdings ergibt sich beim Upgrade ein Problem, auf das ich in diesem Artikel kurz eingehen möchte. Apple deaktiviert nämlich den **TRIM-Support** für alle fremden, *nicht apple-eigenen* SSDs, die man sich im Zubehörmarkt nachträglich in seine Kiste baut. So wie ich. Ein kurzer Blick in den Systemprofiler offenbart das Vermutete, für meine neue SSD ist TRIM nicht aktiviert. <!--more-->

![](/assets/2018/12/imac/trim1.png)

### Warum aber ist TRIM so wichtig?
Der TRIM Befehl teilt dem Controller mit, dass in Blöcken die gelöscht wurden (als ungültig markiert), nun keine Daten mehr sind. Das ist wichtig, damit der Controller die Daten nicht noch vorhält, die es schon gar nicht mehr gibt. Bei HDDs ist das unwichtig, bei SSDs hingegegen werden die Imhalte nicht mehr weiter mitgeschrieben, wodurch die Schreibzugriffe auf das Laufwerk beschleunigt und zudem die Abnutzungseffekte verringert werden. Die ungültig markierten Blöcke werden dann beim nächsten Löschen ihres Erasable Blocks frei und wieder mitbenutzt. Sonst würde immer nur an einer speziellen Stelle geschrieben und die SSD dadurch schneller *verschleißen*. Ihr seht also, wir brauchen Trim.

### aktiviere TRIM für SSD unter macOS

Seit OS X 10.10.4 kann man TRIM ohne zusätzlich Fremdsoftware und ohne Deaktivierung von Sicherheitsfeatures per Console aktivieren. Folgender Befehl im **Terminal.app** aktiviert TRIM.

<code>sudo trimforce enable</code>

Wenn dieser Befehl durchgelaufen ist, rebootet der iMac. Sichert also eure Daten und beendet laufende Programme, bevor ihr den Befehl ausführt. Da dies ein Super-User-Befehl ist, ist das Admin-Kennwort notwendig.

{% highlight shell %}
Jans-iMac:~ apfelhammer$ sudo trimforce enable
Password:
IMPORTANT NOTICE:  This tool force-enables TRIM for all relevant attached
devices, even though such devices may not have been validated for data
integrity while using TRIM.  Use of this tool to enable TRIM may result in
unintended data loss or data corruption.  It should not be used in a commercial
operating environment or with important data. Before using this tool, you
should back up all of your data and regularly back up data while TRIM is
enabled.  This tool is provided on an “as is” basis. APPLE MAKES NO WARRANTIES,
EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF
NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
REGARDING THIS TOOL OR ITS USE ALONE OR IN COMBINATION WITH YOUR DEVICES,
SYSTEMS, OR SERVICES. BY USING THIS TOOL TO ENABLE TRIM, YOU AGREE THAT, TO THE
EXTENT PERMITTED BY APPLICABLE LAW, USE OF THE TOOL IS AT YOUR SOLE RISK AND
THAT THE ENTIRE RISK AS TO SATISFACTORY QUALITY, PERFORMANCE, ACCURACY AND
EFFORT IS WITH YOU.
Are you sure you wish to proceed (y/N)? y

Your system will immediately reboot when this is complete.
Is this OK (y/N)? 
{% endhighlight %}

Ganz wichtig, jetzt wird TRIM aktiviert

{% highlight shell %}
Enabling TRIM...
.
.
Operation succeeded. Your system will reboot momentarily, please wait...
{% endhighlight %}

Ein Blick in den System-Profiler offenbart nun, dass TRIM aktiv ist. Super. :-)

![](/assets/2018/12/imac/trim2.png)

Das wars auch schon wieder, bis bald.

<small>
**Artikelbild**: Photo by [Patrick Lindenberg](https://unsplash.com/photos/1iVKwElWrPA?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/search/photos/harddrive?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText).
</small>

---

**Fußnoten**:

Keine Fußnoten in diesem Artikel.
