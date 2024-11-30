# osp_ambulance_patient_outfit

**Deutsch:**
Ein UI-Button und ein Befehl, um einem Spieler Patienten-Kleidung hinzuzufügen.

**English:**
A UI button and command to add patient clothing to a player.

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
- Um das Skript zu nutzen, ersetze die Dateien gemäß der Ordnerstruktur im `osp_ambulance`-Verzeichnis.  
  Achte darauf, die bestehenden Dateien korrekt zu überschreiben.

**English:**
- To use this script, replace the files according to the folder structure in the `osp_ambulance` directory.  
  Ensure that you overwrite the existing files correctly.

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

## 🚀 Nutzung | Usage

**Deutsch:**
1. Stelle sicher, dass dein `osp_ambulance`-Ordner korrekt eingerichtet ist.  
2. Füge das Item `patientclothing` in deine Datenbank ein (falls gewünscht).  
3. Ersetze die Dateien gemäß der angegebenen Ordnerstruktur.  
4. Passe die Übersetzungen in `lang.lua` an deine Bedürfnisse an.  
5. Füge den Inhalt von `config.lua` in die vollständige `config.lua` der `osp_ambulance` Resource ein.  
6. Ersetze die `fxmanifest.lua` mit der `fxmanifest.lua` der `osp_ambulance` Resource.  

**English:**
1. Make sure your `osp_ambulance` folder is correctly set up.  
2. Add the item `patientclothing` to your database (if desired).  
3. Replace the files according to the provided folder structure.  
4. Adjust the translations in `lang.lua` as needed.  
5. Add the content of `config.lua` into the complete `config.lua` of the `osp_ambulance` resource.  
6. Replace the `fxmanifest.lua` with the `fxmanifest.lua` of the `osp_ambulance` resource.  

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
