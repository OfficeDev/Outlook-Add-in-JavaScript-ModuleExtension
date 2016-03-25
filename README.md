# Outlook module extension sample : run your add-in from Outlook's navigation bar

**Table of contents**

* [Summary](#summary)
* [Required tools](#required-tools)
* [How to install certificates](#how-to-install-certificates)
* [How to set up the module extension](#how-to-set-up-the-module-extension)
* [How to run the module in Outlook 2016 for Windows](#how-to-run-the-module-in-outlook-2016-for-windows)
* [FAQ](#faq)
* [Questions and comments](#questions-and-comments)
* [Learn more](#learn-more)

## Summary

This Outlook 2016 for Windows add-in sample uses the new module extension point ```<ExtensionPoint xsi:type="Module">)``` for Outlook to 
integrate a billable hours add-in with Outlook's native add-ins module. 

![](/readme-images/Outlook-Navigation-Bar.png)

When you're finished with the sample, you'll know how to:

1. Use the ```<ExtensionPoint xsi:type="Module">``` element in the add-in's manifest file
2. Create an Outlook extension module with JavaScript
3. Implement an add-in command and run the command from the ribbon
4. Use the Office UI Fabric to create a native Outlook experience for your module
5. Install and run the module using Outlook's add-in manager

Definitions:

<d>
<dt>module extension</dt>
<dd> An Outlook 2016 for Windows add-in that is available from Outlook's navigation bar
and that runs in Outlook's native add-ins module.</dd>
<dt>add-in command</dt>
<dd>An extension to the Outlook UI that enables you to call functions within the script
that you define for your module.</dd>
</dl>

## Required tools

To use the billable hours sample in Outlook, the following are required.

* Outlook 2016 for Windows
* [NodeJS](https://nodejs.org/en) to serve the module extension
* [npm](https://www.npmjs.com/) to install the dependencies. It comes with NodeJS
* [Git Bash](http://www.git-scm.com/downloads) to run command line utilities
* Clone this repo to your local computer

> Note: Module extensions are only supported on Outlook 2016 for Windows. 

## How to install certificates

You'll need to install a certificate to run this sample since add-in commands require HTTPS. Since add-in
commands do not have a UI, you are not prompted to accept an invalid certificate. 

1. Run [./gen-cert.sh](#gen-cert.sh) to create a certificate
2. Double-click ```ca.crt``` and install it into your Trusted Root Certification Authorities store

## How to set up the module extension

1. Install the package dependencies identified in package.json by running ```npm install``` in the project's
   root directory.
2. Start a local NodeJS server by running ```node server.js```

## How to run the module in Outlook 2016 for Windows

1. Launch Outlook
2. Choose the **File** tab, and then choose **Manage Add-ins**.
3. After the add-in manager opens, choose the "**+**" symbol, and then choose **Add from a file**
4. Choose **Browse** and then navigate to the directory that contains the sample
5. Select the module manifest (outlook-add-in-javascript-moduleextension.xml) and then click **Open**
6. Choose **Next** and then choose **Install** to install the module
7. Close the module manager

It may take a few moments for Outlook to load the new module, but when it does you will see your new
module added to the navigation bar shortcuts. Using compact navigation, the shortcuts look like this:

![Shows add-in commands in the compact Outlook navigation bar.](/readme-images/Outlook-Compact-Navigation-Bar.png)

If you're not using compact navigation, the shortcuts will look like this:

![Shows a single module extension the the expanded navigation bar.](/readme-images/Outlook-Navigation-Bar.png)

Click either **Billable hours** or the module icon to open the module extension. Outlook will change
to show the module UI.

![Shows the user interface for the module extenstion.](/readme-images/Outlook-Billable-Hours-UI.png)

There are three buttons in the ribbon. Click one of them to change the billing rate, and the totals in the 
main UI will change to reflect the new rate. 

## FAQ

<dl>
<dt>Will module extensions work on Mac or iPad? </dt>
<dd>As of the publication of this sample, module extensions work
only in Outlook 2016 for Windows.</dd>
<dt>Why doesn't my module show up?</dt>
<dd>There are a couple of reasons. Most common while I was developing the sample was simply forgetting
to start the NodeJS server. Sometimes after removing and adding the module manifest file I needed to restart
Outlook to see the changes. If you see an empty UI with the message "Nothing to load" try a restart.</dd>
<dt>Why does the npm install command hang?</dt>
<dd>It probably isn't hung, it just takes a while on Windows.
</dl>

## Questions and comments

We'd love to get your feedback about the Outlook module extension sample. You can send your questions and 
suggestions to us in the issues section of this repository.

Questions about add-in development in general should be posted to Stack Overflow. Make sure that your 
questions or comments are tagged with [office-js], [outlook-addins], and [API]. We are watching these tags.

## Learn more

An Outlook module extension is just an add-in that runs in the main Outlook user interface. Here are some
more resources to help you create Outlook JavaScript based module extensions.

* [Module extension Outlook add-ins](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins.md)
* [Office Add-ins platform overview](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Office Add-in Server Authentication Sample for Node.js](https://github.com/OfficeDev/Office-Add-in-Nodejs-ServerAuth) - learn how use Azure and Google OAuth providers for authenticating add-in users.

## Copyright
Copyright (c) 2016 Microsoft. All rights reserved.