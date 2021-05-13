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
# Outlook 模块扩展计费工时示例
本 Outlook 2016 for Windows 加载项示例使用了 Outlook 的新模块扩展点 \<ExtensionPoint xsi:type="Module">。本代码示例将计费工时加载项与内置的 Outlook 邮件、日历和任务等模块相集成。

## 目录
* [修订记录](#change-history)
* [先决条件](#prerequisites)
* [配置项目](#configure-the-project)
* [运行项目](#run-the-project)
* [了解代码](#understand-the-code)
* [问题和意见](#questions-and-comments)
* [其他资源](#additional-resources)

## 修订记录
2016 年 3 月 31 日：
* 发布了本示例的第一个版本

2016 年 4 月 4 日：
* 更新了自述文件

## 先决条件

* Outlook 2016 for Windows
* [NodeJS](https://nodejs.org/en)，用于模块扩展
* [npm](https://www.npmjs.com/)，用于安装依赖项。随附于 NodeJS
* [GitBash](http://www.git-scm.com/downloads)，用于运行命令行实用工具
* 将此存储库克隆到本地计算机。

## 配置项目

需要安装证书来运行本示例，因为加载项命令需要 HTTPS。由于加载项命令没有 UI，因此系统不会提示你接受无效的证书。

1. 运行 ```./gen-cert.sh``` 以创建证书。
2. 双击 ```ca.crt``` 并将其安装在“受信任的根证书颁发机构”存储库中

启动本地 HTTPS Web 服务器以便为模块扩展提供文件：

1. 在项目根目录中运行 ```npm install``` 以安装 packages.json 中指定的包依赖项
2. 运行 ```node server.js``` 以启动本地服务器

## 运行项目

1. 启动 Outlook
2. 选择“文件”选项卡，然后选择“管理加载项”
3. 加载项管理器打开后，选择“+”符号，然后选择“从文件添加”
4. 选择“浏览”，然后导航到包含本示例的目录
5. 选择模块清单 (outlook-add-in-javascript-moduleextension.xml)，然后单击“打开”
6. 选择“下一步”，然后选择“安装”以安装模块
7. 关闭模块管理器

可能需要一些时间才能加载新模块，但在这种情况下，你将看到新模块已添加到导航栏快捷方式。使用紧凑导航方式时，快捷方式如下所示：

![在紧凑的 Outlook 导航栏中显示加载项命令。](/readme-images/Outlook-Compact-Navigation-Bar.png)

如果使用的不是紧凑导航方式，快捷方式将如下所示：

![在展开的导航栏中显示单个模块扩展。](/readme-images/Outlook-Navigation-Bar.png)

单击“**计费工时**”或模块图标即可打开模块扩展。
Outlook 将改为显示模块 UI。

![显示模块扩展的用户界面。](/readme-images/Outlook-Billable-Hours-UI.png)

功能区上有三个按钮。单击其中一个可更改计费费率，此时，
主 UI 中的总计将发生更改以反映新的费率。 

## 了解代码

通过将扩展类型设置为 ```"Module"``` 即可在清单文件中启用新的模块扩展。需要更改的[清单分区](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70)如下：

    <!--New Extension Point - Module for a ModuleApp -->
        <ExtensionPoint xsi:type="Module">


## 问题和意见
我们非常乐意倾听你对于 Outlook-Add-in-JavaScript-ModuleExtension 示例的反馈。你可以在此存储库中的[问题](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues)部分向我们发送反馈。

与 Office 365 开发相关的一般问题应发布到 [Stack Overflow](http://stackoverflow.com/questions/tagged/Office365+API)。确保你的问题使用了 [Office365] 和 [API] 标记。

## 其他资源
* [模块扩展 Outlook 加载项](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Office 加载项平台概述](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Office 365 API 文档](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Microsoft Office 365 API 工具](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Office 开发人员中心](http://dev.office.com/)
* [Office 365 API 初学者项目和代码示例](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## 版权信息
版权所有 (c) 2016 Microsoft。保留所有权利。



此项目已采用 [Microsoft 开放源代码行为准则](https://opensource.microsoft.com/codeofconduct/)。有关详细信息，请参阅[行为准则 FAQ](https://opensource.microsoft.com/codeofconduct/faq/)。如有其他任何问题或意见，也可联系 [opencode@microsoft.com](mailto:opencode@microsoft.com)。
