# Neovim Keybinds Cheat Sheet

> **Leader key:** `Space`

---

## 📁 File Navigation

| Keybind | Action | Description |
|---------|--------|-------------|
| `<leader>e` | Toggle NvimTree | Open/close file tree sidebar |
| `-` | Oil float | Open parent directory in floating window |
| `<leader>ff` | Find files | Telescope fuzzy file finder |
| `<leader>fg` | Live grep | Search text across all files |
| `<leader>,` | Buffers | List and switch between open buffers |

### Oil (inside floating window)
| Keybind | Action |
|---------|--------|
| `<Esc>` | Close |
| `q` | Close |

---

## 🔍 LSP - Code Intelligence

### Hover & Documentation
| Keybind | Action | Description |
|---------|--------|-------------|
| `K` | Hover | Show type info & documentation |

### Go To
| Keybind | Action | Description |
|---------|--------|-------------|
| `gd` | Go to Definition | Jump to where symbol is defined |
| `gD` | Go to Declaration | Jump to declaration (C/C++) |
| `gt` | Go to Type Definition | Jump to type's definition |
| `gi` | Go to Implementation | Jump to implementation |
| `<leader>fr` | Find References | Show all usages in Telescope |

### Refactoring
| Keybind | Action | Description |
|---------|--------|-------------|
| `<leader>r` | Rename | Rename symbol across project |
| `<leader>ca` | Code Action | Show available code actions |
| `<leader>f` | Format | Format current buffer |

---

## 🐛 Diagnostics (Errors/Warnings)

| Keybind | Action | Description |
|---------|--------|-------------|
| `<leader>df` | Next diagnostic | Jump to next error/warning |
| `<leader>dp` | Previous diagnostic | Jump to previous error/warning |
| `<leader>dl` | Diagnostic list | Show all diagnostics in Telescope |
| `<leader>dt` | Toggle diagnostic float | Toggle floating diagnostic window |
| `<leader>dd` | Show diagnostic | Show line diagnostics in float |

---

## 🔧 Trouble (Advanced Diagnostics)

| Keybind | Action | Description |
|---------|--------|-------------|
| `<leader>xx` | Diagnostics | Toggle all diagnostics panel |
| `<leader>xX` | Buffer diagnostics | Toggle current buffer diagnostics |
| `<leader>cs` | Symbols | Toggle symbols outline |
| `<leader>cl` | LSP references | Toggle LSP definitions/references |
| `<leader>xL` | Location list | Toggle location list |
| `<leader>xQ` | Quickfix list | Toggle quickfix list |

---

## ✏️ Autocompletion (Insert Mode)

| Keybind | Action |
|---------|--------|
| `<C-n>` | Select next item |
| `<C-p>` | Select previous item |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |
| `<CR>` | Confirm selection |
| `<C-e>` | Abort/cancel |
| `<C-Space>` | Trigger completion |

---

## 💬 Comments

Using `Comment.nvim` (default keybinds):

| Keybind | Mode | Action |
|---------|------|--------|
| `gcc` | Normal | Toggle line comment |
| `gbc` | Normal | Toggle block comment |
| `gc` | Visual | Toggle line comment (selection) |
| `gb` | Visual | Toggle block comment (selection) |

---

## 📋 Quick Reference

```
Space + e     → File tree
Space + f     → Format
Space + ff    → Find files
Space + fg    → Search text
Space + ,     → Switch buffers
Space + r     → Rename
Space + ca    → Code actions
Space + fr    → Find references
K             → Hover docs
gd            → Go to definition
```
