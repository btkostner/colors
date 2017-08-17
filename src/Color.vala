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

public class Color : Granite.Drawing.Color {

    public Color (double R, double G, double B, double A) {
        Object ();
    }

    public string to_rgb () {
        int r = (int) Math.floor (R * 256);
        int g = (int) Math.floor (G * 256);
        int b = (int) Math.floor (B * 256);

        debug ("rgb(%f, %f, %f)", r, g, b);

        return "rgb(%f, %f, %f)".printf (r, g, b);
    }

    public string to_rgba () {
        int r = (int) Math.floor (R * 256);
        int g = (int) Math.floor (G * 256);
        int b = (int) Math.floor (B * 256);
        double a = Math.round (A);

        debug ("rgb(%d, %d, %d, %f)", r, g, b, a);

        return "rgba(%d, %d, %d, %f)".printf(r, g, b, a);
    }

}
