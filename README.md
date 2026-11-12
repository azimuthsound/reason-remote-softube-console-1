# Softube Console 1 — Reason Remote Codecs

Deprecated Reason Remote files for using the Softube Console 1 as a channel-strip controller for Reason's Main Mixer. No longer in development; kept here as an archive.

The codec is based on the Console 1 Remote codec by Birgit Jauernig, which I modified. The remote maps are my own work.

There are **two variants**, each a separate surface in Reason. Install one or both:

| Folder | Surface in Reason | What it does |
|--------|-------------------|--------------|
| `Mixer only - 20 Channels/` | Softube · Console 1 - 20 Channel | Mixer only: the 20 track buttons each pick one of 20 mixer channels to edit. |
| `Mixer and effects/` | Softube · Console 1 | Mixer control plus control of a set of effects devices. |

Both use the same codec (`.lua`); only the stub, picture and map differ. Every Console 1 section is mapped to the matching part of Reason's SSL-style channel strip: Input (HPF/LPF, input gain, phase, meters), Shape (gate), Equalizer (4 bands), Compressor, and Output (level, pan, width, mute, solo, VU meters). Preset → Undo; Page Up/Down → next/previous bank of channels.

## Mixer only — 20 channels

- **Select Track 1–20** choose which of 20 channels (in the current bank) the Console 1 edits, so the knobs always follow the selected track.
- **Track Copy** switches to a **Master** layer: master bus compressor (threshold, ratio, attack, release, make-up, on, gain-reduction meter), Master Level, Control Room Level, master meters, master insert Rotary 1–4 and insert settings.
- **Track Group** switches to a **Mute** layer: Select Track 1–20 mute channels 1–20.
- In the Master and Mute layers, Mute / Solo → All Mutes Off / All Solos Off.

## Mixer and effects

**Reason Master Section** (one channel at a time; Page Up/Down moves through the channels)
- Normal: the full channel strip, as above.
- **Mute** / **Solo** layers: Select Track 1–20 mute or solo channels 1–20.
- **Effects** layer (Display Mode): EQ knobs → FX1–8 send levels, Select Track 1–8 → FX1–8 send on, gate knobs and Select Track 17–20 → the channel's insert Rotary 1–4 / Button 1–4, gate button → bypass insert FX, Filters to Compressor / Phase Invert → previous / next insert FX patch.

**Reason Main Mixer Channel** (when a mixer channel is selected): the full channel strip for that channel, Drive → FX1 send, Parallel Dry/Wet → insert Rotary 1.

**Effects devices** (when the device is selected): the matching Console 1 section controls the device.

| Type | Devices |
|------|---------|
| Combinator | All Console 1 controls → Rotary 1–26 and Button 1–17; Page Up/Down → patch |
| Compressors | COMP-01, MClass Compressor, Channel Dynamics, kiloHearts Compressor, FXpansion DCAM ChanComp, Cakewalk RE-2A, Synapse Audio RE-160, Red Rock Sound C1L1 |
| EQs | MClass Equalizer, PEQ-2, Channel EQ, kiloHearts 3-Band EQ, u-he Uhbik-Q, Selig Audio Coloring EQ, Synapse Audio GQ-7, Rob Papen RP-EQ |
| Distortion | Scream 4, Pulveriser, D-11, Rob Papen RP-Distort |

## Install

Pick a variant (or both) and copy its files:

1. Copy the `.luacodec`, `.lua` and `.png` files to the `Remote/Codecs/Lua Codecs/Softube/` folder.
2. Copy the `.remotemap` file to the `Remote/Maps/Softube/` folder.
3. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: Softube, Model: Console 1 or Console 1 - 20 Channel).

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Credits

Original Console 1 Remote codec by Birgit Jauernig (2016). Modified codec and remote maps by azimuthsound. No licence is given for this repository, because the codec builds on someone else's work.
