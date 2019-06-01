#SingleInstance force

$z:: ;z键启动
{
    doGT5(397)
}
return

doGT5(hp)
{
    Click 857, 415
    Sleep 500
    Loop % Floor(hp/15)
    {
        Click, 1132, 691   ;点击开始行动
        Sleep, 3500
        Click, 1097, 533  ;点击开始行动
        Sleep 120000
        Click, 779, 623 ;点击屏幕，结束战斗
        Sleep, 5000
    }
}
