<div>
  <h1 align="center">colors</h1>
  <h3 align="center">yet another color app</h3>
</div>

<br/>

<p align="center">
  <h5>Coming to AppCenter soon</h5>
</p>

<br/>

A color utility with everything you need.

## Building

You'll need the following dependencies to build:
* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and then change to the build directory and run `ninja` to build

    meson build
    cd build
    mesonconf -Dprefix=/usr
    ninja

To install, use `ninja install`, then execute with `com.github.btkostner.colors`

    sudo ninja install
    com.github.btkostner.colors

## Todo

- [ ] Make a super amazing color class
- [ ] Make a super amazing palette class
- [ ] Save / Load of palettes and colors
- [ ] Create smart variants from a single image
- [ ] Create a palette from an image
- [ ] Create an amazing color picker


## Ideas

##### Art window

A tall but narrow window that lists different colors in a palette. On click it
should look at your clipboard and try to parse the string to figure out a format
(rgb, rgba, hsv, etc) or fall back to a user selected setting, copying the
clicked color to the clipboard. Always on top.

```
+--------+
| Colors |
|        |
+--------+
|        |
|        |
+--------+
|        |
|        |
+--------+
|        |
|        |
+--------+
|        |
|        |
+--------+
```
