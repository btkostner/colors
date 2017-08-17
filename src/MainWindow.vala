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

public class MainWindow : Gtk.Window {

    public Gtk.Grid grid;

    public MainWindow (Gtk.Application application) {
        Object (
            application: application,
            height_request: 1024,
            icon_name: "com.github.btkostner.colors",
            resizable: true,
            title: _("Colors"),
            width_request: 128
        );
    }

    construct {
        grid = new Gtk.Grid();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.margin = 0;

        var color_one = new Color(128, 128, 128, 1.0);
        var color_tile_one = new ColorTile(color_one);
        grid.add (color_tile_one);

        add (grid);
        get_style_context ().add_class ("rounded");
    }

}
