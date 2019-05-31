#SingleInstance force
/*
按e键获取鼠标相对于窗口的坐标
*/
$e::
{
    MouseGetPos, MouseX, MouseY
    MsgBox %MouseX% %MouseY%
    
}
return

#p::Pause  ;宏暂停或继续