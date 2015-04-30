MeuVim
======

Meus arquivos de configuração para o Vim.

Comecei montar esta configuração para Vim com a ideia de substituir o grandalhão NetBeans no dia-a-dia como desenvolvedor WEB.

Eu trabalho principalmente para web com Python, PHP, JavaScript, CSS e HTML.

Missão
------

Substituir todos os editores do mundo! muahuahuahau (risada malévola)

Como usar
---------

Interessado em usar esta configuração para o seu vim? Faz o seguinte:


 *  Clone do repositório do GitHub: `git clone git://github.com/InFog/meuvim.git`
   *  Ou baixe aqui: https://github.com/InFog/meuvim
 *  Coloque o conteúdo do projeto no diretório `~/.vim`
 *  Copie o arquivo `vimrc` para `~/.vimrc`
    * Ou faça um link, que fica bem melhor: `ln -s ~/.vim/vimrc ~/.vimrc`
 *  Crie o diretório ~/.vimundo para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Instale as dependências listadas abaixo.
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
 *  Para que os temas de cores funcionem corretamente é necessário ativar as 256 cores no terminal.
    * Para isso adicione `export TERM="xterm-256color"` no seu `~/.bashrc`, `~/.zshrc` ou o terminal de sua preferência.
    * Será necessário abrir um novo terminal.
 *  Use seu novo vim =)
 *  Também é possível usar este `vimrc` com o **Neo Vim**, basta renomear para `nvimrc` e mover o diretório para `.nvim`.
 *  Gosta do gVim? Aqui também tem um `gvimrc`, basta copiar ou fazer um link para `~/.gvimrc`
    * Este gvimrc basicamente remove todas as opções de menus e barras de rolagem.
 *  (Deve ser possível usar com o GVim no Windows ou no MacVim, mas aí é com você...)

Dicas importantes
-----------------

 *  Tenha uma boa motivação para usar o Vim, pois no começo é difícil, e você vai querer voltar para a sua IDE favorita.
 *  Você também pode usar este vimrc como inspiração para montar o seu próprio vimrc ;-)
 *  Tente aprender apenas um ou dois comandos novos por dia. Parece pouco, mas em um mês você já terá muitas ferramentas nas pontas dos dedos.
 *  Aprender a navegar usando h, j, k e l é importante, mas usar as setas é perfeitamente normal e aceitável.

Dependências
------------

Só algumas dependências para tudo funcionar certinho:

 *  **exuberant-ctags** para o Tagbar.
    * No Debian instale o pacote `exuberant-ctags`
    * No Fedora instale o pacote `ctags`
 *  Para o Tagbar funcionar bem com PHP, entre no diretório do `phpctags` (**bundle/tagbar-phpctags.vim**) e instale as dependencias usando o `make`.
 *  Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
    *  No Debian instale o pacote `vim-gnome` que resolve.
 *  `python-git`, no Debian
 *  Para as a barra de status `airline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/

Opções
------

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

PHPDoc : `,doc` para adicionar um trecho PHPDoc.

PHPMD : ' `,md` para rodar o Mass Detector. É necessário ter o PHPMD instalado.

Comandos úteis
--------------

 * `%` no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o **matchit** que faz o `%` também funcionar com tags html e outras linguagens.
     Detalhe que ele reconhece até a sintaxe alternativa para `if`, `foreach` e outros do `php`.
 * `tn` para abrir nova aba e `tc` para fechar a aba atual.
 * `,/` para limpar o destaque da pesquisa.
 * `,w` para remover os espaços em branco no final das linhas.
