<%
Dim sUsername, sPassword
sUsername = "qi500"
sPassword = "3341997"

Dim aStyle()
Redim aStyle(20)
aStyle(1) = "standard650||||||office2003|||uploadfile/|||650|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||3|||0|||0|||||||||1|||0|||650px宽度界面下的标准工具栏按钮|||||||||0|||500|||300|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(2) = "qi500||||||vista1|||../uploadfiles/|||600|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||6000|||300|||500|||300|||500|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||600px宽度界面下的标准工具栏按钮(推荐)|||||||||0|||300|||120|||0|||版权所有...|||000000|||15|||宋体||||||0|||jpg|jpeg|||100|||000000|||1|||1|||gif|jpg|bmp|wmz|png|||500|||100|||1|||200|||50|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(3) = "standard550||||||office2003|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||550px宽度界面下的标准工具栏按钮(推荐)|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(4) = "standard500||||||office2003|||uploadfile/|||500|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||500px宽度界面下的标准工具栏按钮|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||0|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(5) = "full650||||||office2003|||uploadfile/|||650|||400|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||650px宽度界面下的所有功能按钮展示,功能按钮有可能重复|||1|||zh-cn|||0|||500|||300|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(6) = "mini500||||||office2003|||uploadfile/|||500|||300|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||500px宽度界面下的最简工具栏按钮,适合于邮件系统留言系统等只需最简单功能的应用|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(7) = "menu400||||||office2003|||uploadfile/|||400|||250|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||400px宽度,工具栏全部菜单按钮,所有功能,占位小|||1|||en|||0|||500|||300|||0|||版权所有...|||FF0000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(8) = "coolblue||||||office2003|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,office2003皮肤|||||||||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(9) = "gray||||||office2000|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,office2000皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(10) = "light||||||light1|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,light1皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(11) = "blue3||||||blue2|||/uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||1000|||1000|||1000|||1000|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,blue2皮肤|||||||||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||1000|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||1000|||1000|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(12) = "green||||||green1|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,green1皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(13) = "red||||||red1|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,red1皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(14) = "yellow||||||yellow1|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,yellow1皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(15) = "mini||||||office2003|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,下位框及菜单,全功能,占位小|||1|||zh-cn|||0|||500|||300|||0|||版权所有...|||FF0000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(16) = "popup||||||office2003|||uploadfile/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||V4.x版保留,standard550标配,office2003皮肤,弹窗模式调用|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0"
aStyle(17) = "blue1||||||blue1|||../uploadfile/|||600|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||flv|mp3|mp4|||gif|jpg|bmp|||9999999|||9999999|||9999999|||9999999|||9999999|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||600px宽度界面下的标准工具栏按钮(推荐)|||||||||0|||300|||120|||0|||版权所有...|||000000|||15|||宋体||||||0|||jpg|jpeg|||100|||000000|||1|||1|||gif|jpg|bmp|wmz|png|||9999999|||100|||1|||200|||50|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||2|||0"
aStyle(18) = "qi5002||||||vista1|||../uploadfiles/|||620|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||6000|||300|||500|||300|||500|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||600px宽度界面下的标准工具栏按钮(推荐)|||||||||0|||300|||120|||0|||版权所有...|||000000|||15|||宋体||||||0|||jpg|jpeg|||100|||000000|||1|||1|||gif|jpg|bmp|wmz|png|||500|||100|||1|||200|||50|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1||||||1|||0"
aStyle(19) = "qi5003||||||vista1|||../uploadfiles/|||450|||200|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|bmp|||6000|||300|||500|||300|||500|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||600px宽度界面下的标准工具栏按钮(推荐)|||||||||0|||300|||120|||0|||版权所有...|||000000|||15|||宋体||||||0|||jpg|jpeg|||100|||000000|||1|||1|||gif|jpg|bmp|wmz|png|||500|||100|||1|||200|||50|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1||||||2|||0"
aStyle(20) = "blue||||||blue2|||../uploadfile/|||600|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||flv|mp3|mp4|||gif|jpg|bmp|||9999999|||9999999|||9999999|||9999999|||9999999|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||600px宽度界面下的标准工具栏按钮(推荐)|||||||||0|||300|||120|||0|||版权所有...|||000000|||15|||宋体||||||0|||jpg|jpeg|||100|||000000|||1|||1|||gif|jpg|bmp|wmz|png|||9999999|||100|||1|||200|||50|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||2|||0"

