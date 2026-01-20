
# Shugyosha Protocol

> A cyber-samurai inspired **tmux routine starter plugin** to kick off your sessions with intention, focus, and style.

---

## 🚀 What is Shugyosha Protocol?

Shugyosha Protocol helps you start your tmux sessions like a wandering war student — setting your daily intention, running focus rituals, and locking down distractions with a sci-fi flair.

With prompts for intention, hydration, caffeine, breathing, and a battle-ready checklist, this plugin turns your terminal into a ritual chamber.

---

## 🎯 Features

- Centered, styled prompts using [gum](https://github.com/charmbracelet/gum) with your favorite cyberpunk color palette  
- Interactive session intention input  
- Hydration and caffeine status checklists  
- Cortisol reduction breathing protocol  
- Distraction lockdown with animated spinner  
- Logs session intention and notes in a spacey bitácora  
- Extensible and open source  

---

## ⚡️ Installation

### Prerequisites

- [tmux](https://github.com/tmux/tmux) (version 3.0+ recommended)  
- [gum](https://github.com/charmbracelet/gum) (for styled prompts)  

### Install with [TPM (Tmux Plugin Manager)](https://github.com/tmux-plugins/tpm)

Add this line to your `.tmux.conf` plugins section:

```tmux
set -g @plugin 'Hz300/shugyosha-protocol'
```

Reload tmux config and install plugin:

```bash
tmux source ~/.tmux.conf
# Then press prefix + I (capital I) inside tmux
```

---

## 🚦 Usage

- Trigger the protocol inside any tmux pane by running:

```bash
shugyosha-protocol
```

- Follow the prompts to set your intention and run your focus routine.  
- Your notes and session intentions are saved in `~/.shugyosha_protocol/stars.md` for later review.

---

## 🛠 Development

Clone the repo and link the script for local testing:

```bash
git clone https://github.com/hz300/shugyosha-protocol.git
ln -s $(pwd)/shugyosha-protocol.sh ~/.tmux/plugins/shugyosha-protocol/shugyosha-protocol
```

Run the script directly:

```bash
./shugyosha-protocol.sh
```

---

## 🎨 Color Palette

- Gold: `#a67d43`  
- Alert Red: `#ad0013`  
- Background: `#121312`  

---

## 🤝 Contributing

Feel free to open issues or PRs!  
May the wandering warrior spirit guide your code.

---

## 📜 License

MIT License © 2025 Your Name

---

*“Nunca te apartes del camino” — T
