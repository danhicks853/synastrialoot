# SynastriaLoot

SynastriaLoot is a World of Warcraft addon for Wrath of the Lich King (3.3.5) that provides advanced loot and attunement tracking for players. It is designed to help players and guilds efficiently manage loot tables, attunement requirements, and vendor lists across multiple zones and raid instances.

Atlas loot is REQUIRED at this time.

## Features
- Display loot tables for various zones, bosses, and vendors
- Attunement tracking and eligibility filtering
- Support for custom vendor/item lists
- Modular codebase for easy extension and maintenance
- Classic WoW and Wrath of the Lich King compatibility

## File Structure
- `main.lua` - Addon entry point and initialization
- `main_frame.lua` - UI logic for the main window
- `row.lua` - UI row rendering and event handling
- `loottables.lua` - Loot table definitions and management
- `vendor_armor.lua` - Vendor and armor item management
- `wrathofthelichking.lua` - Wrath-specific loot tables

## Getting Started
1. Copy the entire `synastrialoot` folder into your WoW AddOns directory (e.g., `World of Warcraft\Interface\AddOns\`).
2. Launch WoW and enable SynastriaLoot in the AddOns menu.
3. Use the in-game UI to browse loot, track attunements, and manage custom lists.

## Development
- All code is written in Lua and designed for WoW 3.3.5.
- No external dependencies required.
- Contributions and suggestions are welcome.

## License
MIT License. See LICENSE file for details.

---

For bug reports or feature requests, please open an issue on GitHub after the repository is published.
