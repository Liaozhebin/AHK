/*
�ҵ��ճ���ݼ� daily.ahk
by ���
Blog��withlihui.com
Email��withlihui@gmail.com
Github��github.com/greyli

Ŀ¼
һ���򿪳���������ļ�����ҳ
�������ͳ����ַ�
�������ò�������ϼ�
�ġ�С����
*/


;;;;;;;; һ���򿪳���������ļ����ļ��к���ҳ

;;;; 1������

;QQ Lite
:://qq::
Run D:\Program Files (x86)\Tencent\QQLite\Bin\QQ.exe
return

;Picasa 3
:://pi::
Run C:\Program Files (x86)\Google\Picasa3\Picasa3.exe
return

;Chrome
:://c::
IfWinExist ahk_exe chrome.exe
WinActivate
else
Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
return

;Steam
:://st::
Run D:\Program Files (x86)\Steam\Steam.exe
return

;PotPlayer
:://pl::
IfWinExist ahk_exe PotPlayerMini64.exe
WinActivate
else
Run C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
return

;Notepad++
:://n::
Run D:\Program Files (x86)\Notepad++\notepad++.exe
return

;OneNote
:://o::
IfWinExist ahk_exe OneNote.exe
WinActivate
else
Run C:\Program Files (x86)\Microsoft Office\root\Office16\ONENOTE.EXE
return

;PyCharm
:://p::
IfWinExist ahk_exe pycharm64.exe
WinActivate
else
Run D:\Program Files (x86)\JetBrains\PyCharm Community Edition 4.5.4\bin\pycharm64.exe
return

;CCleaner
:://cc::
Run C:\Program Files\CCleaner\CCleaner64.exe
return

;Vmware Player
:://v::
IfWinExist ahk_exe vmplayer.exe
WinActivate
else
Run C:\Program Files (x86)\VMware\VMware Player\vmplayer.exe
return

;ConEmu
:://ce::
Run C:\Program Files\ConEmu\ConEmu64.exe
return

;Everything
:://e::
Run C:\Program Files\Everything\Everything.exe
return

;Gimp
:://gi::
Run C:\Program Files\GIMP 2\bin\gimp-2.8.exe
return

;iTools
:://it::
Run D:\Program Files (x86)\iTools 3\iTools.exe
return

;Evernote
:://en::
Run C:\Program Files (x86)\Evernote\Evernote\Evernote.exe
return

;Xmind
:://xm::
Run C:\Program Files (x86)\XMind\XMind.exe
return

;WinScp
:://wi::
Run C:\Program Files (x86)\WinSCP\WinSCP.exe
return

;Drcom
:://d::
Run C:\Drcom\DrUpdateClient\DrMain.exe
return

;���������
:://t::
Run taskmgr.exe
return

;����̨
:://cmd::
Run cmd
return

;��ͼ
:://j::
Run C:\Windows\system32\SnippingTool.exe
return


;;;; 2���ļ����ļ���

;�����inbox.txt
#i::
IfWinExist Inbox - ���±�
WinActivate
else
Run C:\Users\Administrator\Desktop\inbox.txt
return

;�����goals.txt
#g::
IfWinExist Goals - ���±�
WinActivate
else
Run C:\Users\Administrator\Desktop\Goals.txt
return

;Python�ĵ�
:://pd::
Run C:\Python27\Doc\python2711rc1.chm
return

;AHK�ĵ�
:://ad::
Run C:\Program Files\AutoHotkey\AutoHotkey_zh.chm
return

;�����ļ���
:://dl::
Run D:\Documents\Downloads
return

;����վ
:://hs::
Run ::{645ff040-5081-101b-9f08-00aa002f954e}
return

;projects
:://pr::
Run D:\projects
return

