---
page_type: sample
products:
- office-outlook
- office-365
languages:
- javascript
extensions:
  contentType: samples
  technologies:
  - Add-ins
  createdDate: 3/23/2016 3:48:52 PM
---
# Exemplo de horas faturáveis de extensões de módulo do Outlook
Este exemplo de suplemento do Outlook 2016 para Windows usa o novo ponto de extensão de módulo <ExtensionPoint xsi:type="Module"> do Outlook. Este exemplo de código integra um suplemento de horas faturáveis aos módulos internos do Outlook Email, Calendário, Tarefas etc.

## Sumário
* [Histórico de alterações](#change-history)
* [Pré-requisitos](#prerequisites)
* [Configurar o projeto](#configure-the-project)
* [Executar o projeto](#run-the-project)
* [Compreender o código](#understand-the-code)
* [Perguntas e comentários](#questions-and-comments)
* [Recursos adicionais](#additional-resources)

## Histórico de alterações
31 de março de 2016:
* Publicada a primeira versão da amostra

4 de abril de 2016:
* atualizado o arquivo LEIAME

## Pré-requisitos

* Outlook 2016 para Windows
* [NodeJS](https://nodejs.org/en) para atender à extensão do módulo
* [npm](https://www.npmjs.com/) para instalar as dependências. O suplemento vem com NodeJS.
* [GitBash](http://www.git-scm.com/downloads) para executar utilitários de linha de comando
* Clone este repositório em seu computador local.

## Configurar o projeto

Será necessário instalar um certificado para executar este exemplo porque os comandos de suplemento exigem HTTPS. Como os comandos de suplemento não têm uma IU, você não será solicitado a aceitar um certificado inválido.

1. Execute ```./gen-cert.sh``` para criar um certificado.
2. Clique duas vezes em ```AC. CRT``` e instale-o no repositório Autoridades de Certificação Confiáveis Raiz

Inicie um servidor Web HTTPS local para servir os arquivos para a extensão do módulo:

1. Instalar as dependências de pacote identificadas no pacote. JSON executando ```instalação npm``` no diretório raiz do projeto
2. Inicie o servidor local executando ```node server.js```

## Executar o projeto

1. Inicie o Outlook.
2. Escolha a guia arquivo e, em seguida, escolha Gerenciar suplementos
3. Depois que o Gerenciador de suplementos for aberto, escolha o símbolo "+" e, em seguida, escolha Adicionar de um arquivo
4. Escolha procurar e, em seguida, navegue até o diretório que contém a amostra
5. Selecione o manifesto do módulo (Outlook-Add-in-JavaScript-moduleextension. xml) e clique em abrir
6. Escolha avançar e, em seguida, escolha instalar para instalar o módulo
7. Fechar o Gerenciador de módulos

Pode levar algum tempo para que o Outlook carregue o novo módulo, mas, quando ele for exibido, o novo módulo será adicionado aos atalhos da barra de navegação. Usando a navegação compacta, os atalhos têm a seguinte aparência:

![Mostra os comandos do suplemento na barra de navegação Compact do Outlook.](/readme-images/Outlook-Compact-Navigation-Bar.png)

Se você não estiver usando a navegação compacta, os atalhos terão a seguinte aparência:

![Mostra uma extensão de módulo único na barra de navegação expandida.](/readme-images/Outlook-Navigation-Bar.png)

Clique em **Horas Faturáveis** ou no ícone do módulo para abrir a extensão do módulo.
O Outlook será alterado para mostrar a IU do módulo.

![Mostra a interface de usuário do módulo extenstion.](/readme-images/Outlook-Billable-Hours-UI.png)

Há três botões na faixa de opções. Clique em um para alterar a taxa de cobrança e os totais na interface
do usuário principal serão alterados para refletir a nova taxa. 

## Compreender o código

A nova extensão do módulo é habilitada em seu arquivo de manifesto Configurando o tipo de extensão para ```"Módulo"```. Esta é a [seção do manifesto](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70) que você precisa alterar:

    <!--novo ponto de extensão-módulo para um ModuleApp-->
        <ExtensionPoint xsi:type="Module">


## Perguntas e comentários
Gostaríamos de receber seus comentários sobre o suplemento Outlook-no-JavaScript-ModuleExtension. Você pode enviar comentários na seção [Problemas](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues) deste repositório.

Faça a postagem de perguntas sobre desenvolvimento do Office 365 em geral na página do [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Não deixe de marcar as perguntas com [Office365] e [API].

## Recursos adicionais
* [Suplementos de extensão de módulo do Outlook](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Visão geral da plataforma de Suplementos do Office](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Documentação de APIs do Office 365](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Ferramentas de API do Microsoft Office 365](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Centro de Desenvolvimento do Office](http://dev.office.com/)
* [Exemplos de código e projetos iniciais de APIs do Office 365](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## Direitos autorais
Copyright © 2016 Microsoft. Todos os direitos reservados.



Este projeto adotou o [Código de Conduta do Código Aberto da Microsoft](https://opensource.microsoft.com/codeofconduct/). Para saber mais, confira [Perguntas frequentes sobre o Código de Conduta](https://opensource.microsoft.com/codeofconduct/faq/) ou contate [opencode@microsoft.com](mailto:opencode@microsoft.com) se tiver outras dúvidas ou comentários.
