# ⚔️ Valhalla.nvim

> *“He who configures his tools, commands his fate.”*  
> — Ancient Skald

Welcome, brave traveler. This repository holds the sacred runes of my personal **Neovim configuration** — forged in Lua, hardened in battle, and powered by the might of [`lazy.nvim`](https://github.com/folke/lazy.nvim). May your keystrokes echo through the halls of Valhalla.

---

## 🛠 Purpose

This repository exists to maintain **my personal Neovim setup**, tuned for speed, clarity, and power. Whether crafting spells in Lua or summoning syntax with Treesitter, this config is my blade and shield in the world of code.

---

## 🌌 Installation Guide (For Fresh Warriors)

### 1. Cleanse the Old Ways

If you have an existing config, back it up first:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
````

### 2. Clone the Runes of Power

Replace `your-username` with your GitHub username:

```bash
git clone https://github.com/your-username/nvim ~/.config/nvim
```

### 3. Enter the Gate

Open Neovim:

```bash
nvim
```

On first launch, [`lazy.nvim`](https://github.com/folke/lazy.nvim) will automatically install itself and begin summoning your plugins. Wait for the ritual to complete, then restart Neovim.

---

## ⚙️ Requirements from the Forge

To wield this configuration, you must have:

* **Neovim** version `>= 0.9`
* **Git** — for pulling the runes of code
* **Nerd Font** — for UI glyphs and icons
* **ripgrep (`rg`)** — for fast searching through realms
* **fd** — for swift file navigation
* **curl** — for plugin installation and updates

Install via your system’s package manager:

```bash
# Example for Debian/Ubuntu:
sudo apt install ripgrep fd-find curl git
```

---

## 🌲 Configuration Structure

```text
~/.config/nvim/
├── init.lua          # Entry point for Neovim
└── lua/
    ├── config/       # General settings, keymaps, options
    ├── plugins/      # Plugin specifications (used by lazy.nvim)
    └── themes/       # Optional UI customization
```

---

## 🧙 Features (Runes of Power)

* ⚡ **Lazy-loaded plugins** using `lazy.nvim`
* 🔮 **LSP support** through `nvim-lspconfig` and friends
* 🌌 **Telescope** for fuzzy finding across Midgard
* 🌿 **Treesitter** for advanced syntax highlighting and parsing
* 🔥 **Autocompletion** with `nvim-cmp` and sources
* 🧪 **Linting & formatting** using `null-ls.nvim` or `conform.nvim`
* 🧝‍♂️ **Custom keybindings** crafted for speed and precision
* 🌑 **Dark theme** worthy of a moonlit Viking raid

---

## 🛡 License

This configuration is released under the **MIT License**.
Even the gods honor open source.

---

## 📜 Final Words

> *“In code and keystrokes, may your will be done.”*

Skål.


