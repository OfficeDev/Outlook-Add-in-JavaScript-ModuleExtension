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
# Ejemplo Horas facturables de extensiones de módulo de Outlook
En este ejemplo de complemento de Outlook 2016 para Windows se usa el nuevo punto de extensión de módulo \\<ExtensionPoint xsi:type="Module"> para Outlook. En este ejemplo de código se incorpora un complemento de horas facturables con los módulos integrados en Outlook (Correo, Calendario, Tareas, etc.).

## Tabla de contenido
* [Historial de cambios](#change-history)
* [Requisitos previos](#prerequisites)
* [Configurar el proyecto](#configure-the-project)
* [Ejecutar el proyecto](#run-the-project)
* [Entender el código](#understand-the-code)
* [Preguntas y comentarios](#questions-and-comments)
* [Recursos adicionales](#additional-resources)

## Historial de cambios
31 de marzo de 2016:
* Se publicó la primera versión del ejemplo

4 de abril de 2016:
* Se actualizó el archivo README

## Requisitos previos

* Outlook 2016 para Windows
* [NodeJS](https://nodejs.org/en) para ofrecer la extensión de módulo
* [npm](https://www.npmjs.com/) para instalar las dependencias. Viene con NodeJS
* [GitBash](http://www.git-scm.com/downloads) para ejecutar utilidades de la línea de comandos
* Clonar este repositorio en el equipo local.

## Configurar el proyecto

Tendrá que instalar un certificado para ejecutar este ejemplo, ya que los comandos de complemento requieren HTTPS. Dado que los comandos de complemento no tienen una interfaz de usuario, no se le pedirá que acepte un certificado no válido.

1. Ejecute ```./gen-cert.sh``` para crear un certificado.
2. Haga doble clic en ```ca.crt``` e instálelo en el almacén de Entidades de certificación raíz de confianza

Inicie un servidor web HTTPS local para ofrecer los archivos para la extensión de módulo:

1. Instale las dependencias del paquete identificadas en package.json al ejecutar ```npm install``` en el directorio raíz del proyecto
2. Inicie el servidor local al ejecutar ```node server.js```

## Ejecutar el proyecto

1. Inicie Outlook
2. Seleccione la pestaña Archivo y después, elija Administrar complementos
3. Después de que el Administrador de complementos se abra, seleccione el símbolo "+" y, a continuación, elija Agregar desde un archivo
4. Elija Navegar y, a continuación, vaya al directorio que contiene el ejemplo
5. Seleccione el manifiesto del módulo (outlook-add-in-javascript-moduleextension.xml) y después, haga clic en Abrir
6. Elija Siguiente y, a continuación, seleccione Instalar para instalar el módulo
7. Cierre el Administrador de módulos

Puede que Outlook tarde unos minutos para cargar el nuevo módulo, pero cuando lo haga, lo verá agregado a los accesos directos de la barra de navegación. Con la navegación compacta, los accesos directos probablemente se verán así:

![Mostrar comandos de complemento en la barra de navegación compacta de Outlook.](/readme-images/Outlook-Compact-Navigation-Bar.png)

Si no usa la navegación compacta, los accesos directos probablemente tendrán este aspecto:

![Mostrar la extensión de un solo módulo en la barra de navegación expandida.](/readme-images/Outlook-Navigation-Bar.png)

Haga clic en **Horas facturables** o en el icono del módulo para abrir la extensión del módulo.
Outlook cambiará para mostrar la interfaz de usuario del módulo.

![Mostrar la interfaz de usuario de una extensión de módulo.](/readme-images/Outlook-Billable-Hours-UI.png)

Hay tres botones en la cinta de opciones. Haga clic en uno para cambiar la tasa de facturación y los totales en la interfaz
de usuario principal cambiarán para reflejar la nueva tasa. 

## Entender el código

La nueva extensión de módulo se habilita en su archivo de manifiesto al establecer el tipo de extensión en ```"Module"```. Esta es la [sección del manifiesto](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70) que necesita cambiar:

    <!--New Extension Point - Module for a ModuleApp -->
        <ExtensionPoint xsi:type="Module">


## Preguntas y comentarios
Nos encantaría recibir sus comentarios sobre el ejemplo Outlook-Add-in-JavaScript-ModuleExtension. Puede enviarnos comentarios en la sección [Problemas](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues) de este repositorio.

Las preguntas sobre el desarrollo de Office 365 en general deben publicarse en [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Asegúrese de que sus preguntas tienen las etiquetas [Office365] y [API].

## Recursos adicionales
* [Complementos de extensión de módulo de Outlook](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Información general sobre la plataforma de complementos de Office](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Documentación de las API de Office 365](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Herramientas de API de Microsoft Office 365](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Centro para desarrolladores de Office](http://dev.office.com/)
* [Proyectos de inicio de las API de Office 365 y ejemplos de código](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## Copyright
Copyright (c) 2016 Microsoft. Todos los derechos reservados.



Este proyecto ha adoptado el [Código de conducta de código abierto de Microsoft](https://opensource.microsoft.com/codeofconduct/). Para obtener más información, vea [Preguntas frecuentes sobre el código de conducta](https://opensource.microsoft.com/codeofconduct/faq/) o póngase en contacto con [opencode@microsoft.com](mailto:opencode@microsoft.com) si tiene otras preguntas o comentarios.