Dim aToolbar()
Redim aToolbar(50)
aToolbar(1) = "1|||TBHandle|FormatBlock|FontName|FontSize|Cut|Copy|Paste|PasteText|PasteWord|Delete|RemoveFormat|TBSep|FindReplace|SpellCheck|TBSep|UnDo|ReDo|TBSep|SelectAll|UnSelect|TBSep|absolutePosition|zIndexBackward|zIndexForward|||Toolbar1|||1"
aToolbar(2) = "1|||TBHandle|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|ForeColor|BackColor|TBSep|BgColor|BackImage|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|TBSep|CreateLink|Anchor|Map|Unlink|||Toolbar2|||2"
aToolbar(3) = "1|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|BR|Paragraph|ParagraphAttr|TBSep|Template|Symbol|Emot|Art|NowDate|NowTime|Excel|Quote|TBSep|PrintBreak|Print|TBSep|ShowBorders|ZoomMenu|Maximize|About|||Toolbar3|||3"
aToolbar(4) = "2|||TBHandle|FormatBlock|FontName|FontSize|Cut|Copy|Paste|PasteText|PasteWord|TBSep|Delete|RemoveFormat|TBSep|FindReplace|TBSep|UnDo|ReDo|TBSep|SelectAll|UnSelect|TBSep|UpperCase|LowerCase|||工具栏1|||1"
aToolbar(5) = "2|||TBHandle|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|TBSep|CreateLink|Unlink|Map|Anchor|||工具栏2|||2"
aToolbar(6) = "2|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|TableMenu|FormMenu|TBSep|Paragraph|ParagraphAttr|TBSep|Template|Symbol|Emot|Art|Excel|NowDate|NowTime|TBSep|Quote|ShowBorders|TBSep|ZoomMenu|Maximize|PrintBreak|||工具栏3|||3"
aToolbar(7) = "3|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(8) = "3|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(9) = "3|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(10) = "4|||TBHandle|FontNameMenu|FontSizeMenu|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|UpperCase|LowerCase|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|OrderedList|UnOrderedList|Indent|Outdent|||工具栏1|||1"
aToolbar(11) = "4|||TBHandle|Cut|Copy|Paste|PasteText|PasteWord|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|ParagraphAttr|FormatBlockMenu|||工具栏2|||2"
aToolbar(12) = "4|||TBHandle|Image|Flash|Media|File|GalleryMenu|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|TableMenu|FormMenu|TBSep|Template|Symbol|Emot|Art|Excel|PrintBreak|Quote|ShowBorders|TBSep|ZoomMenu|Maximize|About|||工具栏3|||3"
aToolbar(13) = "5|||TBHandle|FormatBlock|FontName|FontSize|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|FindReplace|SpellCheck|TBSep|UnDo|ReDo|TBSep|SelectAll|UnSelect|TBSep|absolutePosition|zIndexBackward|zIndexForward|||Toolbar1|||1"
aToolbar(14) = "5|||TBHandle|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|ForeColor|BackColor|TBSep|BgColor|BackImage|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|TBSep|CreateLink|Anchor|Map|Unlink|||Toolbar2|||2"
aToolbar(15) = "5|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|BR|Paragraph|ParagraphAttr|TBSep|Symbol|Emot|Art|NowDate|NowTime|Excel|Quote|TBSep|PrintBreak|Print|TBSep|ShowBorders|ZoomMenu|Refresh|Maximize|About|||Toolbar3|||3"
aToolbar(16) = "5|||TBHandle|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FileMenu|TBSep|TableMenu|TableInsert|TableProp|TableCellProp|TableCellSplit|TableRowProp|TableRowInsertAbove|TableRowInsertBelow|TableRowMerge|TableRowSplit|TableRowDelete|TableColInsertLeft|TableColInsertRight|TableColMerge|TableColSplit|TableColDelete|TBSep|FormMenu|FormText|FormTextArea|FormRadio|FormCheckbox|FormDropdown|FormButton|||Toolbar4|||4"
aToolbar(17) = "5|||TBHandle|TBSep|GalleryMenu|GalleryImage|GalleryFlash|GalleryMedia|GalleryFile|TBSep|Code|EQ|TBSep|Big|Small|TBSep|ModeCode|ModeEdit|ModeText|ModeView|TBSep|SizePlus|SizeMinus|TBSep|ZoomSelect|TBSep|Template|FontSizeMenu|FontNameMenu|FormatBlockMenu|TBSep|Site|||Toolbar5|||5"
aToolbar(18) = "6|||TBHandle|Cut|Copy|Paste|TBSep|FontSizeMenu|FontNameMenu|TBSep|Bold|Italic|UnderLine|TBSep|JustifyLeft|JustifyCenter|JustifyRight|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|CreateLink|Unlink|TBSep|HorizontalRule|ForeColor|BackColor|TBSep|About|||工具栏1|||1"
aToolbar(19) = "7|||TBHandle|FontNameMenu|FontSizeMenu|FormatBlockMenu|TBSep|EditMenu|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FormMenu|TableMenu|FileMenu|GalleryMenu|TBSep|ZoomMenu|Maximize|About|||mini toolbar|||1"
aToolbar(20) = "8|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(21) = "8|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(22) = "8|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(23) = "9|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(24) = "9|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(25) = "9|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(26) = "10|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(27) = "10|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(28) = "10|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(29) = "11|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|TBSep|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(30) = "11|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(31) = "11|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|||工具栏3|||3"
aToolbar(32) = "12|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(33) = "12|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(34) = "12|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(35) = "13|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(36) = "13|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(37) = "13|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(38) = "14|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(39) = "14|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(40) = "14|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(41) = "15|||TBHandle|FontName|FontSize|TBSep|EditMenu|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FormMenu|TableMenu|FileMenu|GalleryMenu|FormatBlockMenu|ZoomMenu|TBSep|Maximize|About|||mini toolbar|||1"
aToolbar(42) = "16|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(43) = "16|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(44) = "16|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Save|About|||工具栏3|||3"
aToolbar(45) = "17|||TBHandle|FontName|FontSize|TBSep|TBSep|SelectAll|UnSelect|RemoveFormat|TBSep|Bold|Italic|UnderLine|StrikeThrough|TBSep|ForeColor|BackColor|TBSep|JustifyLeft|JustifyCenter|JustifyRight|OrderedList|UnOrderedList|ParagraphAttr|Emot|PasteWord|ImportWord|FindReplace|||工具栏1|||1"
aToolbar(46) = "17|||Image|Flash|Media|File|RemoteUpload|LocalUpload|CreateLink|Unlink|Map|Anchor|Excel|Emot|ImportExcel|Template|TableMenu|UnDo|ReDo|Cut|Copy|Paste|PasteText|Delete|SelectAll|UnSelect|||工具栏2|||2"
aToolbar(47) = "18|||TBHandle|FontName|FontSize|TBSep|TBSep|SelectAll|UnSelect|RemoveFormat|TBSep|Bold|Italic|UnderLine|StrikeThrough|TBSep|ForeColor|BackColor|TBSep|JustifyLeft|JustifyCenter|JustifyRight|OrderedList|UnOrderedList|RemoteUpload|LocalUpload|GalleryImage|Image|PrintBreak|||工具栏1|||1"
aToolbar(48) = "19|||TBHandle|FontName|FontSize|RemoveFormat|Bold|Italic|UnderLine|StrikeThrough|ForeColor|BackColor|TBSep|JustifyLeft|JustifyCenter|JustifyRight|CreateLink|Unlink|||工具栏1|||1"
aToolbar(49) = "20|||TBHandle|FontName|FontSize|TBSep|TBSep|SelectAll|UnSelect|RemoveFormat|TBSep|Bold|Italic|UnderLine|StrikeThrough|TBSep|ForeColor|BackColor|TBSep|JustifyLeft|JustifyCenter|JustifyRight|OrderedList|UnOrderedList|ParagraphAttr|Emot|PasteWord|ImportWord|FindReplace|||工具栏1|||1"
aToolbar(50) = "20|||Image|Flash|Media|File|RemoteUpload|LocalUpload|CreateLink|Unlink|Map|Anchor|Excel|Emot|ImportExcel|Template|TableMenu|UnDo|ReDo|Cut|Copy|Paste|PasteText|Delete|SelectAll|UnSelect|||工具栏2|||2"
%>