#SingleInstance force

flag := 0
$z::
{
    flag := !flag
    If (flag = 1)
    {
        SetTimer, ClickLeft, 1000
    }
    else
    {
        SetTimer, ClickLeft, off
    }
}
Return

ClickLeft:
{
    Click
}
