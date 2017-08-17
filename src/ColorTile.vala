/**
 * Copyright (c) 2017 Blake Kostner (https://btkostner.io)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 */

public class ColorTile : Gtk.Grid {

    private const string STYLES = """
        @define-color colorForeground %s;
        @define-color colorBackground %s;
    """;

    public Color color { get; construct; }

    public ColorTile (Color color) {
        Object (
            color: color,
            height_request: 128,
            width_request: 128,
            margin: 0
        );
    }

    construct {
        var label = new Gtk.Label ("<small><b>%s</b></small>".printf (color.to_rgba ()));
        label.use_markup = true;
        add (label);

        halign = Gtk.Align.CENTER;
        valign = Gtk.Align.CENTER;
        orientation = Gtk.Orientation.VERTICAL;
        get_style_context ().add_class ("color-label");

        update_colors ();
    }

    public void update_colors () {
        var provider = new Gtk.CssProvider ();
        try {
            var style = STYLES.printf ("#fff", color.to_rgb ());
            provider.load_from_data (style, style.length);

            get_style_context ().add_provider (provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
        } catch (GLib.Error e) {
            return;
        }
    }

}
