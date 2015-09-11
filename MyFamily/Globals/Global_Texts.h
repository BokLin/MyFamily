//
//  Global_Texts.h
//  MyFamily
//
//  Created by EvenTouch on 15/8/28.
//  Copyright (c) 2015年 Linbo. All rights reserved.
//

#ifndef MyFamily_Global_Texts_h
#define MyFamily_Global_Texts_h

#define kTableRegion            @"RegionTable"
#define kTableHoliday           @"HolidayTable"
#define kTableNotif             @"NotifTable"
#define kTableMessage           @"MessageTable"
#define kTableNoteGroup         @"NoteGroupTable"
#define kTableNote              @"NoteTable"
#define kTablePerson            @"PersonTable"
#define kTableRelation          @"RelationTable"
#define kTableTask              @"TaskTable"
#define kTableUser_Message      @"User_MessageTable"
#define kTableUser_NoteGroup    @"User_NoteGroupTable"
#define kTableUser_Note         @"User_NoteTable"
#define kTableUser_Notif        @"User_NotifTable"
#define kTableUser_Task         @"User_TaskTable"
#define kTableUser              @"UserTable"
#define kTableIndex             @"IndexTable"


/*
 A、希腊字母大写 ΑΒΓΔΕΖΗΘΙΚ∧ΜΝΞΟ∏Ρ∑ΤΥΦΧΨΩ
 B、希腊字母小写 α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ σ τ υ φ χ ψ ω
 C、俄文字母大写 АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ
 D、俄文字母小写 а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я
 E、注音符号 ㄅㄉㄓㄚㄞㄢㄦㄆㄊㄍㄐㄔㄗㄧㄛㄟㄣㄇㄋㄎㄑㄕㄘㄨㄜㄠㄤㄈㄏㄒㄖㄙㄩㄝㄡㄥ
 F、拼音 ā á ǎ à、ō ó ǒ ò、ê ē é ě è、ī í ǐ ì、ū ú ǔ ù、ǖ ǘ ǚ ǜ ü
 G、日文平假名 ぁぃぅぇぉかきくけこんさしすせそたちつってとゐなにぬねのはひふへほゑまみむめもゃゅょゎを
 H、日文片假名 ァィゥヴェォカヵキクケヶコサシスセソタチツッテトヰンナニヌネノハヒフヘホヱマミムメモャュョヮヲ
 I、标点符号 ˉˇ¨‘’々～‖∶”’‘｜〃〔〕《》「」『』．〖〗【【】（）〔〕｛｝
 J、数字序号 ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫ①②③④⑤⑥⑦⑧⑨⑩一二三四五六七八九十
 K、数学符号 ≈≡≠＝≤≥＜＞≮≯∷±＋－×÷／∫∮∝∞∧∨∑∏∪∩∈∵∴⊥‖∠⌒⊙≌∽√
 L、单位符号 °′〃＄￡￥‰％℃¤￠
 M、制表符 ┌┍┎┏┐┑┒┓—┄┈├┝┞┟┠┡┢┣|┆┊┬┭┮┯┰┱┲┳┼┽┾┿╀╂╁╃
 N、特殊符号 §№☆★○●◎◇◆□■△▲※→←↑↓〓＃＆＠＼＾＿
 O、补充收集 ⊙●○①⊕◎Θ⊙¤㊣▂ ▃ ▄ ▅ ▆ ▇ █ █ ■ ▓ 回 □ 〓≡ ╝╚╔ ╗╬ ═ ╓ ╩ ┠ ┨┯ ┷┏ ┓┗ ┛┳⊥『』┌♀◆◇◣◢◥▲▼△▽⊿
 */

/*
 ♠♣♧♡♥❤❥❣♂♀✲☀☼☾☽◐◑☺☻☎☏✿❀№÷★℃℉°◆◇⊙■□△▽¿½☯✡
 ㍿卍卐♂♀✚〓㎡♪♫♩♬㊚㊛囍㊒㊖Φ♀♂‖$@*&#※卍卐Ψ♫♬♭♩♪♯♮⌒¶∮‖€￡¥$
 ①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳⓪
 ❶❷❸❹❺❻❼❽❾❿⓫⓬⓭⓮⓯⓰⓱⓲⓳⓴
 ㊀㊁㊂㊃㊄㊅㊆㊇㊈㊉㈠㈡㈢㈣㈤㈥㈦㈧㈨㈩
 ⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇
 ⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛
 ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫⅰⅱⅲⅳⅴⅵⅶⅷⅸⅹ
 ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ
 ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ
 ⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵
 ㊣㊎㊍㊌㊋㊏㊐㊊㊚㊛㊤㊥㊦㊧㊨㊒㊞㊑㊒㊓㊔㊕㊖㊗㊘㊜㊝㊟㊠㊡㊢㊩㊪㊫㊬㊭㊮㊯㊰㊙㉿囍
 ㋀㋁㋂㋃㋄㋅㋆㋇㋈㋉㋊㋋
 ㏠㏡㏢㏣㏤㏥㏦㏧㏨㏩㏪㏫㏬㏭㏮㏯㏰㏱㏲㏳㏴㏵㏶㏷㏸㏹㏺㏻㏼㏽㏾
 ㍙㍚㍛㍜㍝㍞㍟㍠㍡㍢㍣㍤㍥㍦㍧㍨㍩㍪㍫㍬㍭㍮㍯㍰㍘
 ☰☲☱☴☵☶☳☷☯
 ↙↘↑↓←→↖↗√×
 零壹贰叁肆伍陆柒捌玖拾佰仟万亿吉太拍艾分厘毫微
 卍卐卄巜弍弎弐朤氺曱甴囍兀々〆のぁ〡〢〣〤〥〦〧〨〩
 ♚　♛　♝　♞　♜　♟　♔　♕　♗　♘　♖　♟
 */

#endif
