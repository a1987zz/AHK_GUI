global nameinif := RegExReplace(A_Scriptname, "...$", "ini") 
; может нужно A_ScriptDir - это полный к каталогу, где находится скрипт

; IniRead, api_paste_key, %nameinif%, Settings, dr
 ; IniRead, activation_key, %nameinif%, Settings, df

If (A_ScriptName != "GUI.ahk")
{
    msgbox Верните прежнее название скрипта... GUI.ahk
    ExitApp
}

; /*
 ; activation_key := activation_key_n
 ; api_paste_key := api_paste_key_t
; */

 activation_key := "Untitled" ; ключ активации программы из пастбина
 api_paste_key := "9tU6RpHe" ; api_paste_key из пастбина
/*
try {
  api_dev_key := "180586b396d0cc8ed21d89b8d64625d4"
   api_user_key := "bfa375224fe0ff7f6ca7885bbdb39c20"
     api_option := "show_paste"

    show_paste_raw := "api_dev_key=" . api_dev_key . "&api_user_key=" . api_user_key . "&api_paste_key=" . api_paste_key . "&api_option=" . api_option

   url := "https://pastebin.com/api/api_raw.php" ; возможны таймауты

   HttpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    HttpObj.Open("POST", url, True)
     HttpObj.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded") ; есть еще вариант с utf-8 HttpObj.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8")
  HttpObj.Send(show_paste_raw)
    HttpObj.WaitForResponse()
    Body := HttpObj.ResponseBody
     pData := NumGet(ComObjValue(Body)+8+A_PtrSize)
    ResponseText := StrGet(pData, Body.MaxIndex() + 1, "utf-8")
     If (ResponseText != activation_key)
   ; может нужно использовать InStr() надежней может будет работать
   ; if ResponseText not in %activation_key%
     {
    ; msgbox Ключ активации программы истек...
    msgbox Окончен период пробного использования ПО! Если хотите дальше использовать данное ПО, приобретите ключ активации у поставщика программы на сайте https://vk.com/bunnyscriptcsgo.
       ExitApp
     }
     ; }
}
catch e {
    msgbox Не удается установить доступ к сети интернет...
    ExitApp
}

*/
/*
try {
  HttpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
   HttpObj.Open("POST", "https://api.vk.com/method/status.get?user_id=-18999&fields=bdate&access_token=258deca373fc196fbba64fc4195d99ed04c07a8d&v=5.103", True)
    HttpObj.SetRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36")
     HttpObj.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
     HttpObj.Send()
     HttpObj.WaitForResponse()
      Body := HttpObj.ResponseBody 
     pData := NumGet(ComObjValue(Body)+8+A_PtrSize) 
   json_str := StrGet(pData, Body.MaxIndex() + 1, "utf-8") 

 jsObj := GetJS().Call("(" json_str ")")
varwer := jsObj.response.text

GetJS() {
   static doc := ComObjCreate("htmlfile")
        , _ := doc.write("<meta http-equiv=""X-UA-Compatible"" content=""IE=9"">")
        , JS := ObjBindMethod(doc.parentWindow, "eval")
   Return JS
}
}

catch e {
    msgbox internet off
    ExitApp
}

*/
; varwer := parsed.response.text
; Msgbox % varwer


IniRead, temp, %nameinif%, Settings, dw
 global Error_2 := temp

; ставить true
 If (Error_2 = "ERROR") { ; всегда менять из гугл диска обновления

  If varwer in Статус ; всегда менять из гугл диска обновления
  {
  ; IniWrite, 0, %werpasdf%, Settings, df

IniWrite, %activation_key%, %nameinif%, Settings, df
 IniWrite, %api_paste_key%, %nameinif%, Settings, dr
  IniWrite, 1, %nameinif%, Settings, dw ; нужно менять значение из гугла диска

; Msgbox % Key
   ; msgbox Обновите программу. Зайдите на сайт https://vk.com/bunnyscriptcsgo и загрузите новую версию программы. ; при следующей из гугл диска


StrComputer := "." 
 ObjWMIService := ComObjGet("winmgmts:{impersonationLevel=impersonate}!\\" . strComputer . "\root\cimv2") 
  ColSettings := objWMIService.ExecQuery("Select * from Win32_OperatingSystem")._NewEnum
  While colSettings[objOSItem] 
 {
  Key := objOSItem.SerialNumber
 }

; Random, randomw, 1, 1000

ClientId := "513776191582-5ncn9n03t8antakj32hheqpf74q4mg0d.apps.googleusercontent.com" 
 ClientSecret := "Vll3gaxJdvRIDsr30lmRGNaj" 
  RefreshToken := "1//0cDiJRIgO-H-ICgYIARAAGAwSNwF-L9IrYNFVbXaAhN4qzZoZHpvHRsN72oqO-WBIPT2FVSKF2o23RFMLYslhoJ4vGZDemRTxDXU" 

  Request := "refresh_token=" RefreshToken "&client_id=" ClientId "&client_secret=" ClientSecret "&grant_type=refresh_token" 
   WinHTTP := ComObjCreate("WinHTTP.WinHTTPRequest.5.1") 
    WinHTTP.Open("POST", "https://accounts.google.com/o/oauth2/token", true) 
     WinHTTP.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
   WinHTTP.Send(Request) 
  WinHTTP.WaitForResponse() 
 lkdjfs := WinHTTP.ResponseText

jsObj := GetNodeJS().Call("(" lkdjfs ")")
vardfwm := jsObj.access_token
global GetKeyHttp = "Bearer "" " vardfwm
; msgbox % vardfwm

GetNodeJS() {
   static doc := ComObjCreate("htmlfile")
        , _ := doc.write("<meta http-equiv=""X-UA-Compatible"" content=""IE=9"">")
        , JS := ObjBindMethod(doc.parentWindow, "eval")
   Return JS
}


 WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
  WinHTTP.Open("POST", "https://content-docs.googleapis.com/v1/documents/1Nnz-z-28q_thEyggkPZQMPawbNjrtgN8nb79PIhWx1E:batchUpdate?alt=json&key=AIzaSyBaZYhFVmtVnA2FlabxaVgreLYdlmu04Ew", true)
    WinHTTP.SetRequestHeader("Authorization", GetKeyHttp)
   WinHTTP.SetRequestHeader("Content-Type", "application/json")
  Data = {"requests":[{"insertText":{"text":"%activation_key%   %Key%\n","location":{"index":1}}}]}
  WinHTTP.Send(Data)
    WinHTTP.WaitForResponse()
     lkdjfsxcvx := WinHTTP.ResponseText
    ; msgbox % lkdjfsxcvx

; msgbox % Key

  }
 }

; /*
if (Error_2 != "263799841")
; (Error_2 != "1") and (Error_2 != "0") and (Error_2 != "ERROR")
{
; msgbox d
   IniWrite, %activation_key%, %nameinif%, Settings, df
    IniWrite, %api_paste_key%, %nameinif%, Settings, dr
   IniWrite, 1, %nameinif%, Settings, dw ; нужно менять значение из гугла диска
}
; */
/*
If (Error_2 = "ERROR") { ; для следующей загрузки из гугл диска
   ; действия для возврата ошибки
}
*/
; можно добавить сюда IniRead, temp, %nameinif%, Settings, dw
; global Error_2 := temp
if (Error_2 = "1") {

  If varwer in Статус_2 ;  всегда менять из гугл диска обновления
  {
    msgbox Пришло обновление программы! Перейдите на сайт "https://vk.com/bunnyscriptcsgo" и скачайте новую версию программы.
   IniWrite, 263799841, %nameinif%, Settings, dw 
    ; нужно менять значение из гугла 
    ; диска
   ; IniDelete, %nameinif%, Settings, dw
  }
}


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------



; dvv = Notepad
; DetectHiddenWindows, On
; WinGetClass, cldwws, ahk_exe notepad.exe
; global dr := cldwws
; IniWrite, %dr%, %nameinif%, Default, adhd_limit_app

ADHD := New ADHDLib
ADHD.config_about({name: "Скрипт", version: 1.0})
ADHD.config_limit_app("Notep")
ADHD.config_hotkey_add({uiname: "Action:", subroutine: "Fire"})
; ADHD.config_hotkey_add({uiname: "AND", subroutine: "AND"})
ADHD.init()
ADHD.create_gui()

Gui, Tab, 2
; было так Gui, Tab, 1
Gui, Add, Text, x0 y50, Send delay:
; Gui, Add, CheckBox, x5 yp+25 W160 vadhd_limit_application_on gadhd_option_changed, Работает только в указанном окне.
ADHD.gui_add("Edit", "StringToSleep", "xp+120 yp W120", "", "")
StringToSend_TT := "Введите задержку банихопа в ms,`nнастройки сами автоматически установятся..."
ADHD.finish_startup()

    ; OnMessage("0x0202","BUTTONDOWN") 
    ; нажатие в любом пустом месте программы скрывает активное окно
    ; return

    ; BUTTONDOWN(){
    ; WinMinimize, % "ahk_id " WinExist()
    ; }
    ; return

/*

*/

global SC_MINIMIZE := 0xF020, WM_LBUTTONDOWN := 0x201, hGui

; OnMessage(0x404, "AHK_NOTIFYICON")
; OnMessage(0x112, "WM_SYSCOMMAND")
; Return

WM_SYSCOMMAND(wParam)
{
   If (A_Gui && wParam = 0xF020) {
   Gui, Hide
      return 0
   }
}

AHK_NOTIFYICON(wp, lp)
{
   if (lp = WM_LBUTTONDOWN)
      Gui, Show
}


Fire:
#UseHook On
; If (InStr(wefsdf,"+") || InStr(wefsdf,"!") || InStr(wefsdf,"^") || InStr(wefsdf,"#"))
If hotkey_fire contains +,!,^,#
{ 
    MsgBox На данный момент хоткеи в сочетании с модификаторами не поддерживаются. Используйте одиночные нажатия.
}
   While GetKeyState(hotkey_fire, "P") {
    Send {Blind}{Space}
     sleep %StringToSleep%
    }

; While GetKeyState(wefsdfwe, "P") {
  ;  Send {Blind}{Space}
; }
Return


; ADHDLib - динамические горячие клавиши Autohotkey для чайников
/*
Сделать:
ОШИБКИ:
До следующего выпуска:
Функции:
* Окно горячих клавиш для использования вне вкладки привязок
* Долгосрочный:
* Повторно добавить поддержку палки
* Какой-то способ удалить само-ссылки на СДВГ. в коде?
* Способ перемещения блока BindMode Шf внутри объекта?
* Заменить имена меток в ini реальными именами меток вместо 1, 2, 3?*/

/*
 

Функции в этом разделе предназначены для использования авторами сценариев.
*/

