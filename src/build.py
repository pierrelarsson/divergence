#!/usr/bin/python3

import sys
import yaml
import jinja2

class XtermColors(object):
    increments = (0, 95, 135, 175, 215, 255)
    def __init__(self):
        self.palette = {}
        i = 16
        for r in self.increments:
            for g in self.increments:
                for b in self.increments:
                    self.palette[(r,g,b)] = i
                    i += 1
        for i in range(232,256):
            rgb = i%232*10+8
            self.palette[(rgb,rgb,rgb)] = i

    def index(self, rgb, strict=True):
        try:
            return self.palette[tuple(rgb)]
        except KeyError:
            if strict: raise
            return ''

    def fg(self, rgb, bold=False):
        return "{1};38;5;{0}".format(self.index(rgb), int(bold))

    def bg(self, rgb, bold=False):
        return "{1};48;5;{0}".format(self.index(rgb), int(bold))

def rgb_to_dec(value, separator=","):
    return separator.join(map(str, value))

def rgb_to_hex(value, separator=""):
    return separator.join(map("{0:02x}".format, value))

def main():
    xc = XtermColors()
    j2 = jinja2.Environment(
        loader = jinja2.FileSystemLoader('./templates'),
        keep_trailing_newline = True,
        undefined = jinja2.StrictUndefined,
    )
    j2.filters['dec'] = rgb_to_dec
    j2.filters['hex'] = rgb_to_hex
    j2.filters['term'] = xc.index
    j2.filters['termfg'] = xc.fg
    j2.filters['termbg'] = xc.bg

    colors = {}
    with open('colors.yaml') as fh:
        colors = yaml.load(fh, Loader=yaml.SafeLoader)

    with open('map.yaml') as fh:
        for color, c in yaml.load(fh, Loader=yaml.SafeLoader).items():
            for mix, m in c.items():
                for ref in m:
                    p = colors
                    for key in ref.split('.'):
                        lp = p
                        p = p.setdefault(key,{})
                    lp[key] = colors[color][mix]

    for template in j2.list_templates(extensions=None):
        sys.stderr.write("{0}\n".format(template))
        with open("../{0}".format(template), 'w') as fh:
            fh.write(j2.get_template(template).render(colors))

if __name__ == "__main__":
    main()
