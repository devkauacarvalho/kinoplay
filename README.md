# Projeto Kinoplay

Projeto desenvolvido como uma atividade do curso técnico Senac RJ.

## Sumário

* [Visão Geral](#visão-geral)
* [Funcionalidades](#funcionalidades)
* [Tecnologias Utilizadas](#tecnologias-utilizadas)
* [Instalação e Configuração](#instalação-e-configuração)
* [Uso](#uso)
* [Painel Administrativo](#painel-administrativo)
* [Banco de Dados](#banco-de-dados)
* [Contribuição](#contribuição)
* [Autores](#autores)

## Visão Geral

O Kinoplay é uma plataforma de streaming de filmes e séries, desenvolvida como projeto de curso técnico. Ele oferece funcionalidades de visualização de conteúdo, organização de listas de favoritos, pesquisa e um painel administrativo para gerenciamento de filmes e séries.

## Funcionalidades

* **Página Inicial Dinâmica:** Apresenta banners de destaque com integração Swiper JS para uma experiência de carrossel de conteúdo.
* **Catálogos de Filmes e Séries:** Seções dedicadas para explorar filmes e séries, com rolagem horizontal e botões de navegação.
* **Lista de Favoritos:** Permite aos usuários adicionar filmes e séries à sua lista pessoal.
* **Sistema de Autenticação:** Páginas de cadastro e login para gerenciamento de contas de usuário.
* **Funcionalidade de Pesquisa:** Permite buscar filmes por nome.
* **Painel Administrativo:** Interface para adicionar e gerenciar filmes e séries, incluindo links para capas e trailers.

## Tecnologias Utilizadas

* **Frontend:**
    * HTML5
    * CSS3
    * JavaScript
    * jQuery
    * Swiper JS (para carrosséis)
    * Remixicon (ícones)
    * Font Awesome (ícones)
    * Bootstrap (no painel administrativo)
* **Backend:**
    * PHP
    * MySQL (para o banco de dados)

## Instalação e Configuração

Para configurar o projeto em seu ambiente local, siga os passos abaixo:

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/devkauacarvalho/kinoplay.git](https://github.com/devkauacarvalho/kinoplay.git)
    cd kinoplay
    ```
2.  **Configuração do Servidor Web:**
    * Certifique-se de ter um ambiente de servidor web com PHP e MySQL configurados (ex: XAMPP, WAMP, MAMP, Docker).
3.  **Configuração do Banco de Dados:**
    * Crie um banco de dados MySQL chamado `kinoflix`.
    * Importe o schema do banco de dados utilizando um dos arquivos SQL fornecidos:
        * `db/kinoflix.sql`
        * `db/kinoflix (1).sql`
4.  **Configuração da Conexão PHP:**
    * Edite o arquivo `reglog/config.php` para corresponder às suas credenciais de banco de dados.

    ```php
    <?php
    session_start();
    // Altere 'root' e a senha vazia ('') para suas credenciais MySQL
    $conn = mysqli_connect("localhost","seu_usuario_mysql","sua_senha_mysql","kinoflix");
    
    if($conn === false){
        die("ERRO: Não foi possível conectar ao banco de dados. " . mysqli_connect_error());
    }
    ?>
    ```

## Uso

Após a instalação, acesse o projeto através do seu navegador, geralmente em `http://localhost/kinoplay/index.php` (assumindo que você clonou o repositório para uma pasta `kinoplay` dentro do diretório raiz do seu servidor web).

## Painel Administrativo

O painel administrativo permite gerenciar o conteúdo de filmes e séries.

* **Acesso:** Os arquivos do painel estão localizados na pasta `painel/`. Você pode acessá-los diretamente, por exemplo: `http://localhost/kinoplay/painel/filmes.html`.
* **Funcionalidades:** Permite inserir links de capa, trailers, títulos e sinopses.
* **Observação:** No momento, o painel é composto por arquivos HTML estáticos com JavaScript para preview de imagem. A integração com o banco de dados para salvar as informações de filmes e séries precisaria ser implementada usando PHP.

## Banco de Dados

O banco de dados `kinoflix` contém as seguintes tabelas principais:

* `cliente`: Armazena informações dos usuários (username, email, nome, senha, data de nascimento).
* `filmes`: Armazena detalhes dos filmes (nome, ano de lançamento, sinopse, imagem).
* `series`: Armazena detalhes das séries.
* Outras tabelas como `assinatura`, `elenco`, `endereço`, `faixa etaria`, `favoritos`, `genero`, `telefone` também estão definidas.

## Contribuição

Para contribuir com o projeto:

1.  Faça um fork do repositório.
2.  Crie uma nova branch para sua feature (`git checkout -b feature/minha-feature`).
3.  Faça suas alterações e commit-as (`git commit -m 'feat: minha nova feature'`).
4.  Envie para a branch (`git push origin feature/minha-feature`).
5.  Abra um Pull Request.

## Autores

* Kauã Carvalho Ribeiro
* Nilo
* Gabriel
* João Palacio