Class ADHDLib {
    __New(){
        this.private := New ADHD_Private
        this.private.parent := this
    }

    /*
     
Установите различные параметры для скрипта перед запуском
; Убедитесь, что макрос работает с правами администратора.
    ; Некоторые игры и т. Д. Не увидят отправленные ключи без этого.
    ; Запустите как код администратора с http://www.autohotkey.com/board/topic/46526-
*/


    run_as_admin(){
        Global 0
        IfEqual, A_IsAdmin, 1, Return 0
        Loop, %0% {
            params .= A_Space . %A_Index%
        }
        DllCall("shell32\ShellExecute" (A_IsUnicode ? "":"A"),uint,0,str,"RunAs",str,(A_IsCompiled ? A_ScriptFullPath
            : A_AhkPath),str,(A_IsCompiled ? "": """" . A_ScriptFullPath . """" . A_Space) params,str,A_WorkingDir,int,1)
        ExitApp
    }


    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Настройте вкладку О программе
    ; Передать ассоциативный массив
    ; name: название вашего скрипта
    ; автор: ваше имя ; link:     A Link to a web page about your script
    ; eg: ADHD.config_about({name: "My script", version: 1.0.0, author:  "myname", link: "<a href=""http://google.com"">Google</a>"})
    

    config_about(data){
        this.private.author_macro_name := data.name                   ; Change this to your macro name
        this.private.author_version := data.version              ; The version number of your script
        this.private.author_name := data.author                         ; Your Name
        this.private.author_link := data.link
        if (data.help == "" || data.help == null){
            this.private.author_help := this.private.author_link
        } else {
            this.private.author_help := data.help
        }
    }
    */

/*
    ; --------------------------------------------------------------------------------------------------------------------------------------

; Устанавливает параметр по умолчанию для параметра «Ограничить приложение».

; Если вы пишете макрос для игры, вы должны найти игровой класс ahk_class с помощью AHK Window Spy и установить его здесь
*/

    config_limit_app(app){
        this.private.limit_app := app
    }
    
    ; --------------------------------------------------------------------------------------------------------------------------------------

; Устанавливает размер графического интерфейса
    config_size(w,h){
        this.private.gui_w := w
        this.private.gui_h := h
    }
/*
    ; --------------------------------------------------------------------------------------------------------------------------------------

; Настраивает систему уведомлений об обновлениях для вашего скрипта

; Если вы хотите уведомить пользователей при обновлении вашего скрипта, вы можете попросить ADHD проверить веб-URL, чтобы определить, какая последняя версия вашего скрипта.

    ; СДВГ будет ожидать найти текстовый файл по этому URL, содержащий только текст, например, так: Версия = 1.2.3
    ; eg: ADHD.config_updates("http://evilc.com/files/ahk/mwo/firectrl/firectrl.au.txt")
    */
    config_updates(url){
        this.private.author_url_prefix := url
    }
/*
    ; --------------------------------------------------------------------------------------------------------------------------------------

; Добавляет горячую клавишу в скрипт
    ; Передать ассоциативный массив
    ; uiname: имя горячей клавиши
    ; подпрограмма: метка для вызова при нажатии этой горячей клавиши
    ; Также имейте в виду, что если вы объявите горячую клавишу, которая указывает на подпрограмму «огонь» ...
    ; fire_up также будет вызываться при отпускании горячей клавиши
    ; Подсказка: всплывающая подсказка, отображаемая при наведении курсора на горячую клавишу
    ; eg: ADHD.config_hotkey_add({uiname: "Fire", subroutine: "Fire", tooltip: «Когда вы нажмете эту кнопку, действие огня будет запущено»)
    */
    config_hotkey_add(data){
        this.private.hotkey_list.Insert(data)
    }

/*
    ; --------------------------------------------------------------------------------------------------------------------------------------
    
; Добавляет «крючок» в ADHD - когда происходит конкретное событие, будет вызвана указанная метка
    ; Доступные события:
    ; option_changed Опция изменена
    ; tab_changed Текущая вкладка изменена
    ; on_exit Приложение собирается выйти
    ; app_active "Ограниченное" приложение попало в фокус
    ; app_inactive Приложение «Limited» вышло из фокуса
    ; Разрешение приложения «Limited» изменилось
*/
    config_event(name, hook){
        this.private.events[name] := hook
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Настраивает вкладки, используемые СДВГ.
    ; Если вы хотите добавить дополнительные вкладки или изменить имя вкладки «Главная», передайте массив имен этой функции
    ; ПЕРВЫЙ пункт всегда будет вкладкой «Главная».
    ; ADHD добавит другие вкладки по умолчанию (Bindings, Profiles, About) в конце этих вкладок. 
    */
    ; eg: ADHD.config_tabs(Array("Axes 1", "Axes 2", "Buttons 1", "Buttons 2", "Hats"))
    config_tabs(tabs){
        this.private.tab_list := tabs
        return
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Устанавливает версию файла INI.

    ; Используйте это, если вы вносите серьезные изменения в имена элементов управления графического интерфейса и т. д. Чтобы файл INI не был совместимым.
    ; Установите новую версию, чтобы заставить пользователей предупреждать, что INI-файл не будет совместим.
*/
    config_ini_version(ver){
        return this.private.config_ini_version(ver)
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Определяет, записывается ли версия конфигурации в INI-файл при выходе
    config_write_version(setting){
        this.private.write_version := setting
        return
    }
/*
; При компиляции скриптов вы должны использовать 32-битную версию AHK, иначе она не будет работать на 32-битных машинах.

    ; При запуске ADHD проверяет, скомпилирован ли скрипт как 64-битный, и, если это так, предупреждает вас.

    ; Вы можете переопределить это поведение с помощью этой функции
*/
    config_ignore_x64_warning(){
        this.private.x64_warning := 0
    }
    /*
; При запуске ADHD проверит, определены ли какие-либо действия, и выйдет, если нет.

    ; Вы можете переопределить это поведение с помощью этой функции
*/
    config_ignore_noaction_warning(){
        this.private.noaction_warning := 0
    }
    
    ; --------------------------------------------------------------------------------------------------------------------------------------

    /*
      
    */

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Инициализирует СДВГ

    ; Загрузите настройки, начальный профиль и т. Д.
*/
    init(){
        /*
; Выполните некоторые проверки вменяемости
        
; Проверьте, скомпилирован ли и x64
*/
        if (A_IsCompiled){
            if (A_Ptrsize == 8 && this.private.x64_warning){
                Msgbox, Вы скомпилировали этот скрипт под 64-битным AutoHotkey. В результате он не будет работать для людей на 32-битных окнах. n`nДелайте одно из следующего: `n`nПереустановите Autohotkey и выберите 32-битный вариант.n`nСоздайте x64 exe без этого предупреждения, вызвав config_ignore_x64_warning() config_ignore_x64_warning()
                ExitApp
            }
        }

; Проверьте, пользователь создал экземпляр класса
        if (this.private.instantiated != 1){
            msgbox Вы должны использовать экземпляр этого класса, а не класс сам.`nПоставить что-то вроде ADHD := New ADHDLib в начале вашего сценария
            ExitApp
        }
        
; Проверьте, пользователь определил горячую клавишу
        if (this.private.hotkey_list.MaxIndex() < 1){
            if (this.private.noaction_warning){
                msgbox, Действия не определены, выход...
                ExitApp
            }
        }

; сюда добавить можно т.к. сначала сообщение, а потом сам скрипт запускается


; cmd := "ping 8.8.8.8 -n 1 -w 1000"
; RunWait, %cmd%,, Hide

; If (ErrorLevel = 0) {


; Убедитесь, что метки, указанные как цели для горячих клавиш, действительно существуют
        Loop, % this.private.hotkey_list.MaxIndex()
        {
            If (IsLabel(this.private.hotkey_list[A_Index,"subroutine"]) == false){
                msgbox, % "Метка`n`n" this.private.hotkey_list[A_Index,"subroutine"] ":`n`n не появляется в скрипте.`nВыход..."
                ExitApp
            }

        }
        this.private.debug_ready := 0
        
; Указывает, что мы запускаем - игнорируем ошибочные события, всегда регистрируем, пока мы не загрузим настройки и т. Д. Используем это значение
        this.private.starting_up := 1

        this.private.debug("Starting up...")
        this.private.app_act_curr := -1              
            ; Является ли
         ; текущее приложение приложением «Limit To» или нет. Начните с -1, чтобы мы могли инициализировать первое состояние приложения активным или неактивным
/*
; Запустите ADHD init vars и настройки

        ; Переменные, которые будут сохранены в файле INI - будут заполнены кодом позже
        ; [Variable Name, Control Type, Default Value]
        ; eg ["MyControl","Edit","None"]
        */
        this.private.ini_vars := []
        /*
; Содержит справочную копию горячих клавиш, чтобы авторы могли получить доступ к информации (например, для быстрой отправки нажатия клавиш после нажатия кнопки запуска)
*/
        this.private.hotkey_mappings := {}

        #InstallKeybdHook
        #InstallMouseHook
        #MaxHotKeysPerInterval, 200

        #NoEnv  ; Рекомендуется для производительности и совместимости с будущими выпусками AutoHotkey.
        SetWorkingDir %A_ScriptDir%  ; Обеспечивает согласованный начальный каталог.

; Убедитесь, что закрытие GUI с использованием X завершает работу скрипта
        OnExit, GuiClose

        ini := this.private.ini_name
        IniRead, x, %ini%, Settings, adhd_gui_x, unset
        IniRead, y, %ini%, Settings, adhd_gui_y, unset
        this.private.first_run := 0
        if (x == "unset"){
            msgbox, Добро пожаловать в этот макрос! Сейчас создастся файл настроек в той же папке, где находится этот макрос. Нельзя удалять или переименовывать конфигурационный файл, т.к. там содержится ключ активации программы.
            ; msgbox, Добро пожаловать в этот макрос! Это окно появляется`nпотому, что файл настроек еще не был создан, теперь он будет`nсоздан в той же папке, где находится этот макрос.`nНельзя удалять или переименовывать конфигурационный файл, т.к. там содержится ключ активации программы.
            x := 0 
            ; initialize
            this.private.first_run := 1
        }
        if (y == "unset"){
            y := 0
            this.private.first_run := 1
        }

        if (x == ""){
            x := 0 
            ; в случае сбоя могут быть записаны пустые значения
        }
        if (y == ""){
            y := 0
        }
        this.private.gui_x := x
        this.private.gui_y := y
        
        ; Получить list of profiles
        IniRead, pl, %ini%, Settings, adhd_profile_list, %A_Space%
        this.private.profile_list := pl
        ; Получить current profile
        IniRead, cp, %ini%, Settings, adhd_current_profile, Default
        this.private.current_profile := cp

        ; Получить version of INI file
        IniRead, iv, %ini%, Settings, adhd_ini_version, 1
        this.private.loaded_ini_version := iv

    }


    ; --------------------------------------------------------------------------------------------------------------------------------------

; Создает графический интерфейс
    create_gui(){
        /*
; ВАЖНЫЙ 
        ; Объявите глобальный для рутины создания графического интерфейса.
        ; Ограничение AHK - нет динамического создания vars, а guicontrols нужен глобальный или статический var
        ; Кроме того, команды GUI не принимают объекты
        ; Так объявите временные переменные как местные
        global
; Настройте графический интерфейс =================================================== ======
*/
        local w := this.private.gui_w
        local h := this.private.gui_h - 30 ; высота футера
        
        local tabs := ""
        Loop, % this.private.tab_list.MaxIndex()
        {
            tabs := tabs this.private.tab_list[A_Index] "|"
        }
        Gui, Add, Tab2, x0 w%w% h%h% vadhd_current_tab gadhd_tab_changed, %tabs%Setting|Profile|About

        local tabtop := 40
        local current_row := tabtop + 20
        
        local nexttab := this.private.tab_list.MaxIndex() + 0
        ; 0 - вкладки поменяются местами, нужно еще установить цифру 2 в Gui, Tab, 2 - в начале скрипта, чтобы контролы первой вкладки переместились во вторую
        Gui, Tab, %nexttab%
; СВЯЗЬ TAB
        Gui, Add, Text, x5 y40 W100 Center, Action:

        hotkey_w := this.private.gui_w - 220
        hotkey_after := hotkey_w + 10

        xpos := 105 + (hotkey_w / 2) - 50

        Gui, Add, Text, x%xpos% yp W100 Center, Bind:

/*
; Добавить горячие клавиши

   
        ; Добавить функциональность переключателя как последний элемент в списке
*/
       ; this.config_hotkey_add({uiname: "Functionality Toggle", subroutine: "adhd_functionality_toggle"})

        xpos := 105 + hotkey_w + 45
        Gui, Add, Text, x%xpos% y30 w30 center, Wild`nMode

        Gui, Add, Text, xp+30 y30 w30 center, Thru`nMode

        Loop % this.private.hotkey_list.MaxIndex() {
            local name := this.private.hotkey_list[A_Index,"uiname"]
            Gui, Add, Text,x5 W100 y%current_row%, %name%
            Gui, Add, Edit, Disabled vadhd_hk_hotkey_%A_Index% w%hotkey_w% x105 yp-3,
            /*
            ;Gui, Add, Edit, Disabled vadhd_hk_hotkey_display_%A_Index% w160 x105 yp-3, None
            ;Gui, Add, Edit, Disabled vadhd_hk_hotkey_%A_Index% w95 xp+165 yp,
            */
             Gui, Add, Button, gadhd_set_binding vadhd_hk_bind_%A_Index% yp-1 xp+%hotkey_after%, Bind
             adhd_hk_bind_%A_Index%_TT := this.private.hotkey_list[A_Index,"tooltip"]
/*
            Gui, Add, Button, gadhd_set_binding vadhd_hk_bind_%A_Index% yp-1 xp+105, Bind
            */
            Gui, Add, Checkbox, vadhd_hk_wild_%A_Index% gadhd_option_changed xp+45 yp+5 w25 center
            adhd_hk_wild_%A_Index%_TT := "Wild Mode режим позволяет горячим клавишам срабатывать, когда другие модификаторы также удерживаются.`nАналогично символу-модификатору * в ahk скрипте.`nНапример, если вы связали Ctrl + C с действием ... `nWild Mode ON: Ctrl + Alt + C, Ctrl + Shift + C и т. д. Все еще будут вызывать действие.`nWild Mode OFF: Ctrl + Alt + C и т. д. не будет запускать действие."


            Gui, Add, Checkbox, vadhd_hk_passthru_%A_Index% gadhd_option_changed xp+30 yp w25 center Checked
            adhd_hk_passthru_%A_Index%_TT := "Режим Thru Mode отключает попытку игры увидеть нажатую клавишу.`nАналогично символу-модификатору ~ в ahk скрипте.`nОбратите внимание, что режим Thru Mode принудительно включается,`nесли вы связываете только левую или правую кнопки мыши."

            current_row := current_row + 30
        }
        
        local nexttab := this.private.tab_list.MaxIndex() + 2
        Gui, Tab, %nexttab%
; Вкладка профилей
        current_row := tabtop + 20
       Gui, Add, Text,x5 W40 y%current_row%, Profile:
        local pl := this.private.profile_list
        local cp := this.private.current_profile
       Gui, Add, DropDownList, xp+55 yp-5 W300 vadhd_current_profile gadhd_profile_changed, Default||%pl%
       ; Gui, Add, Button, x40 yp+25 gadhd_add_profile, Add
      ; Gui, Add, Button, xp+65 yp0 gadhd_delete_profile, Del
      ; Gui, Add, Button, xp+57 yp0 gadhd_duplicate_profile, Copy
      ; Gui, Add, Button, xp+76 yp0 gadhd_rename_profile, Rename
        GuiControl,ChooseString, adhd_current_profile, %cp%
        
; Ограничить приложение переключения
        Gui, Add, CheckBox, x5 yp+25 W160 vadhd_limit_application_on gadhd_option_changed, Works only in the specified window.
         Gui, Add, Text, x4 yp+35 W170, ; ___ "Learn game window" button..
         ; Обратите внимание, что в зависимости от сервера названия окна может отличаться.
         ; нужно добавить в начало скрипта, что было чекбокс отображался на вкладке настройки
        ; было так
        ; Gui, Add, CheckBox, x5 yp+25 W160 vadhd_limit_application_on gadhd_option_changed, Работает только в указанном окне: ahk_class 


; Текстовое поле Limit application
        Gui, Add, Edit, xp+170 yp-32 W100 vadhd_limit_application gadhd_option_changed,
        
; Запустить окно шпиона
        Gui, Add, Button, xp+125 yp-1 W70 gadhd_show_window_spy, Find_window
        adhd_show_window_spy_TT := "Введите здесь значение, чтобы горячие клавиши срабатывали только при открытии определенного приложения. Используйте Window Spy (кнопка справа), чтобы найти класс ahk_class вашего приложения."

; Автоматическое переключение профилей
       ; Gui, Add, CheckBox, x5 yp+25 W26 vadhd_auto_profile_switching gadhd_option_changed, Автоматическое переключение профилей.

        local nexttab := this.private.tab_list.MaxIndex() + 3
        Gui, Tab, %nexttab%
; О вкладке здесь можно свои настройки
        current_row := tabtop + 5
        Gui, Add, text, x2 y%current_row%, © All rights reserved ; свой текст
        ; Gui, Add, Link,x10 yp-40, <a href="https://vk.com/bunnyscriptcsgo">https://vk.com/bunnyscriptcsgo</a>
        ; было так Gui, Add, Link,x10 yp-40,By Clive "evilC" Galway <a href="http://evilc.com/proj/adhd">HomePage</a>    <a href="https://github.com/evilC/ADHD-AHK-Dynamic-Hotkeys-for-Dummies">GitHub Page</a>
        local aname := this.private.author_name
        local mname := this.private.author_macro_name
        ; Gui, Add, Link,x5 yp+35, This macro ("%mname%") was created by %aname%
        local link := this.private.author_link
        ; Gui, Add, Link,x5 yp+25, %link%

        Gui, Tab

; Добавить строку состояния для быстрого просмотра текущего профиля и обновления статуса
        local ypos := this.private.gui_h - 17
        local tmp := this.private.gui_w - 200
        Gui, Add, Text, x5 y%ypos%, CurrentProfile:
        Gui, Add, Text, x105 y%ypos% w%tmp% vCurrentProfile,

        local tmp := this.private.gui_w - 120
        Gui, Add, Text, x%tmp% y%ypos%,
        ; было так
        ;         Gui, Add, Text, x%tmp% y%ypos%, Updates:

        ; local tmp := this.private.gui_w - 200
        Gui, Add, Text, xp+50 y%ypos% w60 vUpdateStatus
        ; Gui, Add, Button, xp+48 yp-6 w20 gadhd_update_status_info, ?
     Gui, Add, Button, xp+48 yp-6 w20 vUpdateStatusInfo gspy, ?
        UpdateStatusInfo_TT := ""

; Информация о версии сборки
        local bad := 0
        
; Проверьте версии:
       ; local tt := "Нажмите кнопку ? для загрузки обновлений:"

; СДВГ версия
/*
        ver := this.private.get_ver("http://evilc.com/files/ahk/adhd/adhd.au.txt")
        if (ver){
            cv := this.private.pad_version(this.private.core_version)
            rv := this.private.pad_version(ver)
            diffc := this.private.semver_compare(cv,rv)

            tt .= this.private.version_tooltip_create(diffc,rv,cv)
        } else {
            tt .= ""
            bad++
        }
*/
        ; было так tt .= "`n`n" this.private.author_macro_name ":`n"

; Авторская версия скрипта
        ver := this.private.get_ver(this.private.author_url_prefix)
        if (ver){
            av := this.private.pad_version(this.private.author_version)
            rv := this.private.pad_version(ver)
            diffa := this.private.semver_compare(av,rv)

            tt .= this.private.version_tooltip_create(diffa,rv,av)
        } else {
            tt .= ""
            bad++
        }

        ; Показать статус

        if (bad) {
            GuiControl,+Cblack,UpdateStatus
            GuiControl,,UpdateStatus, %текст% ; свой текст в правом углу
        } else if (diffc > 0 || diffa > 0) {
            GuiControl,+Cblue,UpdateStatus
            GuiControl,,UpdateStatus, Newer
        } else if (diffc < 0 || diffa < 0) {
            GuiControl,+Cred,UpdateStatus
            GuiControl,,UpdateStatus, Available
        } else {
            GuiControl,+Cgreen,UpdateStatus
            GuiControl,,UpdateStatus, Latest
        }

; Применить всплывающую подсказку
        UpdateStatusInfo_TT := tt

; Добавить элементы управления окна отладки
/*
        Gui, Tab
        local tmp
        tmp := w - 90
        Gui, Add, CheckBox, x%tmp% y10 vadhd_debug_window gadhd_debug_window_change, Show Window

        
            
        tmp := w - 180
        Gui, Add, CheckBox, x%tmp% y10 vadhd_debug_mode gadhd_debug_change, Debug Mode
        */

; Запустите GuiSubmit при включенном start_up, чтобы установить все переменные
        Gui, Submit, NoHide

; Создать графический интерфейс отладки, но пока не показывать
/*
        tmp := w - 30
        Gui, 2:Add,Edit,w%tmp% h350 vadhd_log_contents hwndadhd_log ReadOnly,
        Gui, 2:Add, Button, gadhd_clear_log, clear
*/

; Создать графический интерфейс Bind
        prompt := "Пожалуйста, нажмите нужную комбинацию клавиш.`n"
        prompt .= "Поддерживается большинство горячих клавиш клавиатуры и всех кнопок мыши. Также Ctrl, Alt, Shift, Win как модификаторы или отдельные клавиши."
; prompt. = "Кнопки джойстика также поддерживаются, но в настоящее время не имеют модификаторов. n"
        prompt .= "`nНажмите Escape, чтобы отменить."
        prompt .= "`nУдерживайте Escape, чтобы очистить привязку."
        prompt .= "`nЖелательно использовать английскую раскладку при привязке хоткея."
        Gui, 3:Add, text, center, %prompt%
        Gui, 3:-Border +AlwaysOnTop
        ; Gui, 3:Show


    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Добавляет элемент графического интерфейса и регистрирует его для хранения в файле INI
    ; тип (изменить и т. д.), имя (имя переменной), параметры (например, xp  50), param3 (например, раскрывающийся список, метка), значение по умолчанию (используется для ini-файла)
*/
    gui_add(ctype, cname, copts, cparam3, cdef){
        /*
; Обратите внимание, что эта функция предполагает глобальный, поэтому она может создавать элементы графического интерфейса
*/
        Global
        Gui, Add, %ctype%, %copts% v%cname% gadhd_option_changed, %cparam3%
        this.private.ini_vars.Insert([cname,ctype,cdef])
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Позвоните, когда вы будете готовы запустить макрос.
    finish_startup(){
        global  ; Remove! phase out mass use of globals
        
        ; Показать GUI =====================================
        local ver := this.private.core_version
        local aver := this.private.author_version
        local name := this.private.author_macro_name
        local x := this.private.gui_x
        local y := this.private.gui_y
        local w := this.private.gui_w
        local h := this.private.gui_h

        local l := 0,r := 0,t := 0,b := 0
        local mon, monleft, monright, montop, monbottom

; Проверьте, что GUI не находится в невидимом месте (то есть вне экрана)
        SysGet, Count, 80
        Loop % Count {
            SysGet, Mon, Monitor, % A_Index
            if (monleft < l){
                l := monleft
            }
            if (monright > r){
                r := monright
            }
            if (montop < t){
                t := montop
            }
            if (monbottom > b){
                b := monbottom
            }
        }
        if (x < l){
            x := l
        }
        if (x + w > r){
            x := r - w
        }
        if (y < t){
            y := t
        }
        if (y + h > b){
            y := b - h
        }

        Gui, Show, x%x% y%y% w%w% h%h%, %name% v%aver%

        ; было так  
        ;       Gui, Show, x%x% y%y% w%w% h%h%, %name% v%aver% (ADHD v%ver%)


        

        this.private.debug_ready := 1

        ; Настройте ссылки в нижнем колонтитуле главной страницы
        h := this.private.get_gui_h() - 40
        name := this.private.get_macro_name()
        alink := this.private.author_help
        ; Gui, Add, Link, x5 y%h%, <a href="http://evilc.com/proj/adhd">ADHD Instructions</a>    %name% %alink%


; Крючок для подсказок
        ;OnMessage(0x200, "this.private.mouse_move")
        OnMessage(0x200, "adhd_mouse_move")
        OnMessage(0x404, "AHK_NOTIFYICON")
        ; крючок для сворачивания окна в трей при нажатии свернуть окно
        OnMessage(0x112, "WM_SYSCOMMAND")


; Завершить настройку =====================================
        this.private.profile_changed()
        this.private.option_changed()
        this.private.debug_window_change()
        
; Автоматическое переключение профилей
        Gui +LastFound 
        hWnd := WinExist()
        DllCall( "RegisterShellHookWindow", UInt,Hwnd )
        MsgNum := DllCall( "RegisterWindowMessage", Str,"SHELLHOOK" )
        fn := this.active_window_changed.bind(this)
        OnMessage( MsgNum, fn )

        this.private.debug("Finished startup")

; Закончен запуск, разрешено изменение элементов управления для запуска событий
        this.private.starting_up := 0

    }

    active_window_changed( wParam,lParam ){
        if (this.private.auto_profile_switching){
            If (lParam) { ; id of 0 is desktop
                WinGetClass, class, ahk_id %lParam%
                if (lParam <= 2 || class = ""){
                    return
                }
                profile := this.private.app_list[class]
                if (profile){
                    GuiControl,ChooseString, adhd_current_profile, %profile%
                    this.private.profile_changed()
                    return
                }
            }
; Изменить на профиль по умолчанию
            GuiControl,ChooseString, adhd_current_profile, Default
            this.private.profile_changed()
        }
    }
    ; --------------------------------------------------------------------------------------------------------------------------------------

    /*
   
; Функции для получения и установки значений
    */

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Получает имя приложения, указанное в поле «Ограничение для приложения»
    get_limit_app(){
        return this.private.get_limit_app()
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Получает состояние флажка «Ограничить для приложения»
    get_limit_app_on(){
        return this.private.get_limit_app_on()
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Получает текущий размер приложения, указанного в поле «Ограничение для приложения»
    ; returns  an object with .w and .h свойство
    limit_app_get_size(){
        return this.private.limit_app_get_size()
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
    /*
; Получает ПОСЛЕДНИЙ размер приложения, указанного в поле «Ограничение для приложения»
; Это полезно, например, для обнаружения перехода игры из оконного режима (лобби) в полноэкранный режим (игра)
    ; возвращает объект со свойствами .w и .h
*/
    limit_app_get_last_size(){
        return this.private.limit_app_get_last_size()
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; СДВГ все еще запускается?
    is_starting_up(){
        return this.private.starting_up
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Находится ли ADHD в режиме отладки?
    get_debug_mode(){
        global adhd_debug_mode
        return adhd_debug_mode
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Получает имя текущей вкладки в ADHD
    get_current_tab(){
        global adhd_current_tab
        return adhd_current_tab
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Изменения в указанной вкладке
    set_current_tab(tab){
; глобальный adhd_current_tab
        GuiControl, Choose,adhd_current_tab, %tab%
        return
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; Это первый раз, когда этот макрос был запущен?
; Может использоваться для создания пользовательских экранов приветствия, настройки и т. Д.
*/
    is_first_run(){
        return this.private.first_run
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Получает версию файла INI - см. Config_ini_version ()
    get_ini_version(){
        return this.private.loaded_ini_version
    }

; возвращает true, если приложение, указанное в поле «Limit to Application», активно, и false, если нет
    limit_app_is_active(){
        return this.private.limit_app_is_active()
    }
/*
; Возвращает количество графических интерфейсов, используемых ADHD.
; Вы можете использовать это, чтобы определить следующий безопасный номер GUI для использования.
*/
    get_guis_used(){
        return this.private.guis_used
    }



    ; --------------------------------------------------------------------------------------------------------------------------------------

    /*
    
; Полезные вещи, которые не вписываются ни в одну другую категорию
    */

    ; --------------------------------------------------------------------------------------------------------------------------------------

; Что-то пишет в окно отладки
    debug(msg){
        return this.private.debug(msg)
    }


    ; --------------------------------------------------------------------------------------------------------------------------------------

; Выходит из скрипта
    exit_app(){
        return this.private.exit_app()
    }

; Сравнивает два номера версий.
; Может быть, стоит сначала передать номера версий в pad_version.
    semver_compare(version1, version2){
        return this.private.semver_compare(version1, version2)
    }

; Интеллектуально дополняет от одной точки (то есть 1) до двухточечной (то есть 1,0) до трехточечной (то есть 1,0,0)
    pad_version(version){
        return this.private.pad_version(version)
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------
/*
; При выполнении макроса, который активируется удерживанием кнопки, некоторые игры ведут себя странно, если для горячей клавиши не обнаружено событие up.
; например, у вас есть макрос, в котором нажатие правой мыши выполняет быстрый выстрел ...
    ; ... Некоторые игры не будут работать правильно, если они не увидят событие up для правой кнопки мыши
        ; Используйте эту функцию для отправки события up для любого ключа, который пользователь связал с действием
        ; sub = подпрограмма, которая вызывается для горячей клавиши (например, «огонь»)
        ; mod = "модифицированный" или "немодифицированный"
        ; Если пользователь связал Ctrl  правую мышь с действием ...
        ; «Измененный» будет отправлять событие вверх для Ctrl  правая мышь
        ; "немодифицированный" отправил бы событие up только для правой мыши
    */
    send_keyup_on_press(sub,mod){
        return this.private.send_keyup_on_press(sub,mod)
    }

    ; x64 совместимый реестр read/write from http://www.autohotkey.com/board/topic/36290-regread64-and-regwrite64-no-redirect-to-wow6432node/
    RegRead64(sRootKey, sKeyName, sValueName = "", DataMaxSize=1024) {
        HKEY_CLASSES_ROOT   := 0x80000000   ; http://msdn.microsoft.com/en-us/library/aa393286.aspx
        HKEY_CURRENT_USER   := 0x80000001
        HKEY_LOCAL_MACHINE  := 0x80000002
        HKEY_USERS          := 0x80000003
        HKEY_CURRENT_CONFIG := 0x80000005
        HKEY_DYN_DATA       := 0x80000006
        HKCR := HKEY_CLASSES_ROOT
        HKCU := HKEY_CURRENT_USER
        HKLM := HKEY_LOCAL_MACHINE
        HKU  := HKEY_USERS
        HKCC := HKEY_CURRENT_CONFIG
        
        REG_NONE                := 0    ; http://msdn.microsoft.com/en-us/library/ms724884.aspx
        REG_SZ                  := 1
        REG_EXPAND_SZ           := 2
        REG_BINARY              := 3
        REG_DWORD               := 4
        REG_DWORD_BIG_ENDIAN    := 5
        REG_LINK                := 6
        REG_MULTI_SZ            := 7
        REG_RESOURCE_LIST       := 8

        KEY_QUERY_VALUE := 0x0001   ; http://msdn.microsoft.com/en-us/library/ms724878.aspx
        KEY_WOW64_64KEY := 0x0100   ; http://msdn.microsoft.com/en-gb/library/aa384129.aspx (do not redirect to Wow6432Node on 64-bit machines)
        KEY_SET_VALUE   := 0x0002
        KEY_WRITE       := 0x20006

        myhKey := %sRootKey%        ; pick out value (0x8000000x) from list of HKEY_xx vars
        IfEqual,myhKey,, {      ; Error - Invalid root key
            ErrorLevel := 3
            return ""
        }
        
        RegAccessRight := KEY_QUERY_VALUE + KEY_WOW64_64KEY
        
        DllCall("Advapi32.dll\RegOpenKeyExA", "uint", myhKey, "str", sKeyName, "uint", 0, "uint", RegAccessRight, "uint*", hKey)    ; open key
        DllCall("Advapi32.dll\RegQueryValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint*", sValueType, "uint", 0, "uint", 0)     ; get value type
        If (sValueType == REG_SZ or sValueType == REG_EXPAND_SZ) {
            VarSetCapacity(sValue, vValueSize:=DataMaxSize)
            DllCall("Advapi32.dll\RegQueryValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", 0, "str", sValue, "uint*", vValueSize) ; get string or string-exp
        } Else If (sValueType == REG_DWORD) {
            VarSetCapacity(sValue, vValueSize:=4)
            DllCall("Advapi32.dll\RegQueryValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", 0, "uint*", sValue, "uint*", vValueSize)   ; get dword
        } Else If (sValueType == REG_MULTI_SZ) {
            VarSetCapacity(sTmp, vValueSize:=DataMaxSize)
            DllCall("Advapi32.dll\RegQueryValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", 0, "str", sTmp, "uint*", vValueSize)   ; get string-mult
            sValue := this.ExtractData(&sTmp) "`n"
            Loop {
                If (errorLevel+2 >= &sTmp + vValueSize)
                    Break
                sValue := sValue this.ExtractData( errorLevel+1 ) "`n"
            }
        } Else If (sValueType == REG_BINARY) {
            VarSetCapacity(sTmp, vValueSize:=DataMaxSize)
            DllCall("Advapi32.dll\RegQueryValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", 0, "str", sTmp, "uint*", vValueSize)   ; get binary
            sValue := ""
            SetFormat, integer, h
            Loop %vValueSize% {
                hex := SubStr(Asc(SubStr(sTmp,A_Index,1)),3)
                StringUpper, hex, hex
                sValue := sValue hex
            }
            SetFormat, integer, d
        } Else {                ; value does not exist or unsupported value type
            DllCall("Advapi32.dll\RegCloseKey", "uint", hKey)
            ErrorLevel := 1
            return ""
        }
        DllCall("Advapi32.dll\RegCloseKey", "uint", hKey)
        return sValue
    }

    RegWrite64(sValueType, sRootKey, sKeyName, sValueName = "", sValue = "") {
        HKEY_CLASSES_ROOT   := 0x80000000   ; http://msdn.microsoft.com/en-us/library/aa393286.aspx
        HKEY_CURRENT_USER   := 0x80000001
        HKEY_LOCAL_MACHINE  := 0x80000002
        HKEY_USERS          := 0x80000003
        HKEY_CURRENT_CONFIG := 0x80000005
        HKEY_DYN_DATA       := 0x80000006
        HKCR := HKEY_CLASSES_ROOT
        HKCU := HKEY_CURRENT_USER
        HKLM := HKEY_LOCAL_MACHINE
        HKU  := HKEY_USERS
        HKCC := HKEY_CURRENT_CONFIG
        
        REG_NONE                := 0    ; http://msdn.microsoft.com/en-us/library/ms724884.aspx
        REG_SZ                  := 1
        REG_EXPAND_SZ           := 2
        REG_BINARY              := 3
        REG_DWORD               := 4
        REG_DWORD_BIG_ENDIAN    := 5
        REG_LINK                := 6
        REG_MULTI_SZ            := 7
        REG_RESOURCE_LIST       := 8

        KEY_QUERY_VALUE := 0x0001   ; http://msdn.microsoft.com/en-us/library/ms724878.aspx
        KEY_WOW64_64KEY := 0x0100   ; http://msdn.microsoft.com/en-gb/library/aa384129.aspx (do not redirect to Wow6432Node on 64-bit machines)
        KEY_SET_VALUE   := 0x0002
        KEY_WRITE       := 0x20006
        
        myhKey := %sRootKey%            ; pick out value (0x8000000x) from list of HKEY_xx vars
        myValueType := %sValueType%     ; pick out value (0-8) from list of REG_SZ,REG_DWORD etc. types
        IfEqual,myhKey,, {      ; Error - Invalid root key
            ErrorLevel := 3
            return ErrorLevel
        }
        IfEqual,myValueType,, { ; Error - Invalid value type
            ErrorLevel := 2
            return ErrorLevel
        }
        
        RegAccessRight := KEY_QUERY_VALUE + KEY_WOW64_64KEY + KEY_WRITE
        
        DllCall("Advapi32.dll\RegCreateKeyExA", "uint", myhKey, "str", sKeyName, "uint", 0, "uint", 0, "uint", 0, "uint", RegAccessRight, "uint", 0, "uint*", hKey) ; open/create key
        If (myValueType == REG_SZ or myValueType == REG_EXPAND_SZ) {
            vValueSize := StrLen(sValue) + 1
            DllCall("Advapi32.dll\RegSetValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", myValueType, "str", sValue, "uint", vValueSize)  ; write string
        } Else If (myValueType == REG_DWORD) {
            vValueSize := 4
            DllCall("Advapi32.dll\RegSetValueExA", "uint", hKey, "str", sValueName, "uint", 0, "uint", myValueType, "uint*", sValue, "uint", vValueSize)    ; write dword
        } Else {        ; REG_MULTI_SZ, REG_BINARY, or other unsupported value type
            ErrorLevel := 2
        }
        DllCall("Advapi32.dll\RegCloseKey", "uint", hKey)
        return ErrorLevel
    }

    ExtractData(pointer) {  ; http://www.autohotkey.com/forum/viewtopic.php?p=91578#91578 SKAN
        Loop {
                errorLevel := ( pointer+(A_Index-1) )
                Asc := *( errorLevel )
                IfEqual, Asc, 0, Break ; Break if NULL Character
                String := String . Chr(Asc)
            }
        Return String
    }

    ; --------------------------------------------------------------------------------------------------------------------------------------

}

/*
 
Нет никаких гарантий, что эти функции останутся именованными одинаковыми, поэтому не рекомендуется ссылаться на что-либо здесь в вашем скрипте.

Если вам нужен доступ к материалам здесь, запросите обновление библиотеки
*/

Class ADHD_Private {
; ЧАСТНЫЙ класс - Авторы сценариев НЕ должны иметь прямой доступ к материалам здесь

; Конструктор - init значения по умолчанию
    __New(){
        this.core_version := "3.3.4"

        this.instantiated := 1
        this.hotkeys_enabled := 0
        this.hotkey_list := []                                  ; list of all possible hotkeys
        this.defined_hotkeys := {limit_app_on: 0, limit_app: "", hotkey_cache: []}                              ; в настоящее время определенные горячие клавиши
        this.author_macro_name := "Default script"               ; Изменить это to your macro name
        this.author_version := 1.0                            ; Версия number of your script
        this.author_name := "Unknown"                           ; Ваше имя
        this.author_link := ""
        
        this.limit_app := ""
        this.gui_w := 400 ; размеры главного окна высота
        this.gui_h := 250 ; ширина
        this.guis_used := 0                ; Ваше имя 1 = Main GUI, 2 = Debug Window, 3 = Bind popup
        
        this.ini_version := 1
        this.write_version := 1             ; установите 0, чтобы прекратить запись version to INI file on exit
        
        ; Hooks
        this.events := {}
        ;this.events.profile_load := ""
        this.events.option_changed := ""
        this.events.tab_changed := ""
        this.events.on_exit := ""
        this.events.app_active := ""        ; установите 0, чтобы прекратить запись into focus
        this.events.app_inactive := ""      ; Когда выходит приложение «Limited» of focus
        this.events.bind_mode_on := ""      ; Режим привязки запущен
        this.events.bind_mode_off := ""     ; Режим привязки остановлен
        this.events.functionality_toggled := ""     ; Режим привязки остановлен
        
        this.limit_app_w := -1              ; Используется для detection
        this.limit_app_h := -1
        this.limit_app_last_w := -1
        this.limit_app_last_h := -1
        this.tab_list := Array("Main") ; название главной вкладки, по-умолчанию Main
        
        this.x64_warning := 1
        this.noaction_warning := 1
; убрать расширение от конца имени скрипта для основы имени INI
        ;this.ini_name := this.build_ini_name()
        this.build_ini_name()
        
        this.functionality_enabled := 1

; Построить список «конечных ключей» для команды ввода
        this.EXTRA_KEY_LIST := "{Escape}"   ; DO NOT REMOVE! - Used to quit binding
        ; Standard non-printables
        this.EXTRA_KEY_LIST .= "{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}"
        this.EXTRA_KEY_LIST .= "{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BackSpace}{Pause}{Space}"
        ; Numpad - Numlock ON
        this.EXTRA_KEY_LIST .= "{Numpad0}{Numpad1}{Numpad2}{Numpad3}{Numpad4}{Numpad5}{Numpad6}{Numpad7}{Numpad8}{Numpad9}{NumpadDot}{NumpadMult}{NumpadAdd}{NumpadSub}"
        ; Numpad - Numlock OFF
        this.EXTRA_KEY_LIST .= "{NumpadIns}{NumpadEnd}{NumpadDown}{NumpadPgDn}{NumpadLeft}{NumpadClear}{NumpadRight}{NumpadHome}{NumpadUp}{NumpadPgUp}{NumpadDel}"
        ; Numpad - Common
        this.EXTRA_KEY_LIST .= "{NumpadMult}{NumpadAdd}{NumpadSub}{NumpadDiv}{NumpadEnter}"
; Вещи, которые мы можем или не можем поймать в ловушку
        ;EXTRA_KEY_LIST .= "{Numlock}"
        this.EXTRA_KEY_LIST .= "{Capslock}"
        ;EXTRA_KEY_LIST .= "{PrintScreen}"
; Клавиши браузера
        this.EXTRA_KEY_LIST .= "{Browser_Back}{Browser_Forward}{Browser_Refresh}{Browser_Stop}{Browser_Search}{Browser_Favorites}{Browser_Home}"
; Медиа клавиши
        this.EXTRA_KEY_LIST .= "{Volume_Mute}{Volume_Down}{Volume_Up}{Media_Next}{Media_Prev}{Media_Stop}{Media_Play_Pause}"
; Ключи приложения
        this.EXTRA_KEY_LIST .= "{Launch_Mail}{Launch_Media}{Launch_App1}{Launch_App2}"

        this.BindMode := 0
        this.HKModifierState := {}  ; Состояние модификаторов в конце последней последовательности обнаружения
        this.HKControlType := 0     ; Вид контроля, который последняя горячая клавиша was. 0 = regular key, 1 = solitary modifier, 2 = mouse, 3 = joystick
        this.HKSecondaryInput := "" ; Установите для кнопки, нажатой, если последней обнаруженной привязкой была кнопка мыши, кнопка джойстика или одиночный модификатор
        this.HKLastHotkey := 0          ; Время, когда была нажата Escape для выхода из привязки клавиш Используется для определения того, удерживается ли Escape (Очистить привязку)
    }

    /*
Функции для обработки постоянного хранения данных
    */

    /*
; Обновляет файл настроек. Если значение по умолчанию, он удаляет настройки, чтобы сохранить файл в максимально чистом виде
    update_ini(key, section, value, default){
        update_fn := this.asynch_update_ini.bind(this, key, section, value, default)
        SetTimer % update_fn, -0
    }
    */

    /*
; Асинхронно обновлять INI-файл
; Если INI хранится на жестком диске, который выключен, это остановит зависание скрипта при изменении настроек
    asynch_update_ini(key, section, value, default){
    */
; Обновляет файл настроек. Если значение по умолчанию, он удаляет настройки, чтобы сохранить файл в максимально чистом виде
    update_ini(key, section, value, default){
        if (value != default){
            ; Пишите только значение, если оно отличается от того, что уже написано
            if (this.read_ini(key,section,-1) != value){
                IniWrite,  %value%, % this.ini_name, %section%, %key%
            }
        } else {
            ; Удалить значение только в том случае, если оно уже есть
            if (this.read_ini(key,section,-1) != -1){
                IniDelete, % this.ini_name, %section%, %key%
            }
        }
    }
    
    read_ini(key,section,default){
        sleep 0
        ini := this.ini_name
        IniRead, out, %ini%, %section%, %key%, %default%
        return out
    }

    build_ini_name(){
        tmp := A_Scriptname
        Stringsplit, tmp, tmp,.
        ini_name := ""
        last := ""
        Loop, % tmp0
        {
            if (last != ""){
                if (ini_name != ""){
                    ini_name := ini_name "."
                }
                ini_name := ini_name last
            }
            last := tmp%A_Index%
        }
        this.ini_name := ini_name ".ini"
        return
    }

    /*
     
Частные версии геттеров и сеттеров.
Немного ленивый, но не важная персона
    */

; Устанавливает версию INI для записи.
    config_ini_version(ver){
        this.ini_version := ver
    }

    get_macro_name(){
        return this.author_macro_name
    }
    
    limit_app_get_size(){
        return {w: this.limit_app_w, h:this.limit_app_h}
    }
    
    limit_app_get_last_size(){
        return {w: this.limit_app_last_w, h:this.limit_app_last_h}  
    }
    
    limit_app_is_active(){
        if (this.app_act_curr){
            return true
        } else {
            return false
        }
    }

    get_gui_h(){
        return this.gui_h
    }
    
    get_gui_w() {
        return this.gui_w
    }
    
    get_limit_app_on() {
        global adhd_limit_application_on
; Получает состояние флажка Limit App
        return adhd_limit_application_on
    }
    
    get_limit_app() {
        global adhd_limit_application
; Получает состояние флажка Limit App
        return adhd_limit_application
    }
    
    /*

; Попытки прочитать версию из текстового файла по указанному URL
    get_ver(url){
        if (url == ""){
            return 0
        }
        
        pwhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        pwhr.Open("GET",url) 
        pwhr.Send()
        ret := pwhr.ResponseText
        
        ; Cater for 404s etc
        if (InStr(ret, "<html>")){
            return 0
        }       
        
        ret := this.download_to_string(url)
        out := {}
        
        Loop, Parse, ret, `n`r, %A_Space%%A_Tab%
        {
            c := SubStr(A_LoopField, 1, 1)
            if (c="[")
                ;key := SubStr(A_LoopField, 2, -1)
                continue
            else if (c=";")
                continue
            else {
                p := InStr(A_LoopField, "=")
                if p {
                    k := SubStr(A_LoopField, 1, p-1)
                    try {
                        out[%k%] := SubStr(A_LoopField, p+1)
                    } catch {
                        return 0
                    }
                }
            }
        }
        if (out[version] == ""){
            return 0
        }
        return out[version]
    }


    download_to_string(url, encoding = "utf-8") {
        ; Код Benschi, from http://ahkscript.org/boards/viewtopic.php?f=6&t=3291#p16243
        static a := "AutoHotkey/" A_AhkVersion
        if (!DllCall("LoadLibrary", "str", "wininet") || !(h := DllCall("wininet\InternetOpen", "str", a, "uint", 1, "ptr", 0, "ptr", 0, "uint", 0, "ptr")))
            return 0
        c := s := 0, o := ""
        if (f := DllCall("wininet\InternetOpenUrl", "ptr", h, "str", url, "ptr", 0, "uint", 0, "uint", 0x80003000, "ptr", 0, "ptr"))
        {
            while (DllCall("wininet\InternetQueryDataAvailable", "ptr", f, "uint*", s, "uint", 0, "ptr", 0) && s > 0)
            {
                VarSetCapacity(b, s, 0)
                DllCall("wininet\InternetReadFile", "ptr", f, "ptr", &b, "uint", s, "uint*", r)
                o .= StrGet(&b, r >> (encoding = "utf-16" || encoding = "cp1200"), encoding)
            }
            DllCall("wininet\InternetCloseHandle", "ptr", f)
        }
        DllCall("wininet\InternetCloseHandle", "ptr", h)
        return o
    }
    */

    ; Семантическая версия сравнения from http://www.autohotkey.com/board/topic/81789-semverahk-compare-version-numbers/
    semver_validate(version){
        return !!RegExMatch(version, "^(\d+)\.(\d+)\.(\d+)(\-([0-9A-Za-z\-]+\.)*[0-9A-Za-z\-]+)?(\+([0-9A-Za-z\-]+\.)*[0-9A-Za-z\-]+)?$")
    }

    semver_parts(version, byRef out_major, byRef out_minor, byRef out_patch, byRef out_prerelease, byRef out_build){
        return !!RegExMatch(version, "^(?P<major>\d+)\.(?P<minor>\d+)\.(?P<patch>\d+)(\-(?P<prerelease>([0-9A-Za-z\-]+\.)*([0-9A-Za-z\-]+)))?(\+?(?P<build>([0-9A-Za-z\-]+\.)*([0-9A-Za-z\-]+)))?$", out_)
    }

    semver_compare(version1, version2){
        if (!this.semver_parts(version1, maj1, min1, pat1, pre1, bld1))
            throw Exception("Invalid version: " version1)
        if (!this.semver_parts(version2, maj2, min2, pat2, pre2, bld2))
            throw Exception("Invalid version: " version2)
     
        for each, part in ["maj", "min", "pat"]
        {
            %part%1 += 0, %part%2 += 0
            if (%part%1 < %part%2)
                return -1
            else if (%part%1 > %part%2)
                return +1
        }
     
        for each, part in ["pre", "bld"] ; { "pre" : 1, "bld" : -1 }
        {
            if (%part%1 && %part%2)
            {
                StringSplit part1_, %part%1, .
                StringSplit part2_, %part%2, .
                Loop % part1_0 < part2_0 ? part1_0 : part2_0 ; use the smaller amount of parts
                {
                    if part1_%A_Index% is digit
                    {
                        if part2_%A_Index% is digit ; both are numeric: compare numerically
                        {
                            part1_%A_Index% += 0, part2_%A_Index% += 0
                            if (part1_%A_Index% < part2_%A_Index%)
                                return -1
                            else if (part1_%A_Index% > part2_%A_Index%)
                                return +1
                            continue
                        }
                    }
; хотя бы один не числовой: сравнить по символам
                    if (part1_%A_Index% < part2_%A_Index%)
                        return -1
                    else if (part1_%A_Index% > part2_%A_Index%)
                        return +1
                }
; все сравниваемые части были равны - чем дольше выигрывает
                if (part1_0 < part2_0)
                    return -1
                else if (part1_0 > part2_0)
                    return +1
            }
            else if (!%part%1 && %part%2) ; only version2 has prerelease -> version1 is higher
                return (part == "pre") ? +1 : -1
            else if (!%part%2 && %part%1) ; only version1 has prerelease -> it is smaller
                return (part == "pre") ? -1 : +1
        }
        return 0
    }

; Номера версий пэда должны иметь как минимум 3 цифры (x.y.z).
    pad_version(ver){
        stringsplit, ver, ver,.

        if (ver0 < 3){
            ctr := 3-ver0
            Loop, %ctr% {
                ver .= ".0"
            }
        }
        return ver
    }

; Создание всплывающих подсказок для основных сценариев и версий сценариев авторов
/*
    version_tooltip_create(diff,rem,loc){
        tt := ""

        if (diff == 0){
            tt .= "Same (" loc ")"
        } else if (diff > 0){
            tt .= "Newer (" rem ", you have " loc ")"
        } else {
            tt .= "Older (" rem ", you have " loc ")"
        }

        return tt
    }


    /*
  
    */

    tab_changed(){
        Gui, Submit, NoHide
        this.fire_event(this.events.tab_changed)
        return
    }

; Вызывается при выходе из приложения
    exit_app(){
        Gui, +Hwndgui_id
        WinGetPos, gui_x, gui_y,,, ahk_id %gui_id%
        ini := this.ini_name
        if (this.read_ini("adhd_gui_x","Settings", -1) != gui_x && gui_x >= 0){
            IniWrite, %gui_x%, %ini%, Settings, adhd_gui_x
        }
        if (this.read_ini("gui_y","Settings", -1) != gui_y && gui_x >= 0){
            IniWrite, %gui_y%, %ini%, Settings, adhd_gui_y
        }

        if (this.write_version){
            tmp := this.ini_version
            IniWrite, %tmp%, %ini%, Settings, adhd_ini_version
        }
        this.fire_event(this.events.on_exit)
        ; IniWrite, 1, %ini%, Settings, df
        ExitApp
        return
    }

/*
; Запускает событие.
    ; В основном выполняет строку как функцию
    ; Строка проверки не пуста первой
*/
    fire_event(event){
        if (event && event != ""){
            %event%()
        }
    }
    
    /*
    */

; Преобразует имя элемента управления (например, DropDownList) в параметр, переданный в GuiControl, чтобы установить это значение (например, ChooseString)
    control_name_to_set_method(name){
        if (name == "DropDownList"){
            return "ChooseString"
        } else {
            return ""
        }
    }

; Добавить и удалить glabel полезно потому что:
; Когда вы используете GuiControl, чтобы установить содержимое редактирования ...
; .. это глабель уволен.
; Так что удалите glabel, установите значение в поле редактирования, заново добавьте glabel, чтобы решить
    add_glabel(ctrl){
        GuiControl, +gadhd_option_changed, %ctrl%
    }

    remove_glabel(ctrl){
        GuiControl, -g, %ctrl%
    }

    set_profile_statusbar(){
        cp := this.current_profile
        GuiControl,,CurrentProfile,%cp%
    }

    /*
    */

    enable_hotkeys(){
        global adhd_limit_application
        global adhd_limit_application_on

        if (!this.hotkeys_enabled){
            this.hotkeys_enabled := 1
; ToDo: Не следует отправлять GUI здесь, вызывая сохранение ...            ; this.debug("enable_hotkeys")
            
            Gui, Submit, NoHide
            this.defined_hotkeys.hotkey_cache := []
            cache_idx := 1

            this.joystick_lookup := {}

            Loop % this.hotkey_list.MaxIndex(){
                name := this.hotkey_index_to_name(A_Index)
                if (this.hotkey_mappings[name].modified != ""){
                    ;msgbox % this.hotkey_mappings[name].modified " -> " this.hotkey_list[A_Index,"subroutine"]
                    hotkey_string := this.hotkey_mappings[name].modified
                    hotkey_subroutine := this.hotkey_list[A_Index,"subroutine"]

; Применить опцию «Ограничить приложение»
                    if (adhd_limit_application_on == 1 && adhd_limit_application !=""){
                        limit_app_on := 1
; Включить приложение ограничения для всех впоследствии объявленных горячих клавиш
                        Hotkey, IfWinActive, ahk_class %adhd_limit_application%
                    } else {
                        limit_app_on := 0
; Отключить приложение ограничения для всех впоследствии объявленных горячих клавиш
                        Hotkey, IfWinActive
                    }

; Привязать действие горячей клавиши
                    prefix := ""
                    if (this.hotkey_mappings[name].passthru){
                        prefix .= "~"
                    }
                    if (this.hotkey_mappings[name].wild){
                        prefix .= "*"
                    }

; Если тип джойстика, перенаправить на joystick_handler
                    if (this.hotkey_mappings[name].type == 3){
                        hotkey_subroutine := "adhd_joystick_handler"
                        this.joystick_lookup[hotkey_string] := name
                    }
                    Hotkey, %prefix%%hotkey_string% , %hotkey_subroutine%, On
                    
                    this.debug("Adding hotkey: " prefix hotkey_string ", sub: " hotkey_subroutine ", wild: " this.hotkey_mappings[name].wild ", passthru: " this.hotkey_mappings[name].passthru)

                    this.defined_hotkeys.hotkey_cache[cache_idx] := {string: prefix hotkey_string, noprefix: hotkey_string, subroutine: hotkey_subroutine}
                    cache_idx++
                    this.defined_hotkeys.limit_app_on := limit_app_on
                    this.defined_hotkeys.limit_app := adhd_limit_application

                    if (IsLabel(hotkey_subroutine "Up") && this.hotkey_mappings[name].type != 3){
; Связать действие горячей клавиши
                        ;Hotkey, %prefix%%hotkey_string% up , %hotkey_subroutine%Up
                        Hotkey, %prefix%%hotkey_string% up , %hotkey_subroutine%Up, On
                    }

; Отключить приложение ограничения для всех впоследствии объявленных горячих клавиш
                    Hotkey, IfWinActive
; ToDo: Up событие не срабатывает для "кнопок" колеса - отправить событие dupe или что-то еще?

                }
            }
            this.enable_heartbeat()
        }
    }

    disable_hotkeys(mode){
        global adhd_limit_application
        global adhd_limit_application_on

        if (this.hotkeys_enabled){
            this.hotkeys_enabled := 0
            ;this.debug("disable_hotkeys")
            this.disable_heartbeat()

; Если "Functionality Toggle" определен и 1 передан как режим, не отключайте последнюю горячую клавишу (Functionality Toggle)
            max := this.defined_hotkeys.hotkey_cache.MaxIndex()
            
            limit_app_on := this.defined_hotkeys.limit_app_on
            limit_app := this.defined_hotkeys.limit_app

; Если есть записи для обработки ...
            if (max){
; Установить режим ограничения приложения
                if (limit_app_on){
                    Hotkey, IfWinActive, ahk_class %limit_app%
                } else {
                    Hotkey, IfWinActive
                }
            }

            Loop % max {
                str := this.defined_hotkeys.hotkey_cache[A_Index].string
                sub := this.defined_hotkeys.hotkey_cache[A_Index].subroutine
                
                this.debug("Removing hotkey: " str ", sub: " sub)

                if (mode && (this.defined_hotkeys.hotkey_cache[A_Index].subroutine = "adhd_functionality_toggle" || this.joystick_lookup[this.defined_hotkeys.hotkey_cache[A_Index].noprefix] == "adhd_functionality_toggle")){
                    continue
                }
                ;if (this.hotkey_mappings[sub].type == 3){
                ;   this.joystick_lookup.remove(hotkey_string)
                ;}

                ;Hotkey, %str%, %sub%, Off
                Hotkey, %str%, Off
                if (IsLabel(sub "Up") && this.hotkey_mappings[sub].type != 3){
; Удалить действие горячей клавиши
                    ;Hotkey, %str% up , %sub%Up, Off
                    Hotkey, %str% up , Off
                }
            }

            Hotkey, IfWinActive

        }
        return
    }

; AHK не поддерживает события Up для горячих клавиш джойстика - например, горячая клавиша "1Joy1 Up" срабатывает при нажатии кнопки.
; Перехватывать сопоставления кнопок джойстика и моделировать событие.
    joystick_handler(){
        hotkey_string := this.strip_prefix(A_ThisHotkey)
        hotkey_subroutine := this.joystick_lookup[hotkey_string]
        Gosub % hotkey_subroutine

        while(GetKeyState(hotkey_string)){
            ; do nothing
        }

        if (IsLabel(hotkey_subroutine "Up")){
            Gosub % hotkey_subroutine "Up"
        }
    }

; Кнопка джойстика была нажата во время привязки.
; Установите соответствующие флаги и выйдите из программы побега
    bind_joystick_button(){
        this.HKControlType := 3

; Грязная починка из-за ограничения AHK
        this.HKSecondaryInput := this.strip_prefix(A_ThisHotkey)

; Отправьте escape, чтобы выйти из подпрограммы bind - подпрограмма bind проверит флаги.
        Send {Escape}
    }

; Удаляет (очищает) горячую клавишу - вызывается в конце таймера, а не для функций общего назначения
    delete_hotkey(){
        soundbeep
        this.disable_hotkeys()
        name := this.hotkey_index_to_name(this.HKLastHotkey)
        this.hotkey_mappings[name].modified := ""
        this.hotkey_mappings[name].type := 0
        
        this.option_changed()
        return
    }

; В некоторых играх они не будут запускать автозапуск, если кнопка запуска все еще удерживается ...
; даже если ключ запуска не является ключом, отправленным и ничего не делает в игре
; Часто обходным решением является отправка ключа запускающего ключа
; Вызов send_keyup_on_press () в действии вызовет это
    send_keyup_on_press(sub,mod){
        tmp := this.hotkey_mappings[sub][mod] " up"
        Send {%tmp%}
    }

; Обнаруживает комбинации клавиш
    set_binding(ctrlnum) {
        global adhd_limit_application_on

        this.fire_event(this.events.bind_mode_on)

; init vars
        this.HKControlType := 0
        this.HKModifierState := {ctrl: 0, alt: 0, shift: 0, win: 0}

; Отключить существующие горячие клавиши
        this.disable_hotkeys(0)

; Включить джойстик для определения горячих клавиш
        this.joystick_detection(1)

; Start Bind Mode - запускает обнаружение кнопок мыши и клавиш-модификаторов
        this.BindMode := 1

; Отключите заглавные буквы, если включено
        caps_state := GetKeyState("Capslock", "T") 
        if (caps_state) {
            SetCapsLockState, Off
        }


; Показать инструкции
        Gui, 3:Show

        outhk := ""

        EXTRA_KEY_LIST := this.EXTRA_KEY_LIST

        Input, detectedkey, L1 M, %EXTRA_KEY_LIST%

; Скрыть инструкции
        Gui, 3:Submit

        if (substr(ErrorLevel,1,7) == "EndKey:"){
; Нажата «Специальная» (не для печати) клавиша
            tmp := substr(ErrorLevel,8)
            detectedkey := tmp
            if (tmp == "Escape"){
; Обнаружение закончилось побегом
                if (this.HKControlType > 0){
; Клавиша Escape была отправлена, потому что была использована специальная кнопка
                    detectedkey := this.HKSecondaryInput
                } else {
                    detectedkey := ""
; Начните слушать событие key up для Escape, чтобы увидеть, проводилось ли оно
                    this.HKLastHotkey := ctrlnum

                    hotkey, Escape up, adhd_escape_released, ON
                    SetTimer, adhd_delete_hotkey, 1000
                }
            }
        }

; Хватит слушать мышь, клавиатуру
        this.BindMode := 0

; включите заглавные буквы, если он был включен
        if (caps_state){
            SetCapsLockState, On
        }

        this.joystick_detection(0)

        ;msgbox % detectedkey "`n" this.HKModifierState.ctrl
        ;msgbox % detectedkey "`n" this.HKControlType "`n" this.HKSecondaryInput

; Результаты процесса

        modct := this.current_modifier_count()

        if (detectedkey && modct && this.HKControlType == 3){
            msgbox ,,Error, Модификаторы (Ctrl, Alt, Shift, Win) в настоящее время не поддерживаются с помощью кнопок джойстика.
            detectedkey := ""
        }

        if (detectedkey){
            if ( (adhd_limit_application_on == 0) && (detectedkey = "lbutton" || detectedkey = "rbutton") ) {
                GuiControl,, adhd_hk_passthru_%ctrlnum%, 1
                GuiControl, Disable, adhd_hk_passthru_%ctrlnum%
            } else {
                GuiControl, Enable, adhd_hk_passthru_%ctrlnum%
            }
            clash := 0
            hk := this.build_hotkey_string(detectedkey,this.HKControlType)
            clash := 0
            Loop % this.hotkey_list.MaxIndex(){
                if (A_Index == ctrlnum){
                    continue
                }

                name := this.hotkey_index_to_name(A_Index)
                if (this.hotkey_mappings[name].modified != "" && this.strip_prefix(this.hotkey_mappings[name].modified) == this.strip_prefix(hk)){
                    clash := 1
                }
            }
            if (clash){
                msgbox Вы не можете привязать одну и ту же горячую клавишу к двум различным действиям.
            } else {
                this.hotkey_mappings[this.hotkey_index_to_name(ctrlnum)].modified := hk
                this.hotkey_mappings[this.hotkey_index_to_name(ctrlnum)].type := this.HKControlType
    
            }
; Перестройте остальные объекты горячих клавиш, сохраните настройки и т. Д.
            this.option_changed()
        } else {
; Нажата Escape - восстановить оригинальную горячую клавишу, если есть
            this.enable_hotkeys()
        }
        this.fire_event(this.events.bind_mode_off)
        return

    }

; Добавляет / удаляет джойстик для включения кнопок джойстика
    joystick_detection(mode){
        /*
        if (mode){
            mode := "ON"
        } else {
            mode := "OFF"
        }
        */
        ;Hotkey, IfWinActive
        Loop , 16 {
            stickid := A_Index
            Loop, 32 {
                buttonid := A_Index
                if (mode){
                    hotkey, %stickid%Joy%buttonid%, adhd_bind_joystick_button, On
                } else {
                    hotkey, %stickid%Joy%buttonid%, Off
                }
            }
        }
    }

    ; Создает удобочитаемую форму строки горячих клавиш (eg "^C" -> "CTRL + C")
    build_hotkey_name(hk,ctrltype){
        outstr := ""
        modctr := 0
        stringupper, hk, hk

        Loop % strlen(hk) {
            chr := substr(hk,1,1)
            mod := 0

            if (chr == "^"){
                ; Ctrl
                mod := "CTRL"
                modctr++
            } else if (chr == "!"){
                ; Alt
                mod := "ALT"
                modctr++
            } else if (chr == "+"){
                ; Shift
                mod := "SHIFT"
                modctr++
            } else if (chr == "#"){
                ; Win
                mod := "WIN"
                modctr++
            } else {
                break
            }
            if (mod){
                if (modctr > 1){
                    outstr .= " + "
                }
                outstr .= mod
; сдвинуть персонажа
                hk := substr(hk,2)
            }
        }
        if (modctr){
            outstr .= " + "
        }

        if (ctrltype == 1){
; Одиночные Модификаторы
            pfx := substr(hk,1,1)
            if (pfx == "L"){
                outstr .= "LEFT "
            } else {
                outstr .= "RIGHT "
            }
            outstr .= substr(hk,2)
        } else if (ctrltype == 2){
; Кнопки мыши
            if (hk == "LBUTTON") {
                outstr .= "LEFT MOUSE"
            } else if (hk == "RBUTTON") {
                outstr .= "RIGHT MOUSE"
            } else if (hk == "MBUTTON") {
                outstr .= "MIDDLE MOUSE"
            } else if (hk == "XBUTTON1") {
                outstr .= "MOUSE THUMB 1"
            } else if (hk == "XBUTTON2") {
                outstr .= "MOUSE THUMB 2"
            } else if (hk == "WHEELUP") {
                outstr .= "MOUSE WHEEL U"
            } else if (hk == "WHEELDOWN") {
                outstr .= "MOUSE WHEEL D"
            } else if (hk == "WHEELLEFT") {
                outstr .= "MOUSE WHEEL L"
            } else if (hk == "WHEELRIGHT") {
                outstr .= "MOUSE WHEEL R"
            }
        } else if (ctrltype == 3){
; Кнопки джойстика
            pos := instr(hk,"JOY")
            id := substr(hk,1,pos-1)
            button := substr(hk,5)
            outstr .= "JOYSTICK " id " BTN " button
        } else {
; Клавиши клавиатуры
            tmp := instr(hk,"NUMPAD")
            if (tmp){
                outstr .= "NUMPAD " substr(hk,7)
            } else {
; Заменить подчеркивание пробелами (в случае имени ключа, например MEDIA_PLAY_PAUSE)
                StringReplace, hk, hk, _ , %A_SPACE%, All
                outstr .= hk
            }
        }
        return outstr
    }

; Создает строку AHK (например, «c» для CTRL  C) из последней обнаруженной горячей клавиши
    build_hotkey_string(str, type := 0){

        outhk := ""
        modct := this.current_modifier_count()

        if (type == 1){
; Используется одиночная клавиша-модификатор (например, левый / правый Alt)
            outhk := str
        } else {
            if (modct){
; Модификаторы, используемые в сочетании с чем-то еще - Список модификаторов в определенном порядке
                modifiers := ["CTRL","ALT","SHIFT","WIN"]

                Loop, 4 {
                    key := modifiers[A_Index]
                    value := this.HKModifierState[modifiers[A_Index]]
                    if (value){
                        if (key == "CTRL"){
                            outhk .= "^"
                        } else if (key == "ALT"){
                            outhk .= "!"
                        } else if (key == "SHIFT"){
                            outhk .= "+"
                        } else if (key == "WIN"){
                            outhk .= "#"
                        }
                    }
                }
            }
; Обработанные модификаторы и т. Д. Дополните
            outhk .= str
        }

        return outhk
    }

; Устанавливает состояние объекта HKModifierState для отражения состояния клавиш-модификаторов.
    set_modifier(hk,state){
        if (hk == "lctrl" || hk == "rctrl"){
            this.HKModifierState.ctrl := state
        } else if (hk == "lalt" || hk == "ralt"){
            this.HKModifierState.alt := state
        } else if (hk == "lshift" || hk == "rshift"){
            this.HKModifierState.shift := state
        } else if (hk == "lwin" || hk == "rwin"){
            this.HKModifierState.win := state
        }
        return
    }

; Подсчитывает, сколько клавиш-модификаторов в настоящее время удерживается
    current_modifier_count(){
        return this.HKModifierState.ctrl + this.HKModifierState.alt + this.HKModifierState.shift  + this.HKModifierState.win
    }

    hotkey_index_to_name(idx){
        return this.hotkey_list[idx,"subroutine"]
    }

; Удаляет префиксы ~ * etc (но НЕ модификаторы Из объекта горячей клавиши для сравнения)
    strip_prefix(hk){
        Loop {
            chr := substr(hk,1,1)
            if (chr == "~" || chr == "*" || chr == "$"){
                hk := substr(hk,2)
            } else {
                break
            }
        }
        return hk
    }


    ; Удаляет ^ ! + # модификаторы из объекта горячей клавиши для сравнения
    strip_modifiers(hk){
        hk := this.strip_prefix(hk)

        Loop {
            chr := substr(hk,1,1)
            if (chr == "^" || chr == "!" || chr == "+" || chr == "#"){
                hk := substr(hk,2)
            } else {
                break
            }
        }
        return hk
    }

/*
; Включает или выключает все горячие клавиши
    functionality_toggle(){
        if (this.functionality_enabled){
            this.functionality_enabled := 0
            this.disable_hotkeys(1)
            this.fire_event(this.events.functionality_toggled)
            soundbeep, 400, 200
; передайте 1 в качестве параметра для disable_hotkeys, чтобы сказать ему, чтобы не отключать функцию переключения
        } else {
            this.functionality_enabled := 1
            this.enable_hotkeys()
            this.fire_event(this.events.functionality_toggled)
            soundbeep, 800, 200
        }
    }

    
    /*
    */

    add_profile(name){
        global adhd_current_profile
        
        Loop, {
            if (name == ""){
                InputBox, name, Profile Name, Пожалуйста введите имя профиля
                if (ErrorLevel){
                    return
                }
            }
            if (this.profile_unique(name)){
                break
            } else {
                msgbox Повторные имена не допускаются, пожалуйста, введите имя еще раз.
                name := ""
            }
        }
        if (this.profile_list == ""){
            this.profile_list := name
        } else {
            this.profile_list := this.profile_list "|" name
        }
        pl := this.profile_list
        Sort, pl, D|
        this.profile_list := pl
        
        GuiControl,, adhd_current_profile, |Default||%pl%
        GuiControl,ChooseString, adhd_current_profile, %name%
        adhd_current_profile := name
        this.update_ini("adhd_profile_list", "Settings", this.profile_list, "")
; Вызовите загрузку профиля на несуществующий профиль, чтобы принудительно установить настройки по умолчанию и сбросить интерфейс
        this.profile_changed()
; Сохранять не нужно - профиль по умолчанию
        return name
    }

; Удаляет профиль
    delete_profile(name, gotoprofile = "Default"){
        Global adhd_current_profile
        
        if (name != "Default"){
            pl := this.profile_list
            StringSplit, tmp, pl, |
            out := ""
            Loop, %tmp0%{
                if (tmp%a_index% != name){
                    if (out != ""){
                        out := out "|"
                    }
                    out := out tmp%a_index%
                }
            }
            pl := out
            this.profile_list := pl
            
            ini := this.ini_name
            IniDelete, %ini%, %name%
            this.update_ini("adhd_profile_list", "Settings", this.profile_list, "")     
            
; Установить новое содержимое списка
            GuiControl,, adhd_current_profile, |Default|%pl%
            
; Выберите желаемый новый текущий профиль
            GuiControl, ChooseString, adhd_current_profile, %gotoprofile%
            
; Триггер сохранить
            Gui, Submit, NoHide
            
            this.profile_changed()
        }
        return
    }

; Копирует профиль
    duplicate_profile(name){
        global adhd_current_profile
        
        Loop, {
; Указано пустое имя - запрос имени
            if (name == ""){
                InputBox, name, Profile Name, Пожалуйста введите имя профиля,,,,,,,,%adhd_current_profile%
                if (ErrorLevel){
                    return
                }
            }
            if (this.profile_unique(name)){
                break
            } else {
                msgbox Повторные имена не допускаются, Пожалуйста введите имя еще раз.
                name := ""
            }
        }
; Указано пустое имя - запрос имени
        if (this.profile_list == ""){
            this.profile_list := name
        } else {
            this.profile_list := this.profile_list "|" name
        }
        pl := this.profile_list
        Sort, pl, D|
        this.profile_list := pl
        
        this.current_profile := name
        adhd_current_profile := name
; Нажмите новый список в поле выбора профиля
        GuiControl,, adhd_current_profile, |Default||%pl%
; Установить новый профиль для текущего выбранного элемента
        GuiControl,ChooseString, adhd_current_profile, %name%
; Обновите список профилей в INI
        this.update_ini("adhd_profile_list", "Settings", this.profile_list, "")
        
; Обжигание option_changed сохраняет текущее состояние под новым именем профиля в INI.
        this.debug("duplicate_profile calling option_changed")
        this.option_changed()
        
; Профиль огня изменен для обновления текущего профиля в ini
        this.profile_changed()

        return name
    }

; Переименовывает профиль
    rename_profile(){
        old_prof := this.current_profile
        if (this.current_profile != "Default"){
            Loop {
                InputBox, new_prof, Profile Name, Пожалуйста введите имя профиля,,,,,,,,%old_prof%
                if (ErrorLevel){
                    return
                }
                if (this.current_profile == name){
                    msgbox Пожалуйста введите другое имя.
                    return
                }
                if (this.profile_unique(name)){
                    break
                } else {
                    msgbox Повторные имена не допускаются, пожалуйста введите имя еще раз.
                }
            }
            if (this.duplicate_profile(new_prof) != ""){
                this.delete_profile(old_prof,new_prof)
            }
        }
        return
    }

; Проверяет, является ли имя профиля уникальным
    profile_unique(name){
        tmp := this.profile_list
        Loop, parse, tmp, |
        {
            if (A_LoopField == name){
                return 0
            }
        }
        return 1
    }

; ака профиль нагрузки
    profile_changed(){
        global adhd_debug_mode

        global adhd_limit_application
        global adhd_limit_application_on
        global adhd_debug_window
        
; Удалите старые привязки перед сменой профиля
        ;this.disable_hotkeys(1)
        this.disable_hotkeys(0)
        
        GuiControlGet,cp,,adhd_current_profile
        this.current_profile := cp
        this.debug("profile_changed - " this.current_profile)
        Gui, Submit, NoHide

        this.update_ini("adhd_current_profile", "Settings", this.current_profile,"")
        
        ;SB_SetText("Current profile: " this.current_profile,2) 
        this.set_profile_statusbar() 
        
        this.hotkey_mappings := {}
        
; Загрузить привязки горячих клавиш
        Loop, % this.hotkey_list.MaxIndex()
        {
            name := this.hotkey_index_to_name(A_Index)

            this.hotkey_mappings[this.hotkey_index_to_name(A_Index)] := {}
            this.hotkey_mappings[this.hotkey_index_to_name(A_Index)]["index"] := A_Index

            tmp := this.read_ini("adhd_hk_hotkey_" A_Index,this.current_profile,A_Space)

            this.hotkey_mappings[name].modified := tmp

            this.hotkey_mappings[name].unmodified := this.strip_prefix(this.hotkey_mappings[name].modified)

            tmp := this.read_ini("adhd_hk_wild_" A_Index,this.current_profile,0)
            this.hotkey_mappings[name].wild := tmp
            GuiControl,, adhd_hk_wild_%A_Index%, %tmp%

            tmp := this.read_ini("adhd_hk_passthru_" A_Index,this.current_profile,1)
            this.hotkey_mappings[name].passthru := tmp
            GuiControl,, adhd_hk_passthru_%A_Index%, %tmp%

            global hotkey_fire := this.read_ini("adhd_hk_hotkey_" A_Index,this.current_profile,A_Space) 
            ; получает текущий хоткей

            tmp := this.read_ini("adhd_hk_type_" A_Index,this.current_profile,0)
            this.hotkey_mappings[name].type := tmp

            tmp := this.build_hotkey_name(this.hotkey_mappings[name].modified, this.hotkey_mappings[name].type)
            GuiControl,, adhd_hk_hotkey_%A_Index%, %tmp%
        }

  
; ограничить имя приложения
        this.remove_glabel("adhd_limit_application")
        if (this.limit_app == "" || this.limit_app == null){
            this.limit_app := A_Space
        }
        tmp := this.read_ini("adhd_limit_app",this.current_profile,this.limit_app)
        GuiControl,, adhd_limit_application, %tmp%
        this.add_glabel("adhd_limit_application")
        
        ; ограничить статус приложения
        tmp := this.read_ini("adhd_limit_app_on",this.current_profile,0)
        GuiControl,, adhd_limit_application_on, %tmp%
        
; Автоматическое переключение профилей
        tmp := this.read_ini("adhd_auto_profile_switching","Settings",0)
        GuiControl,, adhd_auto_profile_switching, % tmp
        this.auto_profile_switching := tmp
        
; Получите авторские изменения из ini
        Loop, % this.ini_vars.MaxIndex()
        {
            def := this.ini_vars[A_Index,3]
            if (def == ""){
                def := A_Space
            }
            key := this.ini_vars[A_Index,1]
            sm := this.control_name_to_set_method(this.ini_vars[A_Index,2])
            
            this.remove_glabel(key)
            tmp := this.read_ini(key,this.current_profile,def)
            GuiControl,%sm%, %key%, %tmp%
            this.add_glabel(key)
        }

; Настройки отладки
        adhd_debug_mode := this.read_ini("adhd_debug_mode","Settings",0)
        GuiControl,, adhd_debug_mode, %adhd_debug_mode%
        
        adhd_debug_window := this.read_ini("adhd_debug_window","Settings",0)
        GuiControl,, adhd_debug_window, %adhd_debug_window%

        this.enable_hotkeys()
        
        ; Уволить автора hook
        this.fire_event(this.events.option_changed)

        return
    }


; ака сохранить профиль
    option_changed(){
        global adhd_debug_mode

        global adhd_limit_application
        global adhd_limit_application_on
        global adhd_debug_window
        global adhd_auto_profile_switching

; Вытащить состояние пользовательского интерфейса через
        Gui, Submit, NoHide

; Отключите блоки Pass Thru, если не в режиме Limit App, а привязка - кнопка или кнопка
        Loop % this.hotkey_list.MaxIndex(){
            name := this.hotkey_index_to_name(A_Index)
            if ( (adhd_limit_application_on == 0 ) && (this.hotkey_mappings[name].modified = "lbutton" || this.hotkey_mappings[name].modified = "rbutton") ){
                GuiControl,, adhd_hk_passthru_%A_Index%, 1
                GuiControl, Disable , adhd_hk_passthru_%A_Index%
            } else {
                GuiControl, Enable , adhd_hk_passthru_%A_Index%
            }
        }

; Если не запускается, обновите горячие клавиши
        if (this.starting_up != 1){
            ; this.debug("option_changed - control: " A_guicontrol)

; Отключить существующие горячие клавиши
            this.disable_hotkeys(0)
            
; Горячие клавиши
            Loop % this.hotkey_list.MaxIndex(){
                name := this.hotkey_index_to_name(A_Index)

                ; Hotkey
                this.update_ini("adhd_hk_hotkey_" A_Index, this.current_profile, this.hotkey_mappings[name].modified, "") 
                ; this.update_ini - это функция IniWrite 
                tmp := this.build_hotkey_name(this.hotkey_mappings[name].modified, this.hotkey_mappings[name].type)
                GuiControl,, adhd_hk_hotkey_%A_Index%, %tmp%
                global hotkey_fire := this.read_ini("adhd_hk_hotkey_" A_Index,this.current_profile,A_Space) 
                ; получает хоткей из ini файла, чтобы устанавить в выражении While GetKeyState(wefsdf, "P")

                ; полоса ~ * и т. д .и хранить его в измененном объекте.
                this.hotkey_mappings[name].unmodified := this.strip_prefix(this.hotkey_mappings[name].modified)

                ; Тип
                this.update_ini("adhd_hk_type_" A_Index, this.current_profile, this.hotkey_mappings[name].type,0)

                ; дикий
                this.hotkey_mappings[name].wild := adhd_hk_wild_%A_Index%
                this.update_ini("adhd_hk_wild_" A_Index, this.current_profile, this.hotkey_mappings[name].wild, 0)

                ; Пройти через
                this.hotkey_mappings[name].passthru := adhd_hk_passthru_%A_Index%
                this.update_ini("adhd_hk_passthru_" A_Index, this.current_profile, this.hotkey_mappings[name].passthru, 1)
            }
            
            this.update_ini("adhd_profile_list", "Settings", this.profile_list,"")
            
; Ограничить приложение
            if (this.limit_app == "" || this.limit_app == null){
                this.limit_app := A_Space
            }
            this.update_ini("adhd_limit_app", this.current_profile, adhd_limit_application, this.limit_app)
; SB_SetText(«Текущий профиль:» this.current_profile,2)
            this.set_profile_statusbar()
            
; Ограничить приложение переключения
            this.update_ini("adhd_limit_app_on", this.current_profile, adhd_limit_application_on, 0)
            
; Переключатель приложения (НЕ для каждого профиля)
            this.update_ini("adhd_auto_profile_switching", "settings", adhd_auto_profile_switching, 0)
            
; Добавить автора Vars к этому
            Loop, % this.ini_vars.MaxIndex()
            {
                tmp := this.ini_vars[A_Index,1]
                this.update_ini(tmp, this.current_profile, %tmp%, this.ini_vars[A_Index,3])
            }

; Снова включите горячие клавиши         
            this.enable_hotkeys()

; Уволить автора hook
            this.fire_event(this.events.option_changed)
            
; Настройки отладки
            this.update_ini("adhd_debug_mode", "settings", adhd_debug_mode, 0)
            this.update_ini("adhd_debug_window", "settings", adhd_debug_window, 0)
            
        } else {
            this.debug("ignoring option_changed - " A_Guicontrol)
        }
; Создать список переключения приложений
        this.app_list := {}
        pl := "default|" this.profile_list
        StringSplit, tmp, pl, |
        Loop, %tmp0%{
            limit_app := this.read_ini("adhd_limit_app_on",tmp%a_index%,0)
            if (limit_app){
                app := this.read_ini("adhd_limit_app",tmp%a_index%,-1)
                this.app_list[app] := tmp%a_index%
            }
        }

        return
    }

    /*
    
    debug_window_change(){
        global adhd_debug_window
        
        gui, submit, nohide
        if (adhd_debug_window == 1){
            Gui, +Hwndgui_id
            WinGetPos, x, y,,, ahk_id %gui_id%
            y := y - 440
            w := this.gui_w
            Gui, 2:Show, x%x% y%y% w%w% h400, ADHD Debug Window
        } else {
            gui, 2:hide
        }

; При запуске не вызывайте option_changed, мы просто устанавливаем окно открытым или закрытым
        if (!this.starting_up){
            this.option_changed()
        }
        return
    }
*/

    debug_change(){
        gui, 2:submit, nohide
        this.option_changed()
        return
    }

    debug(msg){
        global adhd_log_contents
        global adhd_debug_mode
        global adhd_log

; Если в режиме отладки или запуска ...
        if (adhd_debug_mode || this.starting_up){
; adhd_log_contents: = adhd_log_contents "*" msg "` n "
            adhd_log_contents := "* " msg "`n " adhd_log_contents
            if (this.debug_ready){
                guicontrol,2:,adhd_log_contents, % adhd_log_contents
                ; Send CTRL-END войти контроль, чтобы сделать это scroll down.
                ; controlsend,,^{End},ahk_id %adhd_log%
                gui, 2:submit, nohide
            }
        }
    }
    
    clear_log(){
        global adhd_log_contents
        adhd_log_contents := ""
        GuiControl,,adhd_log_contents,%adhd_log_contents%
    }


    /*
     
Функции для определения того, какое приложение является текущим приложением
    */

; Обнаружение приложений
    enable_heartbeat(){
        this.debug("Enabling Heartbeat")
        global adhd_limit_application
        global adhd_limit_application_on
        
        if (adhd_limit_application_on == 1 && adhd_limit_application != ""){
            SetTimer, adhd_heartbeat, 500
        }
        return
    }

    disable_heartbeat(){
        this.debug("Disabling Heartbeat")
        SetTimer, adhd_heartbeat, Off
        return
    }

    heartbeat(){
        global adhd_limit_application
; Проверьте текущее приложение здесь.
; Не используется для включения или отключения горячих клавиш, используется для запуска или остановки макросов автора и т. Д.
        IfWinActive, % "ahk_class " adhd_limit_application
        {
            WinGetPos,,,limit_w,limit_h, % "ahk_class " adhd_limit_application
; ToDo: Bodged
            ;WinGet, tmp, MinMax, % "ahk_class " adhd_limit_application
            ;if (tmp == -1 || limit_h <= 30)
            if (limit_h <= 30){
                this.debug("Minimized app - not firing change")
                return
            }
; Если размер изменился с момента последнего сердцебиения
            if ( (this.limit_app_w != limit_w) || (this.limit_app_h != limit_h)){
                if ((this.limit_app_w == -1) && (this.limit_app_h == -1)){
                    fire_change := 0
                } else {
                    fire_change := 1
                }
                this.limit_app_last_w := this.limit_app_w
                this.limit_app_last_h := this.limit_app_h
                this.limit_app_w := limit_w
                this.limit_app_h := limit_h
                if (fire_change){
                    this.debug("Resolution change detected (" this.limit_app_last_w "x" this.limit_app_last_h " --> " this.limit_app_w "x" this.limit_app_h ")- firing change")
                    this.fire_event(this.events.resolution_changed)
                      
                } else {
                    this.debug("First detection of resolution - not firing change")
                }
            }
            this.app_active(1)
        }
        else
        {
            this.app_active(0)
        }
        return
    }

    app_active(act){
        if (act){
            if (this.app_act_curr == 0){
; Переход от неактивного к активному
                this.app_act_curr := 1
                this.debug("Firing app_active")
                this.fire_event(this.events.app_active)
            }
        } else {
            if (this.app_act_curr == 1 || this.app_act_curr == -1){
; Переключение с активного на неактивный или при запуске
; Стоп Автор Таймеры
                this.app_act_curr := 0
                
; Пожарное событие hooks
                this.debug("Firing app_inactive")
                this.fire_event(this.events.app_inactive)
                ; Gosub, adhd_disable_author_timers  ; Уволить автора hook
            }
        }
    }

    /*
    
Разные или несортированные вещи
    */


    show_window_spy(){
       ; SplitPath, A_AhkPath,,tmp
       ; tmp := tmp "\WindowSpy.ahk"
       ; IfExist, %tmp%
           ; Run, %tmp%
        DetectHiddenWindows, On
        WinGetClass, cldwws, ahk_exe notepad.exe
        global drwe := cldwws
        msgbox % drwe
    }

    update_programm(){
       ; D := 1
      ; global wef := this.read_ini("adhd_hk_hotkey_" D,this.current_profile,A_Space)
      ; Msgbox 
      ; Run "C:\Users\Azbooka_2\Desktop\ahk-wget\update.ahk"
    }


    /*
    get_hotkey_string(hk){
        ; Получить строку горячих клавиш - может быть клавиатура или мышь
        tmp := adhd_hk_k_%hk%
        if (tmp == ""){
            tmp := adhd_hk_m_%hk%
            if (tmp == "None"){
                tmp := ""
            }
        }
        return tmp
    }
    */

}

/*
 
Этот материал только здесь из-за ограничений в AHK.
Вы НЕ должны ссылаться на что-либо с префиксом "adhd_" напрямую.
Весь доступ к этим функциям и данным должен осуществляться через «общедоступные» функции.
Если нет общедоступной функции, которая делает то, что вам нужно, запросите обновление библиотеки
*/

; Функция подсказки от http://www.autohotkey.com/board/topic/81915-solved-gui-control-tooltip-on-hover/#entry598735
; ToDo: должен быть здесь, так как при обработке обратного вызова OnMessage, он не имеет понятия «это»


adhd_mouse_move(){
    static CurrControl, PrevControl, _TT

; Только проверьте, является ли текущее окно графическим интерфейсом AHK

    IfWinActive, % "ahk_class AutoHotkeyGUI"
    {
        CurrControl := A_GuiControl
        If (CurrControl <> PrevControl){
                SetTimer, adhd_display_tooltip, -750    ; shorter wait, shows the tooltip faster
                PrevControl := CurrControl
        }
        return
        
        adhd_display_tooltip:
        try
                ToolTip % %CurrControl%_TT
        catch
                ToolTip
        SetTimer, adhd_remove_tooltip, -10000
        return
        
        adhd_remove_tooltip:
        ToolTip
        return
    }
    return
}



; Кнопка джойстика была нажата в режиме привязки
adhd_bind_joystick_button:
    ADHD.private.bind_joystick_button()
    return

; Кнопка джойстика была нажата при обычном использовании
adhd_joystick_handler:
    ADHD.private.joystick_handler()
    return

; Триггеры меток

adhd_profile_changed:
    ADHD.private.profile_changed()
    return

adhd_option_changed:
    ADHD.private.option_changed()
    return

adhd_set_binding:
    ADHD.private.set_binding(substr(A_GuiControl,14))
    return

adhd_add_profile:
    ADHD.private.add_profile("")   
    ; просто нажав кнопку звонки с пустым параметром
    return

; Удалить профиль нажал
adhd_delete_profile:
    ADHD.private.delete_profile(adhd_current_profile)   
    ; Простое нажатие на кнопку удаляет текущий профиль
    return

adhd_duplicate_profile:
    ADHD.private.duplicate_profile("")
    return
    
adhd_rename_profile:
    ADHD.private.rename_profile()
    return

adhd_tab_changed:
    ADHD.private.tab_changed()
    return

adhd_show_window_spy:
    ADHD.private.show_window_spy()
    return

    spy:
    ADHD.private.update_programm()
    return

adhd_debug_window_change:
    ADHD.private.debug_window_change()
    return

adhd_debug_change:
    ADHD.private.debug_change()
    return
    
adhd_clear_log:
    ADHD.private.clear_log()
    return

adhd_heartbeat:
    ADHD.private.heartbeat()
    return

adhd_functionality_toggle:
    ADHD.private.functionality_toggle()
    return

adhd_delete_hotkey:
    SetTimer, adhd_delete_hotkey, Off
    ADHD.private.delete_hotkey()
    return

adhd_escape_released:
    hotkey, Escape up, adhd_escape_released, OFF
    SetTimer, adhd_delete_hotkey, Off
    return
    
; === НЕ ДОЛЖНО РЕДАКТИРОВАТЬ НИЖЕ ЗДЕСЬ===========================================================================


; Убить макрос, если графический интерфейс закрыт
adhd_exit_app:
GuiClose:
    ADHD.private.exit_app()
    return

; Обнаруживает модификаторы и кнопки мыши в BindMode
#If ADHD.private.BindMode
; Обнаружить нажатие клавиш-модификаторов
    *lctrl::
    *rctrl::
    *lalt::
    *ralt::
    *lshift::
    *rshift::
    *lwin::
    *rwin::
        adhd_tmp_modifier := substr(A_ThisHotkey,2)
        ADHD.private.set_modifier(adhd_tmp_modifier,1)
        return

; Определить ключ от клавиш-модификаторов
    *lctrl up::
    *rctrl up::
    *lalt up::
    *ralt up::
    *lshift up::
    *rshift up::
    *lwin up::
    *rwin up::
        ; Strip * для начала, " up" от конца и т. д.
        adhd_tmp_modifier := substr(substr(A_ThisHotkey,2),1,strlen(A_ThisHotkey) -4)
        if (ADHD.private.current_modifier_count() == 1){
; Если current_modifier_count равен 1, когда получен ап, то это одиночный модификатор
; Это не может быть модификатор  нормальный ключ, так как этот код мог бы завершиться при нажатии клавиши нормального ключа

            ADHD.private.HKControlType := 1
            ADHD.private.HKSecondaryInput := adhd_tmp_modifier

; Send Escape - это приведет к выходу команды ввода с помощью EndKey of Escape
; Но мы сохранили ключ модификатора, так что мы будем знать, что это не было действительно бежать
            Send {Escape}
        }
        ADHD.private.set_modifier(adhd_tmp_modifier,0)
        return


; Определить кнопки мыши
    lbutton::
    rbutton::
    mbutton::
    xbutton1::
    xbutton2::
    wheelup::
    wheeldown::
    wheelleft::
    wheelright::
        ADHD.private.HKControlType := 2
        ADHD.private.HKSecondaryInput := A_ThisHotkey
        Send {Escape}
        return
#If

; здесь в конце добавить запрос, чтобы сценарий быстрее загружался
