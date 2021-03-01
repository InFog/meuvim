# MeuVim

## English

My config files for Vim.

"MeuVim" is Portuguese for "MyVim". I'm from Brazil and I speak Portuguese as my mother tongue (No, we don't speak Spanish in Brazil. Trust me, I know that).

My initial idea was to replace NetBeans as my IDE during my daily work (it was 2011) as a web developer and I can say I achieved that.

I mostly use PHP, Python, Javascript, CSS and HTML.

### How to use it

So you want to use my configs in you Vim? Ok, do the following:

 * Clone this repo: `git clone git://github.com/InFog/meuvim.git`
   * You can also get the zip here: https://github.com/InFog/meuvim
 * You should move the contents of this repo into `~/.vim`
 * Link the `vimrc` to `~/.vimrc`: `ln -s ~/.vim/vimrc ~/.vimrc`
 * Create the `~/.vimundo` dir for the persistent undo (it's magical, it will allow you to undo stuff when you close and reopen files)
 * Install the git submodules: `git submodule init` and `git submodule update` to install `plug`, the plugin manager
 * Install the dependencies listed below (*Dependencies*)
 * Start vim and run `:PlugInstall` to install the Plugins (Extensions)
   * This currently depends on a couple commands needed for language support:
     * *composer* for PHP
     * *npm* for Javascript
     * *go* for Golang
 * In order to have nice colors on the terminal you need to activate 256 colors:
   * Add `export TERM="xterm-256color"` in your `~/.bashrc` or the `rc` for your terminal
   * Then you need to open a new terminal (or run the rc...)
 * All done, enjoy!
 * It's also possible to use this `vimrc` with **Neovim**. This is what I do, actually. Check the Neovim section bellow to see how.
 * I tested my vimrc with vim and neovim on Linux and Mac, from command line, you know, and it worked pretty fine.
 * If you want to use these files in Windows or MacVim, then the configuration is up to you, good luck.

### Important tips

 * Having a good motivation to learn and use Vim is the key.
 * I recommend you read my vimrc and get inspired to build your own.
 * Try to learn only two or three new Vim commands per day. It doesn't seems too much, but by the end of one month you will already know more than 50 commands.
 * Learn how to move around with h, j, k and l. It's not mandatory and using the arrows is also ok.

### Neovim

This configuration works also for Neovim, you just need to link the `vimrc` file
to `~/.config/nvim/init.vim`. But the repo should still be cloned into `~/.vim`.

Learn more about Neovim in their website: https://neovim.io/

### Dependencies

Only a few dependencies for everything to work fine:

 * **exuberant-ctags** for Tagbar.
    * For Debian install `exuberant-ctags`
    * For Fedora install `ctags`
    * For Mac you can try installing `ctags` via `homebrew`.
 * To have Python autocomplete your Vim must have the **+python** flag.
    * For Debian just install the package `vim-gnome`.
 * `python-git`, for Debian
 * If you want the fancy stuff for your status bar you need those fonts: https://github.com/Lokaltog/powerline-fonts/
 * `composer` for php
 * `npm` for javascript
 * `go` for Golang
   * It is good to have `$GOPATH` and `$GOBIN` set up. Also, add `$GOBIN` to your `$PATH`.
 * `java` (OpenJDK) and `graphviz` for PlantUML support.

### Options

Snippets : In this config there is a snippets plugin for several languages and I added a few options for PHP:

 * foreacht<tab>
   * Creates a `foreach` loop for a template
 * echot<tab>
   * Creates an `echo` for templates
 * ift<tab>
   * Creates an `if` for templates

Explore : to open the file explorer type `,t`

Tagbar : to open the tags list type `,l`

 * Some keys for Tagbar:
   * `x` Zoom in/out
   * `<space>` Shows tag prototype
   * `-` Hide the current fold
   * `+` Show the fold under the cursor

VDebug : It works with a few languages, but I use it with PHP, together with Xdebug. More information here: https://github.com/joonty/vdebug

Python autocomplete: ctrl + x, ctrl + o. Works very nice and shows even documentation

PHPMD : ' `,md` to run PHPMD (Mess Detector) (You need `phpmd` in your PATH)

### Useful commands

 * `%` in command mode navigates to the opening/closing symbol.
   * The **matchit** plugin will do the same for HTML tags and improves the matching for other languages
     It matches even the alternative syntax for `if`, `foreach` and others in `php`.
 * `tn` to open a new tab and `tc` or `tq` to close the current tab.
 * `,/` to clear the highlight of the current search.
 * `,w` to remove trailing spaces.

## Português

Meus arquivos de configuração para o Vim.

Comecei montar esta configuração para Vim com a ideia de substituir o grandalhão NetBeans no dia-a-dia como desenvolvedor WEB, isso em 2011, e posso dizer que o objetivo foi alcançado.

Eu trabalho principalmente para web com Python, PHP, JavaScript, CSS e HTML.

### Como usar

Tem interesse em usar esta configuração para o seu vim? Faz o seguinte:


 * Clone do repositório do GitHub: `git clone git://github.com/InFog/meuvim.git`
   * Ou baixe aqui: https://github.com/InFog/meuvim
 * Coloque o conteúdo do projeto no diretório `~/.vim`
 * Faça um link do arquivo de configuração: `ln -s ~/.vim/vimrc ~/.vimrc`
 * Crie o diretório `~/.vimundo` para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 * Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `plug`, esse é o gerenciador dos plugins
 * Instale as dependências listadas abaixo
 * Abra o vim (sem arquivos) e rode um `:PlugInstall`, ou chame assim: `vim +PlugInstall` para instalar os plugins.
   * Isso depende de alguns comandos estarem disponíveis no ambiente para dar suporte para diferentes linguagens:
     * *composer* php PHP
     * *npm* para Javascript
     * *go* para Golang
 * Para que os temas de cores funcionem corretamente é necessário ativar as 256 cores no terminal.
   * Para isso adicione `export TERM="xterm-256color"` no seu `~/.bashrc`, `~/.zshrc` ou o terminal de sua preferência.
   * Será necessário abrir um novo terminal.
 * Use seu novo vim =)
 * Também é possível usar este `vimrc` com o **Neovim**, isso é o que eu faço, confira a documentação para isso abaixo.
 * Eu testei este vimrc com o vim e o neovim no Linux no Mac, via linha de comando, e funcionou perfeitamente.
 * Deve ser possível usar com o GVim no Windows ou no MacVim, mas aí é com você...

