import re

def question2(input_string: str):
    # 获得整数部分
    def trunc_(x:float):
        x = str(x)
        i = 0
        while i < len(x):
            if(x[i]=='.'):
                break
            i+=1
        y = x[:i]
        return int(y) * (-1 if y[0] == '-' else 1)
    res = 0
    # sub_task1
    if input_string[0]=='1':
        # 正则表达式匹配
        find_result = re.findall("\d+", input_string[1:])
        # 加和
        for digit in find_result:
            res += int(digit)

    # sub_task2
    elif input_string[0]=='2':
        # 正则表达式匹配
        find_result = re.findall("(\-)?(\d+)(\.\d+)?", input_string[1:])
        digits=[]
        # 对于所有通过正则表达式找到的数
        for i in find_result:
            # 查看是否满足要求
            digit = ""
            for j in i:
                digit += j
            if len(digit) > 1 and digit[0] == '0' and digit[1] != '.':
                pass
            else:
                digits.append(float(digit))

        dic = {}
        # 用dic统计整数出现次数
        for i in digits:
            if trunc_(i) not in dic:
                dic[trunc_(i)] = 0
            dic[trunc_(i)] += 1
        # 得到集合A、B
        dic_list = [(key, val) for key, val in dic.items()]
        dic_list.sort(key = lambda x:x[1], reverse=True)
        A = set() # set A
        trunc_list = [] # set B
        for val, times in dic_list:
            if times in A:
                trunc_list.append(val)
            else:
                if len(A) < 3:
                    A.add(times)
                    trunc_list.append(val)
                else:
                    break
        # 得到最终结果
        print(digits)
        for i in digits:
            if trunc_(i) in trunc_list:
                res += i
    return res

# if __name__ == '__main__':
#     x = "1 hello -2 world 42, python 3.7"
#     y = "2 hello -2,2.5;2.6 / -4.1/4.2-4.3 / 5.5; from 2.7 to 3.6 / 3.7 "
#     print(question2(y))