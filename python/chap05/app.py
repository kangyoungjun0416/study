# import re

# txt1 = "Hello World, Hello python"

# match = re.search('Hello', txt1)
# print(match)
# print(match.start(), match.end(), match.span())
# print(match.group())

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import re

# txt1 = "Hello World, Hi python"
# txt2 = "Nice to meet you"

# print(re.search('^Hi', txt1))
# print(re.search('^Nice', txt2))
# print(re.search('python$', txt1))
# print(re.search('to$', txt2))

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# YJU-학년, 학년은 1,2,3만 가능
# import re

# txt1 = "YJU-1" #성공
# txt2 = "YJU-4" #None
# pattern = "^YJU-[123]"
# print(re.search(pattern, txt1))
# print(re.search(pattern, txt2))

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# # 4 자리수 출생 년도 패턴
# import re

# txt = "2000" #성공
# txt2 = "01" #실패
# txt3 = "1999" #성공
# pattern = "[12][0-9]{3}"
# print(re.search(pattern, txt))
# print(re.search(pattern, txt2))
# print(re.search(pattern, txt3))

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import re

# f = open('test1.txt')

# for line in f:
#     line = line.rstrip()
#     if re.search('^\([0-9]+\)', line) :
#         print(line)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import re

# text="""101 COM PythonProgramming
# 102 MAT LinearAlgebra
# 103 ENG ComputerEnglish"""

# s= re.findall('\d+', text)
# print(s)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import re

# f = open('test1.txt')
# txt = f.read()

# output = re.findall('\S+@[a-z.]+', txt)

# print('추출된 이메일 개수 : ', len(output))
# print('추출된 이메일 목록 :\n', output)

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

import re

s1 = 'I like dog'
print(re.sub('dog', 'cat' , s1))
             
s2 = 'number = 1 2 3 4'
print(re.sub('[0-9]+', '*', s2))