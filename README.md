<p align="center">
  <a href="https://github.com/swiftly-solution/swiftly">
    <img src="https://cdn.swiftlycs2.net/swiftly-logo.png" alt="SwiftlyLogo" width="80" height="80">
  </a>

  <h3 align="center">[Swiftly] Menu Builder</h3>

  <p align="center">
    A simple plugin for Swiftly that implements simple menu builder from json file.
    <br/>
  </p>
</p>

<p align="center">
  <img src="https://img.shields.io/github/downloads/m3ntorsky/simple-menu/total" alt="Downloads"> 
  <img src="https://img.shields.io/github/contributors/m3ntorsky/simple-menu?color=dark-green" alt="Contributors">
  <img src="https://img.shields.io/github/issues/m3ntorsky/simple-menu" alt="Issues">
  <img src="https://img.shields.io/github/license/m3ntorsky/simple-menu" alt="License">
</p>

---
### Installation 👀

1. Download the newest [release](https://github.com/m3ntorsky/simple-menu/releases).
2. Everything is drag & drop, so I think you can do it!

### Configuring the plugin 🧐

* After installing the plugin, you can configuare menus in `addons/swiftly/configs/plugins/simple-menu.json`
```json
{
    "menus": {
        // Main container for all menus
        "test": { // Name of the first menu (inkove with command !test or sw_test)
            "title": "Test Menu", // The title displayed for the menu
            "color": "ff2131", // Color code for the menu, in hexadecimal
            "items": [ // List of items within the menu
                {
                    "displayName": "say Hello", // Text displayed for the menu item
                    "openmenu": "message", // Action to perform when the item is selected (show a message)
                    "value": "Hello from test menu" // The content of the message displayed
                },
                {
                    "displayName": "Go to Menu2", // Text displayed for the next menu item
                    "openmenu": "command", // Action to perform when this item is selected (navigate to another command)
                    "value": "sw_test2" // The command or reference to the next menu to open
                }
            ]
        },
        "test2": { // Name of the first menu (inkove with command !test2 or sw_test2)
            "title": "Test2 Menu", // The title displayed for the second menu
            "color": "ff2131", // Color code for the second menu, same as the first
            "items": [ // List of items within the second menu
                {
                    "displayName": "say Hello", // Text displayed for this menu item
                    "openmenu": "message", // Action to perform when the item is selected (show a message)
                    "value": "Hello from test2 menu" // The content of the message displayed
                },
                {
                    "displayName": "Go to Menu1", // Text displayed for the next menu item
                    "openmenu": "command", // Action to perform when this item is selected (navigate to another command)
                    "value": "sw_test" // The command or reference to go back to the first menu
                }
            ]
        }
    }
}
```
### Creating A Pull Request 😃

1. Fork the Project
2. Create your Feature Branch
3. Commit your Changes
4. Push to the Branch
5. Open a Pull Request

### Have ideas/Found bugs? 💡
Join [Swiftly Discord Server](https://swiftlycs2.net/discord) and send a message in the topic from `📕╎plugins-sharing` of this plugin!

---
