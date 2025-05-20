# osp_ambulance_patient_outfit

**Deutsch:**
Ein UI-Button und ein Befehl, um einem Spieler Patienten-Kleidung hinzuzufügen.

**English:**
A UI button and command to add patient clothing to a player.

---

## 📋 Item for ox_inventory

```lua
['patientclothing'] = {
    label = 'Patient Clothing',
    weight = 0,
    description = 'a item for add or remove the patient outfit',
    stack = true,
},
```

---

## 📋 Informationen | Information

### UI-Button
**Deutsch:**
- Für die Nutzung des UI-Buttons benötigst du ein Item mit dem Namen `patientclothing`.  
  Falls du das Item nicht verwenden möchtest, entferne die entsprechende Abfrage in der Datei `ui.html`.  
  Suche nach dem folgenden Pfad und entferne ihn:  
  ```javascript
  if (findItem('patientclothing'))
  ```

**English:**
- To use the UI button, you need an item named `patientclothing`.  
  If you don't want to use the item, remove the condition in the file `ui.html`.  
  Look for the following path and remove it:  
  ```javascript
  if (findItem('patientclothing'))
  ```

### Sprachunterstützung | Language Support
**Deutsch:**
- In der Datei `lang.lua` gibt es unter `buttons` einen neuen Eintrag:  
  ```lua
  patientclothing = 'Add Patient Outfit'
  ```  
  Übersetze diesen Text einfach in die gewünschte Sprache.

**English:**
- In the file `lang.lua`, there is a new entry under `buttons`:  
  ```lua
  patientclothing = 'Add Patient Outfit'
  ```  
  Just translate this text to your desired language.

### Installation
**Deutsch:**
- Das Addon ist nun ein reines plug and play!
  füge einfach die Dateien vom `osp_ambulance`-Verzeichnis hier in die vorgesehene Ordner Struktur des `osp_ambulance`-Verzeichnises und passe die `config_patientclothing.lua` deinem Entsprechen an. Vergiss nicht die `fxmanifest.lua` zu ersetzen!

**English:**
- The addon is now purely plug and play!  
  Simply add the files from the `osp_ambulance` directory into the designated folder structure of the `osp_ambulance` directory and adjust the `config_patientclothing.lua` file to your needs. Don’t forget to replace the `fxmanifest.lua`!

---

## 📦 Features

- **Deutsch:**
  - 🩺 Einfache Möglichkeit, Spielern Patienten-Kleidung zuzuweisen.
  - 🌐 Anpassbare Sprachunterstützung für verschiedene Übersetzungen.
  - 🔧 Flexibler Aufbau, um den UI-Button optional ohne Item zu verwenden.

- **English:**
  - 🩺 Easy way to assign patient clothing to players.
  - 🌐 Customizable language support for various translations.
  - 🔧 Flexible setup to optionally use the UI button without an item.

---

## 🛠️ Befehle | Commands

### 🌍 Deutsch
Der Befehl kann in der `config_patientclothing.lua` individuell angepasst werden. Beachte jedoch, dass der Befehl nicht im Framework `standalone` verwendet werden kann.

### 🌍 English
The command can be customized individually in the `config_patientclothing.lua`. However, it cannot be used with the `standalone` framework.

---

## 💡 Hinweise | Notes

**Deutsch:**
- Das Skript ist ein Add-On für `osp_ambulance`. Stelle sicher, dass dieses korrekt installiert ist.

**English:**
- This script is an add-on for `osp_ambulance`. Make sure it is correctly installed.  

Bei Fragen oder Problemen | For questions or issues:  
👉 Erstelle ein Issue im Repository | Create an issue in the repository.  

---

## ⚖️ Urheberrecht | Copyright  

### Deutsch  
Dieser Inhalt, einschließlich aller Dateien und Skripte in diesem Repository, unterliegt dem Urheberrecht.  
Eine Weiterverbreitung oder Veröffentlichung dieses Inhalts auf anderen Repositories, Plattformen oder in irgendeiner anderen Form ist ohne ausdrückliche schriftliche Genehmigung des ursprünglichen Autors strengstens untersagt.  

**Ausnahme:** Die Dateien `ui.html`, `fxmanifest.lua` und `lang.lua` sind von dieser Einschränkung ausgenommen und dürfen weiterverbreitet oder angepasst werden, solange die ursprüngliche Quelle angegeben wird.  

### English  
This content, including all files and scripts in this repository, is protected by copyright.  
Redistribution or publication of this content on other repositories, platforms, or in any other form is strictly prohibited without the explicit written permission of the original author.  

**Exception:** The files `ui.html`, `fxmanifest.lua`, and `lang.lua` are excluded from this restriction and may be redistributed or modified, provided that the original source is credited.  

--- 

Viel Spaß mit deinem neuen Feature! 😊  
Enjoy your new feature! 😊
