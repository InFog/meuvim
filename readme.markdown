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
 *  Coloque o conteúdo do projeto no diretório ~/.vim
 *  Copie o arquivo vimrc para ~/.vimrc (Ou faça um link, que fica melhor: `ln -s ~/.vim/vimrc ~/.vimrc`)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
 *  Use seu novo vim =)
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

 *  **exuberant-ctags** para o TagList.
    * No Debian instale o pacote `exuberant-ctags`
 *  Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
    *  No Debian instale o pacote `vim-gnome` que resolve.
 *  `python-git`, no Debian
 *  Para as a barra de status `powerline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/

Opções
------

Snippets : Adicionei o plugin snipMate que tem snippets para várias linguagens. Adicionei algumas opções:

 * foreacht<tab>
   * Cria uma estrura `foreach` em um template html
 * echot<tab>
   * Cria uma estrutura `echo` em um template html
 * ift<tab>
   * Cria uma estrutura `if` em um template html

Buffer Explorer : Use `\be` no modo comando

NERDTree : Use o comando `,t`

TagList : Use o comando `,l`

 * `x` Expandir/retrair a janela do TagList
 * `<espaço>` Mostrar a assinatura do método sobre o cursor
 * `u` Atualizar a TagList

CtrlP : Pesquisa de arquivos e diretórios a partir da raiz do projeto, use o comando `,f`

 * `<ctrl+d>` Habilita/desabilita a pesquisa pelo nome do arquivo apenas

Grep : Pesquisa em arquivos a partir da raiz do projeto, use o comando `,g`

Autocomplete de funções do Python: ctrl + x, ctrl + o. Funciona super bem, mostra até a documentação.

PHPDoc : `,doc` para adicionar um trecho PHPDoc.

Sparkup: A função do Sparkup foi mapeada para `ctrl+d`. (Atualmente está sem o Sparkup...)

Comandos úteis
--------------

 * `%` no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o **matchit** que faz o `%` também funcionar com tags html e outras linguagens.
     Detalhe que ele reconhece até a sintaxe alternativa para `if`, `foreach` e outros do `php`.

Afazeres
--------

 *  Procurar algum plugin que complete nomes de métodos, funções e classes e mostre o PHPDoc.
    *  O TagList mostra funções, métodos, classes e variáveis, mas não segue o PHPDoc =( Sad, sad robot...