/*
�����ļ��С�
����԰�һ�������ñ��˿������ļ��в��ں���ĵط�����������ĵ�ַ����Ȼ��ʹ��һ�����ַ���������
������ַ�ֻ�Ǹ�ʾ��:P
*/
:://open::
Run C:\Program Files\CMAK\Support\2345\fpg\asd\secret\
return

;;;; 3����ҳ

;����
:://dou::
Run https://douban.com
return

;����fm
:://dfm::
Run https://fm.douban.com
return

;֪��
:://zhi::
Run https://zhihu.com
return


;;;;;;;; ���������ַ�

;;;; 1������

::@g::
Send withlihui@gmail.com
return

;;;; 2�����루��һ���İ�ȫ���գ���ò�Ҫ���˺ŷ���һ��

::@pwd1::
Send wodemima1
return

::@pwd2::
Send wodemima2
return

::@pwd3::
Send wodemima3
return


;;;; 3����������

;���͵�ǰ����
:://now::
FormatTime, CurrentDateTime,, yyyy-M-d
Send %CurrentDateTime%
return

;�ֻ���
:://phone::
Send 1515****267
return

;��ַ���ʱ�
:://addr::
Send ����ʡ������������*****��2346***��
return

;���֤����
:://sfz::
Send 32038219950214****
return

;���п���
:://bank::
Send ***
return

;;;;;;;; �������ò���

;��Google����ѡ�е�����
!g:: 
Send ^c 
Run http://www.google.com/search?q=%clipboard% 
return 

;���Ա�����ѡ�е�����
!b:: 
Send ^c 
Run http://s.taobao.com/search?q=%clipboard% 
return 

;��һ���հ׼��±�
!n:: 
If WinExist Untitled - Notepad 
WinActivate 
else 
Run Notepad 
return 

;ʹ�����˹����ѡ�е�����
!t::
Send ^c
Send !q
Send ^v{Enter}
return 

;��ѡ�е����ַ��͵������ϵ�Inbox.txt��Ȼ��رռ��±�
!z:: 
Send ^c
Send #i
WinWaitActive Inbox - ���±�
Send ^v{Enter}
Send ^s
WinClose Inbox - ���±�
return 

;ʹ��Alt+j��k��l��i���������ƶ����
!j:: Send {Left}
!l:: Send {Right}
!i:: Send {Up}
!k:: Send {Down}

;ѡ��һ������
!o:: Send {Home}+{End}

;ѡ��ǰλ�õ����׵����� 
!y:: Send +{Home} 

;ѡ��ǰλ�õ���ĩ������ 
!p:: Send  +{End} 

;Alt+����м�ɾ��
^MButton:: Send {Delete}

;��ȡ�������
:://getxy::
MouseGetPos, xpos, ypos 
Msgbox, The cursor is at X%xpos% Y%ypos%. 
return

;;;;;;;; �ġ�С����

;��ʱ��
#c:: 
InputBox UserInput, Counter, Enter a number(minutes):
IfEqual, Errorlevel, 0
{    
    sleep UserInput * 60000
    SoundBeep
    MsgBox ʱ�䵽��
}
return

;��ʱ�ػ�
:://sd::
InputBox UserInput, Counter, ����ƻ��ػ���ʱ�䣨���ӣ�:
Run cmd
WinWaitActive ahk_class ConsoleWindowClass
time := UserInput * 60
send ^{Space} ;����Ӣ������
Send shutdown{Space} -s{Space}-t{Space}%time%{Enter}
return

;ȡ����ʱ�ػ�
:://stop::
Run cmd
WinWaitActive ahk_class ConsoleWindowClass
send ^{Space} ;����Ӣ������
Send shutdown{Space} -a{Space}{Enter}
return

;���̹ػ�
:://sdn:: 
Shutdown, 1
return

;��Ϸģʽ
;����Windows�������ִ�д����
#v::
Run D:\Documents\game.ahk
;game.ahk���������£��˳���Ϸʱ�ر�����ű�
;LWin::return
;SetCapsLockState, AlwaysOn
