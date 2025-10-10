# import matplotlib.pyplot as plt

# years = [1950, 1960, 1970, 1980, 1990, 2000, 2010]
# gdp = [67.0, 80.0, 257.0, 1686.0, 6505, 11865.3, 22105.3]

# # 선 그래프, x축 years 값, y축 gdp 값
# plt.plot(years, gdp, color='green', marker='o', linestyle='solid')

# # 제목 설정
# plt.title("GDP per capita")

# # y축에 레이블 설정
# plt.ylabel("dollars")

# # png 이미지로 저장
# plt.savefig("gdp_per_capita.png", dpi=600)
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import numpy as np

# x=[x for x in range(1000)]
# y=np.random.rand(1000)*6-3

# plt.figure(figsize=(12,4))
# plt.title("Random Numbrs")
# plt.plot(x,y,'bo-')
# plt.axis((0,1000,-3.5,3.5))

# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import pandas as pd

# data = pd.read_excel('babies.xlsx') 

# plt.plot(data.Year, data.Babies, 'go--')
# plt.title("Newborns per year")
# plt.ylabel("Number of newborns")

# plt.savefig("newborns_per_year.png", dpi=300)
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt

# x=[x for x in range(20)]
# y=[x**2 for x in range(20)]
# z=[x**3 for x in range(20)]

# plt.plot(x,y,label='linear')
# plt.plot(x,y,label='quardratic')
# plt.plot(x,y,label='qubic')

# plt.xlabel('x label')
# plt.ylabel('y label')
# plt.legend()
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import math
# import matplotlib.pyplot as plt

# x=[]
# y=[]

# for angle in range(360):
#     x.append(angle)
#     y.append(math.sin(math.radians(angle)))

# plt.plot(x,y)
# plt.title("SINE WAVE")
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt

# years = [1950, 1960, 1970, 1980, 1990, 2000, 2010]
# gdp = [67.0, 80.0, 257.0, 1686.0, 6505, 11865.3, 22105.3]

# plt.bar(range(len(years)), gdp)  # 막대 그래프 생성

# plt.title("GDP per capita income")  # 제목을 설정한다.
# plt.ylabel("dollars")  # y축에 레이블을 붙인다.

# plt.xticks(range(len(years)), years)  # 눈금 레이블 표시
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import pandas as pd

# data=pd.read_excel("babies.xlsx")

# plt.bar(data.Year, data.Babies)
# plt.title("Newborns per year")
# plt.xlabel("Year")
# plt.ylabel("Number of newborns")
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import numpy as np

# years = [1965, 1975, 1985, 1995, 2005, 2015]
# ko = [130, 650, 2450, 11600, 17790, 27250]
# jp = [890, 5120, 11500, 42130, 40560, 38780]
# ch = [100, 200, 290, 540, 1760, 7940]

# x = np.arange(len(years))  # x값 설정, 넘파이 배열

# plt.bar(x + 0.0, ko, width=0.25)  # 막대 위치와 크기 변경
# plt.bar(x + 0.3, jp, width=0.25)
# plt.bar(x + 0.6, ch, width=0.25)

# plt.xticks(range(len(years)), years)  # 눈금 표시
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import numpy as np

# years = [1965, 1975, 1985, 1995, 2005, 2015]
# ko = [130, 650, 2450, 11600, 17790, 27250]
# jp = [890, 5120, 11500, 42130, 40560, 38780]
# ch = [100, 200, 290, 540, 1760, 7940]

# x = np.arange(len(years))  # x값 설정, 넘파이 배열

# plt.bar(x - 0.25, ko, width=0.25, label='Korea')  # 막대 위치와 크기 변경
# plt.bar(x + 0.0, jp, width=0.25, label='Japan')
# plt.bar(x + 0.25, ch, width=0.25, label='China')

# plt.xticks(x, years)
# plt.legend() 
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import numpy as np

# x = np.arange(20, 50)  # 크기 30인 넘파이 배열, 20 ~ 49
# y = x + 2 * np.random.randn(30)  # x값에 [0, 2] 정규분포 난수 더하기

# plt.scatter(x, y)  # 산포도 생성
# plt.title('Real Age vs Physical Age')
# plt.xlabel('Real Age')
# plt.ylabel('Physical Age')

# plt.savefig("kkk.png", dpi=600)  # 그래프 저장
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt
# import numpy as np

# np.random.seed(0)
# n = 50

# x = np.random.rand(n)
# y = np.random.rand(n)
# area = (30 * np.random.rand(n))**2  # 각 점의 크기 배열
# colors = np.random.rand(n)          # 각 점의 색상 배열

# plt.scatter(x, y, s=area, c=colors)
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt

# ratio = [34, 32, 16, 18]
# labels = ['Apple', 'Banana', 'Melon', 'Grapes']

# plt.pie(ratio, labels=labels, autopct='%.1f%%')
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt

# weight = [68, 81, 64, 56, 78, 74, 61, 77, 66, 68, 59, 71,
#           80, 59, 67, 81, 69, 73, 69, 74, 70, 65]

# plt.hist(weight, bins=25)
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

# import matplotlib.pyplot as plt

# weight = [68, 81, 64, 56, 78, 74, 61, 77, 66, 68, 59, 71,
#           80, 59, 67, 81, 69, 73, 69, 74, 70, 65]

# plt.hist(weight, label='bins=10', histtype='stepfilled')
# plt.hist(weight, bins=30, label='bins=30', histtype='step')
# plt.legend()
# plt.show()

#ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

import matplotlib.pyplot as plt
import numpy as np

np.random.seed(0)

data_a = np.random.normal(0, 2.0, 1000)
data_b = np.random.normal(-3.0, 1.5, 500)
data_c = np.random.normal(1.2, 1.5, 1500)

plt.boxplot([data_a, data_b, data_c])
plt.show()
