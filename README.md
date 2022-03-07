# SandBlocks - Blocks to the Rescue

## Idee

Mithilfe von SandBlocks können visuelle Elemente in Smalltalk-80 Programmcode integriert werden. Somit können Entwickler entscheiden wann und wo sie visuelle Elemente nutzen wollen.  
Für Details zur Nutzung empfiehlt sich ein Blick ins [Wiki](https://github.com/hpi-swa-lab/SandBlocks/wiki).

## Installation

Um das Projekt in ein neues Image zu laden muss zunächst dieses Repository geklont werden (dies kann ruhig mittels des Squeak Git Browsers geschehen). Danach ist es am einfachsten dies es mittels Git per Commandline auszucken und dann in einem Workspace im Image folgendes auszuführen
```
Metacello new
 repository: 'filetree://', (FileDirectory default / <lokaler_git_pfad_zum_repo>) fullName;
 baseline: 'BlocksToTheRescue';
 load: #default.
```
Danach kann man im Image die restlichen Changes auschecken.

## Beispiele

Für Beispiele sollte man nach sich nach dem Auscheken die `BlocksToTherescue-Examples` Klassenkategorie ansehen.

## Veröffentlichungen

Dieses Projekt wurde als Technischer Bericht [#132](https://hpi.de/fileadmin/user_upload/hpi/dokumente/publikationen/technische_berichte/tbhpi132.pdf) des Hasso-Plattner-Instituts veröffentlicht.

````Bibtex
@techreport{Bein2020BlocksToTheRescue,
 author = {Leon Bein, Tom Braun, Björn Daase, Elina Emsbach, Leon Matthes, Maximilian Stiede, Marcel Taeumel, Toni Mattis, Stefan Ramson, Patrick Rein, Robert Hirschfeld, Jens Mönig},
 title = {SandBlocks: Integration visueller und textueller Elemente in Live-Programmiersysteme},
 institution = {Hasso-Plattner-Institut}
 year = {2020},
 number = {132},
 isbn = {978-3-86956-482-1},
 issn = {2191-1665},
 address = {Potsdam, Deutschland}
} 
````
