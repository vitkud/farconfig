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
  * Plugins\FarColorer\base\hrc\proto.hrc:
    * After `<filename>/\.(rb|rbw|ruby|rake)$/i</filename>`
      * append `<filename>/^Vagrantfile$/i</filename>` 
    * After `<filename>/\.groovy$/i</filename>`
      * append `<filename>/\.gradle$/i</filename>` 
* Regular Expression Search and Replace (RESearch) 8.7.0.0
  * Copy `RESearch.lua` into `%FARPROFILE%\Macros\scripts`
