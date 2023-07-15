from typing import Dict, List
import re


class ResponseData:
    data_list: List[object]
    total: int

    def __init__(self, data_list=None, total: int = 0):
        if data_list is None:
            data_list = []
        self.data_list = data_list
        self.total = total


def fetch_data(input_file_path: str,
               page_size: int = 0, page: int = 1,
               sort_key: str = None, sort_order: str = 'asc',
               filter_dict: Dict = None) -> ResponseData:

    try:
    # read data from file
        f = open(input_file_path, 'r', encoding='utf-8')
        attrs = f.readline().strip().split(",")

        # remove invalid filtering conditions
        if filter_dict is not None:
            for filter in filter_dict.items():
                if filter[0] not in attrs or filter[1] == None:
                    del filter_dict[filter[0]]

        dic_list=[]
        total_num = 0

        # process and filter each line
        for line in f.readlines():
            # process
            ele_value = line.strip().split(",")
            if len(ele_value) < len(attrs):
                continue
            selected = True
            index = -1
            # filter
            if filter_dict is not None:
                for filter in filter_dict.items():
                    index += 1
                    if filter[1].isdigit() == False:
                        if ele_value[attrs.index(filter[0])].find(filter[1],0,len(ele_value)) == -1:
                            selected = False
                            break
                    else:
                        if ele_value != str(filter[1]):
                            selected = False
                            break
            # if this line meets all conditions, then append it into the list of dicts
            def isdigitOrNot(input_string: str):
                ret = re.search("(\-)?(\d+)(\.\d+)?", input_string)
                if ret is not None and ret.group(0) == input_string:
                    return True
                return False

            if selected == True:
                total_num += 1
                dic={}
                index = -1
                for attr in attrs:
                    index += 1
                    dic[attr] = ele_value[index] if isdigitOrNot(ele_value[index])==False else float(ele_value[index])
                dic_list.append(dic)

        # sort accoding to sort_key and sort_order
        if sort_key is not None and sort_key in attrs:
            dic_list.sort(key=lambda elem : elem[sort_key], reverse= True if sort_order=='desc' else False)

        # process with given pagination standards
        if page <= 0:
            return ResponseData([], 0)
        if page_size <= 0:
            page_size = total_num
        dic_list = dic_list[page_size * (page - 1): page_size * page]

        # return results
        response_data = ResponseData(dic_list, total_num)
        f.close()
        return response_data

    except:
        return ResponseData([], 0)
