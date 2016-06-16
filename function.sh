function fun() {             # funciton可有可恶
    echo "first FUN"
}
echo "-----函数开始执行-----"
fun
echo "-----函数执行完毕-----"
 fun2 () {
    echo "first FUN"
}
echo "-----函数开始执行-----"
fun2
echo "-----函数执行完毕-----"
# 带有返回值到函数......return ￥（）
funadd(){
    echo "输入一个数"
    read num1
    echo "输入第二个数字"
    read num2
    return $(($num1 + $num2))
}
funadd
printf "$num1 --$num2 结果shi $?\n"
echo "输入的两个数字之和为 $? !"
# 传递参数
funWithParam(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 ,用的不是很多 一般 ￥ @ $* !"
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73
