WebsterSearch
=============
A Perl script to search Noah Webster's classic 1913 dictionary and print
any matching entries to standard output.

    webster-search.pl <search-term>

 Example:

    $ ./webster-search.pl baseball
    BASEBALL
    Base"ball", n.

    1. A game of ball, so called from the bases or bounds ( four in
    number) which designate the circuit which each player must endeavor
    to make after striking the ball.

    2. The ball used in this game.


Vim installation
----------------
If you use vim-plug:

```vim
Plug 'dnmfarrell/WebsterSearch'
```

or download the plugin:

    $ mkdir ~/.vim/plugin
    $ cd ~/.vim/plugin
    $ git clone git@github.com:dnmfarrell/WebsterSearch webster-search

Update .vimrc to map `<leader>d` to call webster-search on the word under the
cursor, or visually highlighted:

    $ echo "nnoremap <leader>d :WebsterSearch(expand('<cWORD>'))<cr>" >> ~/.vimrc
    $ echo "vnoremap <leader>d :<c-u>WebsterSearch(@*)<cr>" >> ~/.vimrc


Copyright (c) 2019 David Farrell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
