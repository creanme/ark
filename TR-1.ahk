#SingleInstance force

$z:: ;z键启动
{

    Loop, 5
    {
        MouseMove, 499, 155 ;移动鼠标到499 155，并自动把屏幕移动到最左侧
        Click, down, Left
        MouseClick, Left , 300, 0 , 1, 1, D , R
        Click, up, Left
        Sleep, 1000

        Click, 850, 466    ;点击TR-1
        Sleep, 500
        Click, 1132, 691   ;点击开始行动
        Sleep, 2500
        Click, 1097, 533  ;点击开始行动
        Sleep, 10000 
        Click, 1176, 84 ;点击“跳过”
        Sleep, 500
        Click, 844, 540 ;点击确定
        Sleep, 500

        Click, 1103, 92 ;点击2倍速

        ;开始放置夜刀
        placePieces(1228,691,-497,-291, "up")
        ;开始放置巡林者
        placePieces(1228,691,-442,-485, "left")

        Sleep, 15000    ;等待15秒到剧情
        Click, 1176, 84 ;点击“跳过”
        Sleep, 500

        Click, 844, 540 ;点击确定
        Sleep, 500
        Click, 1103, 92 ;点击2倍速

        Sleep, 22000   ;等待战斗结束
        Click, 779, 623 ;点击屏幕，结束战斗
        Sleep, 5000
    }
}
return

$e::
{
    MouseGetPos, MouseX, MouseY
    MsgBox %MouseX% %MouseY%
    
}
return

/*
放置人物
*/
placePieces(x, y, rx, ry, dir)
{
    MouseMove, x, y
    Click, down, Left
    MouseClick, Left , rx, ry , 1, 10, D , R
    Sleep, 400
    Click, up, Left
    Sleep, 500
    Click, down, Left
    if (dir = "left")
    {   
        MouseClick, Left , -200 , 0 , 1, 10, D , R
    }
    else if(dir = "up")
    {
        MouseClick, Left , 0 , -200 , 1, 10, D , R
    }
    else if(dir = "right")
    {
        MouseClick, Left , 200 , 0 , 1, 10, D , R
    }
    else
    {
        MouseClick, Left , 0 , 200 , 1, 10, D , R
    }
    Sleep, 200
    Click, up, Left
}