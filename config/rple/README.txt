Copy the `generated_colors.json` to `custom_colors.json`.
`generated_colors.json` is never read, only written to on startup.
 If `custom_colors.json` exists, it will be used to set the colors of any block configured in it.
`custom_colors.json` does not act as an overlay, it acts as a definition.
If `custom_colors.json` does not have a block, it will not be configured.
Some mods may be implementing their own color values, and as such configurations may be provided by their authors.