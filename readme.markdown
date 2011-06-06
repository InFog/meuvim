MeuVim
======

Meus arquivos de configuração para o Vim.

Comecei montar esse Vim para tentar substituir o grandalhão NetBeans no dia-a-dia como desenvolvedor WEB.

Missão
------

Substituir todos os editores do mundo! muahuahuahau

Como usar
---------

Interessado em usar esta configuração para o seu vim? Faz o seguinte:


 *  Clone do repositório do GitHub: git clone git://github.com/InFog/meuvim.git
   *  Ou baixe aqui: https://github.com/InFog/meuvim
 *  Coloque o conteúdo do projeto no diretório ~/.vim
 *  Copie o arquivo vimrc para ~/.vimrc
 *  Use seu novo vim =)


Opções
------

Snippets : Adicionei o plugin snipMate que tem snippets para várias linguagens. Adicionei algumas opções:


 *  ci\_controller<tab>
   * Cria a estrutura básica para um controller CI\_Controller
 *  ci\_model<tab>
   * Cria a estrutura básica de uma model CI\_Model
 * foreacht<tab>
   * Cria uma estrura *foreach* em um template html
 * echot<tab>
   * Cria uma estrutura *echo* em um template html
 * ift<tab>
   * Cria uma estrutura *if* em um template html

NERDTree : Use a tecla F5

TagList  : Use a tecla F6

PHPDoc : *ctrl+l* para adicionar um trecho PHPDoc

Identação de todo o arquivo: *ctrl+i* para corrigir a identação de todo um arquivo (testei com PHP)

Comandos úteis
--------------

 * *%* no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o matchit que faz o *%* também funcionar com tags html e outras linguagens. Detalhe que ele reconhece até a sintaxe alternativa para *if*, *foreach* e outros do *php*.

Afazeres
--------

 *  Procurar algum plugin que complete nomes de funções em classes e mostre o PHPDoc.
 *  O TagList mostra funções, métodos, classes e variáveis, mas não segue o PHPDoc =( Sad, sad robot...
