# SandBlocks

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
