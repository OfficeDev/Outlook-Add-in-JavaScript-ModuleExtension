# Outlook module extension billable hours sample
This Outlook 2016 for Windows add-in sample uses the new module extenstion point \<ExtensionPoint xsi:type="Module"> for Outlook. This code sample integrates a billable hours add-in with the built-in Outlook Mail, Calend, Tasks, etc. modules.

## Table of Contents
* [Change History](#change-history)
* [Prerequisites](#prerequisites)
* [Configure the project](#configure-the-project)
* [Run the project](#run-the-project)
* [Understand the code](#understand-the-code)
* [Questions and comments](#questions-and-comments)
* [Additional resources](#additional-resources)

## Change History
March 31, 2016:
* Published the first version of the sample

April 4, 2016:
* Updated the README file

## Prerequisites

* Outlook 2016 for Windows
* [NodeJS](https://nodejs.org/en) to serve the module extension
* [npm](https://www.npmjs.com/) to install dependencies. It comes with NodeJS
* [GitBash](http://www.git-scm.com/downloads) to run command line utilities
* Clone this repo to your local computer.

## Configure the project

You'll need to install a certificate to run this sample because add-in commands require HTTPS. Because add-in commands to not have a UI, you are not prompted to accept an invalid certificate.

1. Run ```./gen-cert.sh``` to create a certificate.
2. Double-click ```ca.crt``` and install it in your Trusted Root Certification Authorities store

Start a local HTTPS web server to serve the files for the module extension:

1. Install the package dependencies identified in packages.json by running ```npm install``` in the project root directory
2. Start the local server by running ```node server.js```

## Run the project

1. Start Outlook
2. Choose the File tab, and then choose Manage Add-ins
3. After the Add-in Manager opens, choose the "+" symbol, and then choose Add from a file
4. Choose Browse and then navigate to the directory that contains the sample
5. Select the module manifest (outlook-add-in-javascript-moduleextension.xml) and then click Open
6. Choose Next and then choose Install to install the module
7. Close the Module Manager

It may take Outlook a few moments to load the new module, but when it does you'll see your new module added to the navigation bar shortcuts. Using compact navigation, the shortcuts look like this:

![Shows add-in commands in the compact Outlook navigation bar.](/readme-images/Outlook-Compact-Navigation-Bar.png)

If you're not using compact navigation, the shortcuts will look like this:

![Shows a single module extension the the expanded navigation bar.](/readme-images/Outlook-Navigation-Bar.png)

Click either **Billable hours** or the module icon to open the module extension. Outlook will change
to show the module UI.

![Shows the user interface for the module extenstion.](/readme-images/Outlook-Billable-Hours-UI.png)

There are three buttons on the ribbon. Click one to change the billing rate, and the totals in the 
main UI will change to reflect the new rate. 

## Understand the code

The new module extension is enabled in your manifest file by setting the extension type to ```"Module"```. This is the [section of the manifest](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70) that you need to change:

    <!--New Extension Point - Module for a ModuleApp -->
        <ExtensionPoint xsi:type="Module">


## Questions and comments
We'd love to get your feedback on the Outlook-Add-in-JavaScript-ModuleExtension sample. You can send your feedback to us in the [Issues](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues) section of this repository.

Questions about Office 365 development in general should be posted to [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API). Make sure that your questions are tagged with [Office365] and [API].

## Additional resources
* [Module extension Outlook add-ins](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Office Add-ins platform overview](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Office 365 APIs documentation](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Microsoft Office 365 API Tools](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Office Dev Center](http://dev.office.com/)
* [Office 365 APIs starter projects and code samples](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## Copyright
Copyright (c) 2016 Microsoft. All rights reserved.

