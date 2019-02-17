---
layout: post
title: Load Average verstehen
date: '2018-12-15 16:10'
image: load.jpg
tags: 
 - linux
 - hacking
 - 'load-average'
---

Ich bin mir nicht sicher, ob Sie schon mal mit Linux zu tun hatten? Also auf der Kommandozeile, meine ich. Nun, wenn dem aber so ist, dann kennen sie sicher diese ominösen *load average*-Werte, die einem beispielsweise beim Befehl <code>uptime</code> angezeigt werden, oder nicht? Und wissen Sie denn auch, was diese Werte eigentlich bedeuten, wie sie interpretiert werden müssen und ab wann es praktisch nicht mehr gut ist - sozusagen *overloaded*? Sehen sie, ich auch nicht! <!--more-->

Grund genug also, einen Artikel darüber zu schreiben!

![](https://images.unsplash.com/photo-1510746001195-0db09655b6db?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjExNzczfQ&s=d75873395f350bbdf8c4608f94e3f573)

Aber zunächst ein mal zum grundlegenden Verständnis. Warum sind das immer drei Werte, und warum sind die unterschiedlich?

<code>load average: 1.45, 1.95, 2.22</code>

Der erste Wert ist die momentane Belastung (1.45). Der zweite Wert ist die Auslastung der letzten 5 Minuten (1.95). Und der dritte Werte ist die Auslastung der letzten 15 Minuten (2.22). Diese drei Zahlen sagen also etwas ganz unterschiedliches über einen Computer aus. Momentan kann die erste Zahl einen hohen Wert haben, was aber noch nichts bedeuten muss, betrifft es ja nur den Moment, das hier und jetzt, wo er viel zu tun hat! Denn wenn man auf den dritten Werten schaut und sich dieser im Rahmen hält, hat man noch kein dauerhaftes Problem, denn auf 15 Minuten gesehen war die Auslastung also doch nicht so hoch und die CPU nur kurz gefordert. Erst wenn der dritte Wert dauerhaft zu hoch ist, dann ist unser Rechner auch dauerhaft belastet oder sogar überlastet und seinen Aufageben die er bewältigen muss, nicht mehr gewachsen. Aber der Reihe nach, woher weiß ich denn nun, welcher Wert für was steht und wann ich Grund zur Sorge habe?

#### Verkehr, sozusagen

Wir sehen zum Verständnis von **load** eine Single-Core CPU praktisch wie eine Einbahnstraße. Wenn wir uns jetzt vorstellen, wir sitzen an dieser Straße, und diese Autos müssen an uns vorbei fahren, dann wäre das quasi folgendermaßen: Ist die Straße zu 100% perfekt ausgelastet, dann gäbe es keinen Verzug, es wäre bei 1.0. Alle Autos kämen gleichmäßig durch, es wäre im perfekten Fluss. Aber nur ein Auto mehr und wir hätten ein Problem, das Auto müsste warten und käme nicht mehr weiter. *Delay*. Genau so ist das mit unserem Load. Alles unter 1 ist nicht ausgelastet. Alles über 1 ist überlastet. Eins ist also der Wert der perfekten Auslastung, darunter ist noch Luft, darüber ist die Luft schon zu Ende. 
Wir beziehen dieses Wissen auf unsere drei Werte, die *load average* ausgibt. Erst wenn unser dritter Wert über 1.0 ist, dann haben wir ein Problem, denn dann ist unser Rechner nicht nur kurzzeitig (Wert 1), sondern dauerhaft (eben über 15 Minuten hinweg) überlastet. 

Der **Load von 0.5** (wenig ausgelastet)
![load_0.5](/content/images/2018/01/load_0.5.png)

Der **Load von 1.0** (quasi perfekt ausgelastet)
![load_1.0](/content/images/2018/01/load_1.0.png)

Der **Load von 1.5** (sozusagen über die Hälfte überlastet)
![load_1.5](/content/images/2018/01/load_1.5.png)

Die Daten bei einem Load über 1.0, die warten müssen, gehen nicht verloren, es dauert nur länger, bis sie bearbeitet werden, ganz so wie bei unserer Straße. Die Autos müssten eben warten bis sie weiter fahren könnten, wir hätten Stau.

#### Also ist ein Load von 1.0 perfekt?

Nun... nicht ganz. Das Problem mit einer Auslastung von 1.0 ist, dass man keinerlei Platz mehr hätte. Kein Quäntchen wäre übrig. Viele Computerfreunde schauen also, dass ihre Rechner bei < 0.70 liegen. Wenn dieser Wert dauerhaft überschritten wird, werden Sie aktiv. Knapp über den Daumen gepeilt kann man also folgendes konstatieren:

* Ab einem dauerhaften Load von 0.70 sollte man ein Auge darauf haben und darüber nachdenken warum, bevor sich die Dinge zuspitzen und zum Problem werden. Welche Software, Upgrade nötig?
* Bei einem dauerhaften Wert von 1.0 und darüber sollte man schleunigst heraus finden, woran das liegt und das Problem abstellen.
* Bei einem dauerhaften Wert von 5.0 und darüber hat man ernsthafte Schwierigkeiten. Der Rechner hängt entweder schon komplett, oder er ist so langsam, dass eigentlich nichts mehr richtig funktioniert. Dorthin sollte die Reise also niemals gehen, denn dann hat man eigentlich schon verloren.

Ein kluger Administrator lässt es also nicht soweit kommen und passt ab 0.70 auf.

![Beispiel load average Auslastung](/content/images/2018/01/f-r_load-1.png)

In diesem Bild sehen wir einen *load average* von <code>load average: 5.64, 5.63, 4.62</code>. Was sagt uns das? Die Kiste ist gerade ziemlich ausgelastet, Wert 1 ist bei über 5. Wir sehen das in diesem Beispiel auch an der CPU-auslastung, diese ist bei knapp 100%. Wir sehen an Wert 2, 5.63, dass dieser Zustand schon länger anhält, da auch dieser über 5 ist. Und bei Wert 3 sehen wir schließlich mit 4.62, dass diese Kiste schon die ganze Zeit viel rechnen muss, also über den Zeitraum von 15 Minuten hinweg, oder länger. Wir hätten also einen völlig überlasteten Computer identifiziert. [^1]

#### load average bei Multi-Prozessor/Multi-Kern CPUs?

Wie ist das denn jetzt bei heutigen Multi-Kern oder Multi-CPU Computern. Gilt hier ebenfalls der Wert von 1, oder verhält es sich anders?

Bei Mehrkern-Computern verhält es sich so, dass der Schwellenwert von Load die Zahl der CPU(Core)s ist. Der Wert von 1 gilt für eine Single-Core-CPU. Bei einem Computer mit 4 Kernen wäre der entsprechende Wert also 4. 
Kommen wir nun auf den obigen Screenshot zurück, dann verhält es sich folgendermaßen: Dieser Computer im Beispiel ist ein *4-Kern-Computer*. Der Load von 4 entspräche also 1. Wir sind bei knapp 5, haben also eine ganz geringe Überlastung, aber diese ist gar nicht so hoch, da wir nicht von 1 sondern von 4 ausgehen. Der Rechner hat zwar gut zu tun, aber bei den Werten ist noch nicht Hopfen und Malz verloren, er reagiert noch entsprechend schnell und ist in working-operation.

*Anders ausgedrückt*: bei einer Single-Core-CPU entspricht der Wert von 1.00 einer Auslastung von 100%. Bei einer Dual-Core Machine entspricht der Wert von 2.00 einer Auslastung von 100%.
Bei einer 4-Kern-Machine würde man erst ab einem dauerhaften Load von 3.70 näher nach schauen, vorher nicht.

Ich hoffe, das war irgendwie verständlich und das Grundprinzip ist klar geworden?

<small>
**Artikelbild**: Photo by [Jonas Svidras](https://unsplash.com/@jonassvidras?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit) / [Unsplash](https://unsplash.com/?utm_source=ghost&utm_medium=referral&utm_campaign=api-credit).
</small>

---

**Fußnoten**:

[^1]: Was bei diesem Beispiel jedoch nur bedingt stimmt, denn dieser Rechner hier, der hat gerade einen Kernel auf 4 Kernen kompiliert und ist deshalb mit Absicht völlig aus und überlastet, einen Kernel zu kompilieren ist nämlich 1) keine Daueraufgabe und 2) eine besonderes aufwendige.