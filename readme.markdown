# MeuVim

## English

My config files for Vim.

"MeuVim" is Portuguese for "MyVim". I'm from Brazil and I speak Portuguese as my mother tongue (No, we don't speak Spanish in Brazil. Trust me, I know that).

My initial idea was to replace NetBeans as my IDE during my daily work as a web developer.

I use PHP, Python, Javascript, CSS and HTML.

### Mission

To replace all text editors in the world!

### How to use it

So you want to use my configs in you Vim? Ok, do the following:

 * Clone this repo: `git clone git://github.com/InFog/meuvim.git`
   * You can also get the zip here: https://github.com/InFog/meuvim
 * You should move the contents of this project to `~/.vim`
 * Copy the file `vimrc` to `~/.vimrc`
   * Or, better yet, use a link: `ln -s ~/.vim/vimrc ~/.vimrc`
 * Create the `~/.vimundo` dir for the persistent undo (it's magical, it will allow you to undo stuff when you close and reopen files)
 * Install the git submodules: `git submodule init` and `git submodule update` to install `vundle`
 * Install the dependencies listed below (*Dependencies*)
 * Start vim and run `:BundleInstall` to install the Bundles (Extensions)
 * In order to have nice colors on the terminal you need to activate 256 colors:
   * Add `export TERM="xterm-256color"` in your `~/.bashrc` or the `rc` for your terminal
   * Then you need to open a new terminal (or run the rc...)
 * All done, enjoy!
 * It's also possible to use this `vimrc` with **Neovim**. Check the Neovim section bellow to see how.
 * Do you like **gVim**? Try using `gvimrc` file in this project.
   * This `gvimrc` will remove most all GUI buttons, leaving just a terminal like window.
 * I tested my vimrc with vim on Mac, from command line, you know, and it worked pretty fine.
 * If you want to use these files in Windows or MacVim, then the configuration is up to you, good luck.

### Important tips

 * Having a good motivation to learn and use Vim is the key.
 * I recommend you read my vimrc and get inspired to build your own.
 * Try to learn only two or three new Vim commands per day. It doesn't seems too much, but by the end of one month you will already know more than 50 commands.
 * Learn how to move around with h, j, k and l. It's not mandatory and using the arrows is also ok.

### Vim and Eclipse

If you are using the Eclipse IDE and want to have some of the Vim Power at your fingertips you can try Vrapper, a Vim Emulator. It is not so good as the original Vim, but you can still have some of the Vim capabilities.

You can find Vrapper here: http://vrapper.sourceforge.net/documentation

Inside this repo there is also a `vrapperrc` file that you can copy to `~/.vrapperrc`.

Some other plugins to improve the "Vim feeling" inside Eclipse:

 * Relative Line Numbers http://matf.github.io/relativenumberruler/updatesite/

### IdeaVim the Vim Plugin for Jet Brains IDEs

If you are using some IDE from JetBrains and want to have some of the Vim Power at your fingertips you can try IdeaVim, a Vim Emulator. It is not so good as the original Vim, but you can still have some of the Vim capabilities.

You can find IdeaVim here: https://github.com/JetBrains/ideavim

Inside this repo there is also a `ideavimrc` file that you can copy/link to `~/.ideavimrc`.

### Neovim

This configuration works also for Neovim, you just need to link the `vimrc` file
to `~/.config/nvim/init.vim`.

Learn more about Neovim in their website: https://neovim.io/

### Dependencies

Only a few dependencies for everything to work fine:

 * **exuberant-ctags** for Tagbar.
    * For Debian install `exuberant-ctags`
    * For Fedora install `ctags`
    * For Mac you can try installing `ctags` via `homebrew`.
 * In order to have Tagbar working properly with PHP, go to the `phpctags` dir (**bundle/tagbar-phpctags.vim**) and install it's dependencies using `make`.
 * If you want the PHP autocomplete from `lvht/phpcd.vim` then go into **bundle/phpcd.vim** and run a `composer install`. It is magic.
 * To have Python autocomplete your Vim must have the **+python** flag.
    * For Debian just install the package `vim-gnome`.
 * `python-git`, for Debian
 * If you want the fancy stuff for your status bar you need those fonts: https://github.com/Lokaltog/powerline-fonts/

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
 * `,phpct` to generate the php ctags file.

## Português

Meus arquivos de configuração para o Vim.

Comecei montar esta configuração para Vim com a ideia de substituir o grandalhão NetBeans no dia-a-dia como desenvolvedor WEB.

Eu trabalho principalmente para web com Python, PHP, JavaScript, CSS e HTML.

### Missão

Substituir todos os editores do mundo! muahuahuahau (risada malévola)

### Como usar

Interessado em usar esta configuração para o seu vim? Faz o seguinte:


 *  Clone do repositório do GitHub: `git clone git://github.com/InFog/meuvim.git`
   *  Ou baixe aqui: https://github.com/InFog/meuvim
 *  Coloque o conteúdo do projeto no diretório `~/.vim`
 *  Copie o arquivo `vimrc` para `~/.vimrc`
    * Ou faça um link, que fica bem melhor: `ln -s ~/.vim/vimrc ~/.vimrc`
 *  Crie o diretório `~/.vimundo` para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Instale as dependências listadas abaixo.
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
 *  Para que os temas de cores funcionem corretamente é necessário ativar as 256 cores no terminal.
    * Para isso adicione `export TERM="xterm-256color"` no seu `~/.bashrc`, `~/.zshrc` ou o terminal de sua preferência.
    * Será necessário abrir um novo terminal.
 *  Use seu novo vim =)
 *  Também é possível usar este `vimrc` com o **Neovim**, confira a documentação para isso abaixo.
 *  Gosta do gVim? Aqui também tem um `gvimrc`, basta copiar ou fazer um link para `~/.gvimrc`
    * Este gvimrc basicamente remove todas as opções de menus e barras de rolagem.
 *  Eu testei este vimrc com o vim no Mac, via linha de comando, e funcionou decentemente.
 *  Deve ser possível usar com o GVim no Windows ou no MacVim, mas aí é com você...

