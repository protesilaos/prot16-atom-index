#!/bin/bash

# A script to automate the list of Atom syntax themes and their corresponding git repositories

    # This program is free software: you can redistribute it and/or modify
    # it under the terms of the GNU General Public License as published by
    # the Free Software Foundation, either version 3 of the License, or
    # (at your option) any later version.

    # This program is distributed in the hope that it will be useful,
    # but WITHOUT ANY WARRANTY; without even the implied warranty of
    # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    # GNU General Public License for more details.

    # You should have received a copy of the GNU General Public License
    # along with this program.  If not, see <http://www.gnu.org/licenses/>.

# IMPORTANT Requires the main prot16 repo in the $HOME directory
# git clone git@github.com:protesilaos/prot16.git

rm -f $HOME/prot16-atom-index/README.md
touch $HOME/prot16-atom-index/README.md

echo "# Index of the Prot16 themes for the Atom editor

All Prot16 themes were originally developed for the Atom text editor. Each theme has two repositories on GitHub, for its light and dark variants, as well as the corresponding listings on the Atom website.

To install a theme from the terminal use either of the following commands (starting with \`$\`, though do not include that sign):

\`\`\`bash
# apm install {THEME-NAME}-syntax
# for the light variant
# Example below

$ apm install alto-syntax

# apm install {THEME-NAME}-dark-syntax
# for the dark variant
# Example below

$ apm install alto-dark-syntax
\`\`\`

## Full list of Atom packages" >> $HOME/prot16-atom-index/README.md

for scheme in $(cat $HOME/prot16/utils/data/prot16-items.txt)
do
    echo "
    <ul>
        <li>$scheme light at <a href="https://atom.io/themes/$scheme-syntax">Atom</a> directory.</li>
        <li>$scheme light <a href="https://github.com/protesilaos/$scheme-light-syntax">GitHub</a> repository.</li>
        <li>$scheme <em>dark</em> at <a href="https://atom.io/themes/$scheme-dark-syntax">Atom</a> directory.</li>
        <li>$scheme <em>dark</em> <a href="https://github.com/protesilaos/$scheme-dark-syntax">GitHub</a> repository.</li>
    </ul>" >> $HOME/prot16-atom-index/README.md
done
