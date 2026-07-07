# Redwood Mono

Redwood Mono is a customized build of [Iosevka](https://github.com/be5invis/Iosevka)
to mimic [Berkeley Mono](https://usgraphics.com/products/berkeley-mono).

## Build

    ./build.sh

Requires Docker. Fonts are written to `dist/RedwoodMono/` in two flavours —
`TTF/` (hinted) and `TTF-Unhinted/` (unhinted), each with 7 weights x
upright/oblique = 14 files. On macOS, which largely ignores TrueType hinting,
the unhinted `TTF-Unhinted/` build is usually the better choice. The Iosevka
source version is pinned in `Iosevka-version.txt`; the glyph customization
lives in `private-build-plans.toml`.

## Known Issues

- ~~VS Code's built-in terminal may not render ligatures correctly. This appears to be
  a VS Code terminal rendering bug rather than a font issue, and is not fixed yet — if
  you know how to work around it, help is welcome.~~

## Credits

- [Iosevka](https://github.com/be5invis/Iosevka) by be5invis — the
  base font this build is generated from.
- [Ioskeley Mono](https://github.com/ahatem/IoskeleyMono) by ahatem — inspiration for
  many of the symbol, punctuation, and ligature choices.
- [Berkeley Mono](https://usgraphics.com/products/berkeley-mono) by U.S. Graphics
  Company — the design this build aims to mimic.

## License

Redwood Mono is licensed under the [SIL Open Font License 1.1](LICENSE), the same
license as the upstream Iosevka font it is built from.

See the [`LICENSE`](LICENSE) file for the full license text.
