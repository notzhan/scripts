count=111

showTip()
{
    #source tips_data
    local _num="$[RANDOM % $count + 1]"
    sed -n ${_num}p ~/.bin/tips_data 
}