### Dicas importantes

 *  Tenha uma boa motivação para usar o Vim, pois no começo é difícil, e você vai querer voltar para a sua IDE favorita.
 *  Você também pode usar este vimrc como inspiração para montar o seu próprio vimrc ;-)
 *  Tente aprender apenas um ou dois comandos novos por dia. Parece pouco, mas em um mês você já terá muitas ferramentas nas pontas dos dedos.
 *  Aprender a navegar usando h, j, k e l é importante, mas usar as setas é perfeitamente normal e aceitável.

### Vim e Eclipse

Se você está usando a IDE Eclipse e quer ter um pouco do poder do Vim nas pontas dos dedos, você pode testar o Vrapper, um emulador do Vim. Ele não é tão bom quanto o Vim original, mas quebra o galho para quando você ter ter as funcionalidades do Vim dentro do Eclise.

Você pode achar o Vrapper aqui: http://vrapper.sourceforge.net/documentation

Dentro deste repositório há também um arquivo `vrapperrc` que você pode copiar para `~/.vrapperrc`.

Alguns outros plugins para melhorar a sensação de "estou usando o Vim" dentro do Eclipse:

 * Relative Line Numbers http://matf.github.io/relativenumberruler/updatesite/

### IdeaVim o Plugin Vim para as IDEs da Jet Brains

Se você está usando alguma IDE da Jet Brains e quer ter um pouco do poder do Vim nas pontas dos dedos, você pode testar o IdeaVim, um emulador do Vim. Ele não é tão bom quanto o Vim original, mas quebra o galho para quando você ter ter as funcionalidades do Vim dentro do IntelliJ, do RubyMine ou do PHPStorm.

Você pode achar o IdeaVim aqui: https://github.com/JetBrains/ideavim

Dentro deste repositório há também um arquivo `ideavimrc` que você pode copiar ou fazer um link para `~/.ideavimrc`.

### Neovim

Esta configuração também funciona para o Neovim, basta fazer um link do arquivo
`vimrc` para `~/.config/nvim/init.vim`.

Saiba mais sobre o Neovim no site do projeto: Learn more about Neovim in their website: https://neovim.io/

### Dependências

Só algumas dependências para tudo funcionar certinho:

 *  **exuberant-ctags** para o Tagbar.
    * No Debian instale o pacote `exuberant-ctags`
    * No Fedora instale o pacote `ctags`
    * No Mac tente instalar o pacote `ctags` usando o `homebrew`
 *  Para o Tagbar funcionar bem com PHP, entre no diretório do `phpctags` (**bundle/tagbar-phpctags.vim**) e instale as dependencias usando o `make`.
 * Se você quiser o autocomplete do PHP do `lvht/phpcd.vim` então vá em **bundle/phpcd.vim** e rode um `composer install`. O funcionamento é bem interessante.
 *  Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
    *  No Debian instale o pacote `vim-gnome` que resolve.
 *  `python-git`, no Debian
 *  Para as a barra de status `airline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/

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
 * `,phpct` para gerar o arquivo de ctags para PHP.
