local snap = require'snap'
local file = snap.config.file:with {reverse = true, suffix = ">>", consumer = "fzy"}
local vimgrep = snap.config.vimgrep:with {reverse = true, suffix = ">>", limit = 50000}
snap.maps {
  {"<C-P>", file {producer = "ripgrep.file", args = {'--hidden', '--iglob', '!.git/*'}}},
  {"<C-B>", snap.config.file {producer = "vim.buffer"}},
  {"<C-F>", vimgrep {}},
}