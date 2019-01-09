# farconfig
Far Manager v3.0 configurations

## Installation
* Product Features:
  * [+] Addons
  * _[+] Changelogs_
  * _[+] Shortcuts \\ Quick launch_
  * _[+] Plugin SDK_

## Configuration
* Run Far
* Close Far
* Execute **deploy.bat**
* Run Far
* Save setup: **Shift+F9**

## Plugins
* Integrity Checker 2.4.3.0
* PortaDev 3.0.4040
* FarColorer
  * unzip groovy-hrc.zip into Plugins\\FarColorer\\base\\hrc\\auto
    * groovy.hrc, Schemes.hrc: "/\\.groovy$/i" -> "/\\.(groovy|gy|gradle)$/i"
  * Plugins\FarColorer\base\hrc\proto.hrc: "/\\.(rb|rbw|ruby|rake)$/i" -> "/\\.(rb|rbw|ruby|rake)$|^Vagrantfile$/i"
