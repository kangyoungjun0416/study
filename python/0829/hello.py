class Circle:
    def __init__(self):     # 생성자
        self.name = 'circle'        # 필드

class Shape:
    def __init__(self):     # 생성자
        self.name = 'shape'        # 필드

    class Circle(Shape):            # 메소드
        def __init__(slef):
            super().__init__()
            self.name = 'circle'
            self.radius = 0

c1 = Circle()
print(isinstance(c1, Shape))
print(isinstance(c1, Circle))
