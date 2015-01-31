---
title: Sleep mit nur einem Klick direkt aus der Task-Leiste
author: oocx
date: 2015-01-25
template: article.jade
comments: true
tags: Windows
---

Mit wenig Aufwand kann man sich einen Sleep-Button direkt in die
Task-Leiste bauen.<span class="more"></span>

Unter Windows 8.1 habe ich mir angewöhnt, den Rechner über Win+i
herunter zu fahren bzw. in den Sleep Modus zu schalten. In Windows 10
funktioniert das nicht mehr, im neuen Settings Menü fehlt das Menü
zum Herunterfahren.

<img alt="psshutdown Eigenschaften" src="/articles/sleep-in-der-taskleiste/psshutdown-properties.PNG" class="original" />
Eine Sleep-Funktion kann man sich aber schnell und einfach selbst in die
Task-Leiste bauen. Dazu braucht man einfach nur einen Shortcut auf
psshutdown aus der [Sysinternals Suite](https://technet.microsoft.com/de-de/sysinternals/bb842062). Die sollte
man sowieso auf jeden Rechner installieren, allein schon wegen dem
Sysinternals Process Explorer. Also einfach im Explorer den Ordner mit
psshutdown öffnen, rechtsklicken, "Pin to taskbar". In der Task Bar dann
Rechtsklick auf den neuen Shortcut, in dem Menü das sich öffnet noch ein
Rechtsklick auf "Shutdown, logoff ...", dann auf Properties. Unter Target
trägt man dann hinter psshutdown.exe noch die Argumente "-d -t 0" ein. Im
Feld "Shortcut Key" lässt sich auch noch ein Tastasturshortcut vergeben,
ich habe bei mir Strg+Alt+S eingestellt. Wenn's auch noch schön aussehen soll
kann man sich noch ein schönes Icondafür herunterladen und hier über
"Change Icon" auswählen.

Icons findet man z.B. bei [Iconfinder](https://www.iconfinder.com/icons/16948/power_standby_icon#size=128).
Ich habe das Icon noch mit [Paint.net](http://www.getpaint.net/) invertiert,
damit es besser zum Windows 10 Design passt. Da Paint.Net keine .ico Dateien
speichern kann, musste ich das Icon noch mit [convertico.com](http://www.convertico.com/) von png nach ico konvertieren.

Und so sieht das Ergebnis aus:
<img alt="Sleep" src="/articles/sleep-in-der-taskleiste/sleep-button-in-der-taskleiste.PNG" class="centered" />
