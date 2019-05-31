#SingleInstance force

$z:: ;z键启动
{
    MouseMove, 499, 155 ;移动鼠标到499 155，并自动把屏幕移动到最右侧
    Click, down, Left
    MouseClick, Left , -300, 0 , 1, 1, D , R
    Click, up, Left
    Sleep, 1000

    Click, 327, 373    ;点击1-11
    Sleep, 500
    Click, 1132, 691   ;点击开始行动
    Sleep, 2500
    Click, 1097, 533  ;点击开始行动
    Sleep, 14000 
    Click, 1176, 84 ;点击“跳过”
    Sleep, 500
    Click, 844, 540 ;点击确定
    Sleep, 500

    Click, 1103, 92 ;点击2倍速
    Sleep 20000 ;等待剧情结束


    Click, 1103, 92 ;点击2倍速
    ;开始放置翎羽
    placePieces(269, 724, 470, 371, "right")
    ;开始放置芬
    placePieces(310, 699, 371, 412, "right")
    Sleep 2000
    ;开始放置巡林者
    placePieces(154, 699, 453, 291, "right")
    Sleep 9000
    ;开始放置芙蓉
    placePieces(757, 692, 429, 444, "up")
    Sleep 3000
    ;开始放置jixika
    placePieces(516, 689, 623, 302, "right")
    Sleep 4000
    ;开始放置安赛
    placePieces(864, 689, 520, 438, "up")
    Sleep 5000
    ;开始放置夜刃
    placePieces(634, 689, 373, 315, "up")
    Sleep 26000
    ;开始放置剑圣
    placePieces(740, 689, 949, 430, "right")

    Click, 534, 255
    Sleep 600
    Click, 603, 250
    Sleep 5000
    ;开始放置炎熔
    placePieces(1224, 689, 538, 291, "down")
    Sleep 25000
    ;开始放置dun
    placePieces(993, 689, 630, 372, "down")


    Sleep, 32000   ;等待战斗结束
    Click, 779, 623 ;点击屏幕，结束战斗
}
return

/*
放置人物
*/
placePieces(x, y, rx, ry, dir)
{
    MouseMove, x, y
    Click, down, Left
    MouseClick, Left , rx-x, ry-y , 1, 10, D , R
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