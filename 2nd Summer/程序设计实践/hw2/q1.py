import re

def question1(input_string: str):
    res = []
    # 根据空格切分各个单词
    words = input_string.strip().split(" ")
    for word in words:
        # 正则表达式匹配
        ret = re.search("[fFgGhH].*a.*g", word)
        # 查看整个字符串是否被匹配
        if ret is not None and ret.group(0) == word:
            res.append(word)
    return res


# if __name__ == '__main__':
#     x = input()
#     print(x)
#     print(question1(x))