### Dicas importantes

 *  Tenha uma boa motivação para usar o Vim, pois no começo é difícil, e você vai querer voltar para a sua IDE favorita.
 *  Você também pode usar este vimrc como inspiração para montar o seu próprio vimrc ;-)
 *  Tente aprender apenas um ou dois comandos novos por dia. Parece pouco, mas em um mês você já terá muitas ferramentas nas pontas dos dedos.
 *  Aprender a navegar usando h, j, k e l é importante, mas usar as setas é perfeitamente normal e aceitável.

### Neovim

Esta configuração também funciona para o Neovim, basta fazer um link do arquivo
`vimrc` para `~/.config/nvim/init.vim`.

Saiba mais sobre o Neovim no site do projeto: Learn more about Neovim in their website: https://neovim.io/

### Dependências

Só algumas dependências para tudo funcionar certinho:

 * **exuberant-ctags** para o Tagbar.
    * No Debian instale o pacote `exuberant-ctags`
    * No Fedora instale o pacote `ctags`
    * No Mac tente instalar o pacote `ctags` usando o `homebrew`
 * Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
   * No Debian instale o pacote `vim-gnome` que resolve.
 * `python-git`, no Debian
 * Para as a barra de status `airline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/
 * `composer` para php
 * `npm` para javascript
 * `go` para golang
   * É bom adicionar `$GOPATH` e `$GOBIN` no seu ambiente. Adicione a `$GOBIN` à `$PATH` também.
 * `java` (OpenJDK) e `graphviz` para suporte à PlantUML.

### Opções

Snippets : Adicionei o plugin snipMate que tem snippets para várias linguagens. Adicionei algumas opções:

 * foreacht<tab>
   * Cria uma estrura `foreach` em um template html
 * echot<tab>
   * Cria uma estrutura `echo` em um template html
 * ift<tab>
   * Cria uma estrutura `if` em um template html

Explore : Use o comando `,t`

Tagbar : Use o comando `,l`

 * Alguns atalhos do Tagbar:
   * `x` Expandir/retrair a janela
   * `<espaço>` Mostrar a assinatura do método sobre o cursor
   * `-` Para esconder o escopo atual
   * `+` Para expandir o escopo do método/classe sobre o cursor

VDebug : Funciona com algumas linguagens, mas eu uso para PHP, usando o Xdebug. Mais informações aqui: https://github.com/joonty/vdebug

Autocomplete de funções do Python: ctrl + x, ctrl + o. Funciona super bem, mostra até a documentação.

PHPMD : ' `,md` para rodar o Mess Detector. É necessário ter o PHPMD instalado.

### Comandos úteis

 * `%` no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o **matchit** que faz o `%` também funcionar com tags html e outras linguagens.
     Detalhe que ele reconhece até a sintaxe alternativa para `if`, `foreach` e outros do `php`.
 * `tn` para abrir nova aba e `tc` para fechar a aba atual.
 * `,/` para limpar o destaque da pesquisa.
 * `,w` para remover os espaços em branco no final das linhas.
