---
tags:
  - Python
  - AI
aliases: 
type: lecture-note
created: 2024-06-27
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Python for ML]]
### **Week**:: 1

**이전 강의 노트**: [[]]

### 강의자료: 
[[ch1_Split_Join.pdf]]

[[ch1_List_Comprehension.pdf]]

[[ch1_Enumerate_Zip.pdf]]

[[ch1_lambda_map_reduce-1.pdf]]

[[ch1_collections.pdf]]

[[ch1_asterisk.pdf]]


# 강의필기 (Lecture Notes)
<br>

## What is pythonic code

```python
colors = ["a", "b", "c", "d", "e"]
result = " "

for s in colors:
    result += s

print(result)

#결과: abcde
```

```python
colors = ["red", "blue", "green", "yellow"]
result = "".join(colors)

print(result)

#결과: redbluegreenyellow
```

비슷한 결과가 나오지만 코드가 훨씬 단순해진다. 파이썬스러운 코드 작성 방식으로 효율적인 코드의 완성이 가능해진다.

## Split & Join ([[List]])

### Split Function

Split함수는 어떠한 String타입을 특정 기준으로 나눈다.

변수에 대입도 가능

```python
items = 'zero one two three'.split()
print(items)

examples = 'python, javascript, jquery'
lang = examples.split(',')
print(lang)

a, b, c = examples.split(",")
print(a, b, c)

'''
결과:
['zero', 'one', 'two', 'three']
['python', ' javascript', ' jquery']
python  javascript  jquery
'''
```

### Join Function

Split과 유사한 함수로 “”사이에 들어간 것으로 결과가 달라진다.

```python
colors = ["red", "blue", "green", "yellow"]
result = "-".join(colors)

print(result)

'''
결과
red-blue-green-yellow
'''
```

## List Comprehension

### For loop + append

```python
#for loop + append
result = []

for i in range(10):
    result.append(i)

print(result)

#list comprehension
result = [i for i in range(10) if i % 2 == 0]
print(result)

'''
결과
[0, 2, 4, 6, 8]
'''
```

### Nested for loop

```python
word_1 = "Hello"
word_2 = "World"

result = [i + j for i in word_1 for j in word_2]
print(result)

'''
결과
['HW', 'Ho', 'Hr', 'Hl', 'Hd', 'eW', 'eo', 'er', 
'el', 'ed', 'lW', 'lo', 'lr', 'll', 'ld', 'lW', 
'lo', 'lr', 'll', 'ld', 'oW', 'oo', 'or', 'ol', 'od']
'''
```

### Nested for loop + if (1)

```python
case_1 = ["A", "B", "C"]
case_2 = ["D", "E", "A"]

result = [i+j for i in case_1 for j in case_2 if not(i == j)]
result.sort()

print(result)

'''
결과
['AD', 'AE', 'BA', 'BD', 'BE', 'CA', 'CD', 'CE']
'''
```

### Nested for loop + if (2)

```python

case_1 = ["A", "B", "C"]
case_2 = ["D", "E", "A"]

result = [[i+j for i in case_1] for j in case_2]

print(result)

'''
결과
[['AD', 'BD', 'CD'], ['AE', 'BE', 'CE'], 
['AA', 'BA', 'CA']]
'''
```

### Split + list comprehension

```python
words = 'The quick brown fox jumps over the lazy dog'.split()
print(words)

stuff = [[w.upper(), w.lower(), len(w)] for w in words]

for i in stuff:
  print(i)
  
'''
결과
['The', 'quick', 'brown', 'fox', 'jumps', 
'over', 'the', 'lazy', 'dog']
['THE', 'the', 3]
['QUICK', 'quick', 5]
['BROWN', 'brown', 5]
['FOX', 'fox', 3]
['JUMPS', 'jumps', 5]
['OVER', 'over', 4]
['THE', 'the', 3]
['LAZY', 'lazy', 4]
['DOG', 'dog', 3]
'''
```

## [[Enumerate]] & [[Zip]]

### For loop + zip

```python
alist = ['a1', 'a2', 'a3']
blist = ['b1', 'b2', 'b3']

for a, b in zip(alist, blist):
  print(a, b)

'''
결과
a1 b1
a2 b2
a3 b3
'''
```

### List comprehension + zip

```python
a,b,c = zip((1, 2, 3), (10, 20, 30), (100, 200, 300))
print(a, b, c)

print([sum(x) for x in zip((1, 2, 3), (10, 20, 30), (100, 200, 300))])

'''
결과
(1, 10, 100) (2, 20, 200) (3, 30, 300)
[111, 222, 333]
'''
```

### Enumerate + zip

```python
alist = ['a1', 'a2', 'a3']
blist = ['b1', 'b2', 'b3']

for i, (a, b) in enumerate(zip(alist, blist)):
  print(i, a, b)
  
'''
결과
0 a1 b1
1 a2 b2
2 a3 b3
'''
```

## [[Lambda]] & [[MapReduce]]

### Lambda

```python
def f(x, y):
  return x + y

print(f(1, 4))

f = lambda x, y: x +y
print(f(1, 4))

f = lambda x: x ** 2
print(f(3))

f = lambda x: x / 2
print(f(3))

print((lambda x: x + 1)(5))

'''
결과
5
5
9
1.5
6
'''
```

### Map

```python
def f(x, y):
  return x + y

f(1, 4)

f = lambda x,y: x + y
f(1, 4)

ex = [1, 2, 3, 4, 5]
f = lambda x: x ** 2
print(list(map(f, ex)))

f = lambda x, y: x + y
print(list(map(f, ex, ex)))

list(map(lambda x: x ** 2 if x % 2 == 0 else x, ex))

#Python3부터는 list를 적어야함

ex = [1,2,3,4,5]
print(list(map(lambda x: x+x, ex)))
print((map(lambda x: x+x, ex)))

f = lambda x: x ** 2
print(map(f, ex))
for i in map(f, ex):
    print(i)

result = map(f, ex)
print(result)
print(next(result))

import sys
sys.getsizeof(ex)
sys.getsizeof((map(lambda x: x+x, ex)))
sys.getsizeof(list(map(lambda x: x+x, ex)))

'''
결과
[1, 4, 9, 16, 25]
[2, 4, 6, 8, 10]
[2, 4, 6, 8, 10]
<map object at 0x7975cce97d30>
<map object at 0x7975cce97d30>
1
4
9
16
25
<map object at 0x7975cce95690>
1
120
'''
```

### Reduce

```python
from functools import reduce
print(reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]))

def factorial(n):
    return reduce(
            lambda x, y: x*y, range(1, n+1))

factorial(5)

'''
결과
15
120
'''
```

## [[Asterisk]]

```python
def asterisk_test(a, *args):
  print(a, args)
  print(type(args))

asterisk_test(1, 2, 3, 4, 5, 6)

'''
결과
1 (2, 3, 4, 5, 6)
<class 'tuple'>
'''
```

```python
def asterisk_test(a, **kargs):
  print(a, kargs)
  print(type(kargs))

asterisk_test(1, b=2, c=3, d=4, e=5, f=6)

'''
결과
1 {'b': 2, 'c': 3, 'd': 4, 'e': 5, 'f': 6}
<class 'dict'>
'''
```

### Unpacking

```python
def asterisk_test(a, *args):
  print(a, args[0])
  print(type(args))

asterisk_test(1, (2, 3, 4, 5, 6))

'''
결과
1 (2, 3, 4, 5, 6)
<class 'tuple'>
'''
```

```python
def asterisk_test(a, args):
  print(a, *args)
  print(type(args))

asterisk_test(1, (2, 3, 4, 5, 6))

'''
결과
1 2 3 4 5 6
<class 'tuple'>
'''
```

```python
data = ([1, 2], [3, 4], [5, 6])
print(*data)

a, b, c = ([1, 2], [3, 4], [5, 6])
print(a, b, c)

'''
결과
[1, 2] [3, 4] [5, 6]
[1, 2] [3, 4] [5, 6]
'''
```

```python
def asterisk_test(a, b, c, d):
  print(a, b, c, d)

data = {"b": 1, "c": 2, "d": 3}
asterisk_test(10, **data)

'''
결과
10 1 2 3
'''
```

```python
for data in zip(*([1, 2], [3, 4], [5, 6])):
  print(sum(data))
  
'''
결과
9
12
'''
```

```python
def asterisk_test(a, b, c, d, e = 0):
  print(a, b, c, d, e)

data = {"d": 1, "c": 2, "b": 3, "e": 56}
asterisk_test(10, **data)

'''
결과
10 3 2 1 56
'''
```

## Data Structure - Collections

### [[Deque]]

Stack과 Queue를 지원하는 모듈, 효율적인 자료 저장 방식을 지원

```python
from collections import deque

deque_list = deque()
for i in range(5):
  deque_list.append(i)

print(deque_list)
print(deque(reversed(deque_list)))

deque_list.appendleft(10)
print(deque_list)

deque_list.rotate(2)
print(deque_list)

deque_list.extend([5, 6, 7])
print(deque_list)

deque_list.extendleft([5, 6, 7])
print(deque_list)

'''
결과
deque([0, 1, 2, 3, 4])
deque([4, 3, 2, 1, 0])
deque([10, 0, 1, 2, 3, 4])
deque([3, 4, 10, 0, 1, 2])
deque([3, 4, 10, 0, 1, 2, 5, 6, 7])
deque([7, 6, 5, 3, 4, 10, 0, 1, 2, 5, 6, 7])
'''
```

### [[OrderedDict]]

Dict와 달리, 데이터를 입력한 순서대로 dict를 반환

```python
from collections import OrderedDict

d = {}
d['x'] = 100
d['y'] = 200
d['z'] = 300
d['l'] = 500

for k, v in d.items():
    print(k, v)

d = OrderedDict()
d['x'] = 100
d['y'] = 200
d['z'] = 300
d['l'] = 500

for k, v in d.items():
    print(k, v)

for k, v in OrderedDict(sorted(d.items(), key=lambda t: t[0])).items():
    print(k, v)

for k, v in OrderedDict(sorted(d.items(),
                        reverse=True, key=lambda t: t[1])).items():
    print(k, v)

'''
결과
x 100
y 200
z 300
l 500
x 100
y 200
z 300
l 500
l 500
x 100
y 200
z 300
l 500
z 300
y 200
x 100
'''
```

### defaultdict

Dict type의 값에 기본 값을 지정, 신규 값 생성 시 사용하는 방법

```python
from collections import defaultdict

d = defaultdict(object)
d = defaultdict(lambda: 0)
print(d["first"])

'''
결과
0
'''
```

### Dict Vs defaultdict

```python
from collections import defaultdict
from collections import OrderedDict

text = """A press release is the quickest and easiest way to get free publicity. If well written, a press release can result in multiple published articles about your firm and its products. And that can mean new prospects contacting you asking you to sell to them. Talk about low-hanging fruit!
What's more, press releases are cost effective. If the release results in an article that (for instance) appears to recommend your firm or your product, that article is more likely to drive prospects to contact you than a comparable paid advertisement.
However, most press releases never accomplish that. Most press releases are just spray and pray. Nobody reads them, least of all the reporters and editors for whom they're intended. Worst case, a badly-written press release simply makes your firm look clueless and stupid.
For example, a while back I received a press release containing the following sentence: "Release 6.0 doubles the level of functionality available, providing organizations of all sizes with a fast-to-deploy, highly robust, and easy-to-use solution to better acquire, retain, and serve customers."
Translation: "The new release does more stuff." Why the extra verbiage? As I explained in the post "Why Marketers Speak Biz Blab", the BS words are simply a way to try to make something unimportant seem important. And, let's face it, a 6.0 release of a product probably isn't all that important.
As a reporter, my immediate response to that press release was that it's not important because it expended an entire sentence saying absolutely nothing. And I assumed (probably rightly) that the company's marketing team was a bunch of idiots.""".lower().split()

#dict

word_count = {}
for word in text:
  if word in word_count.keys():
    word_count[word] += 1
  else:
    word_count[word] = 1

print(word_count)

#defaultdict

word_count = defaultdict(object)
word_count = defaultdict(lambda:0)
for word in text:
  word_count[word] += 1

for i, v in OrderedDict(sorted(word_count.items(), key = lambda t: t[1], reverse = True)).items():
  print(i, v)

'''
결과
{'a': 12, 'press': 8, 'release': 8, 'is': 2, 'the': 9, 'quickest': 1, 'and': 9, 'easiest': 1, 'way': 2, 'to': 10, 'get': 1, 'free': 1, 'publicity.': 1, 'if': 2, 'well': 1, 'written,': 1, 'can': 2, 'result': 1, 'in': 3, 'multiple': 1, 'published': 1, 'articles': 1, 'about': 2, 'your': 4, 'firm': 3, 'its': 1, 'products.': 1, 'that': 7, 'mean': 1, 'new': 2, 'prospects': 2, 'contacting': 1, 'you': 3, 'asking': 1, 'sell': 1, 'them.': 1, 'talk': 1, 'low-hanging': 1, 'fruit!': 1, "what's": 1, 'more,': 1, 'releases': 3, 'are': 3, 'cost': 1, 'effective.': 1, 'results': 1, 'an': 2, 'article': 2, '(for': 1, 'instance)': 1, 'appears': 1, 'recommend': 1, 'or': 1, 'product,': 1, 'more': 2, 'likely': 1, 'drive': 1, 'contact': 1, 'than': 1, 'comparable': 1, 'paid': 1, 'advertisement.': 1, 'however,': 1, 'most': 2, 'never': 1, 'accomplish': 1, 'that.': 1, 'just': 1, 'spray': 1, 'pray.': 1, 'nobody': 1, 'reads': 1, 'them,': 1, 'least': 1, 'of': 5, 'all': 3, 'reporters': 1, 'editors': 1, 'for': 2, 'whom': 1, "they're": 1, 'intended.': 1, 'worst': 1, 'case,': 1, 'badly-written': 1, 'simply': 2, 'makes': 1, 'look': 1, 'clueless': 1, 'stupid.': 1, 'example,': 1, 'while': 1, 'back': 1, 'i': 3, 'received': 1, 'containing': 1, 'following': 1, 'sentence:': 1, '"release': 1, '6.0': 2, 'doubles': 1, 'level': 1, 'functionality': 1, 'available,': 1, 'providing': 1, 'organizations': 1, 'sizes': 1, 'with': 1, 'fast-to-deploy,': 1, 'highly': 1, 'robust,': 1, 'easy-to-use': 1, 'solution': 1, 'better': 1, 'acquire,': 1, 'retain,': 1, 'serve': 1, 'customers."': 1, 'translation:': 1, '"the': 1, 'does': 1, 'stuff."': 1, 'why': 1, 'extra': 1, 'verbiage?': 1, 'as': 2, 'explained': 1, 'post': 1, '"why': 1, 'marketers': 1, 'speak': 1, 'biz': 1, 'blab",': 1, 'bs': 1, 'words': 1, 'try': 1, 'make': 1, 'something': 1, 'unimportant': 1, 'seem': 1, 'important.': 2, 'and,': 1, "let's": 1, 'face': 1, 'it,': 1, 'product': 1, 'probably': 1, "isn't": 1, 'reporter,': 1, 'my': 1, 'immediate': 1, 'response': 1, 'was': 2, "it's": 1, 'not': 1, 'important': 1, 'because': 1, 'it': 1, 'expended': 1, 'entire': 1, 'sentence': 1, 'saying': 1, 'absolutely': 1, 'nothing.': 1, 'assumed': 1, '(probably': 1, 'rightly)': 1, "company's": 1, 'marketing': 1, 'team': 1, 'bunch': 1, 'idiots.': 1}
a 12
to 10
the 9
and 9
press 8
release 8
that 7
of 5
your 4
in 3
firm 3
you 3
releases 3
are 3
all 3
i 3
is 2
way 2
if 2
can 2
about 2
new 2
prospects 2
an 2
article 2
more 2
most 2
for 2
simply 2
6.0 2
as 2
important. 2
was 2
quickest 1
easiest 1
get 1
free 1
publicity. 1
well 1
written, 1
result 1
multiple 1
published 1
articles 1
its 1
products. 1
mean 1
contacting 1
asking 1
sell 1
them. 1
talk 1
low-hanging 1
fruit! 1
what's 1
more, 1
cost 1
effective. 1
results 1
(for 1
instance) 1
appears 1
recommend 1
or 1
product, 1
likely 1
drive 1
contact 1
than 1
comparable 1
paid 1
advertisement. 1
however, 1
never 1
accomplish 1
that. 1
just 1
spray 1
pray. 1
nobody 1
reads 1
them, 1
least 1
reporters 1
editors 1
whom 1
they're 1
intended. 1
worst 1
case, 1
badly-written 1
makes 1
look 1
clueless 1
stupid. 1
example, 1
while 1
back 1
received 1
containing 1
following 1
sentence: 1
"release 1
doubles 1
level 1
functionality 1
available, 1
providing 1
organizations 1
sizes 1
with 1
fast-to-deploy, 1
highly 1
robust, 1
easy-to-use 1
solution 1
better 1
acquire, 1
retain, 1
serve 1
customers." 1
translation: 1
"the 1
does 1
stuff." 1
why 1
extra 1
verbiage? 1
explained 1
post 1
"why 1
marketers 1
speak 1
biz 1
blab", 1
bs 1
words 1
try 1
make 1
something 1
unimportant 1
seem 1
and, 1
let's 1
face 1
it, 1
product 1
probably 1
isn't 1
reporter, 1
my 1
immediate 1
response 1
it's 1
not 1
important 1
because 1
it 1
expended 1
entire 1
sentence 1
saying 1
absolutely 1
nothing. 1
assumed 1
(probably 1
rightly) 1
company's 1
marketing 1
team 1
bunch 1
idiots. 1
'''
```

### Counter

Sequence type의 data element들의 갯수를 dict형태로 반환

```python
from collections import Counter

c = Counter()                           # a new, empty counter
c = Counter('gallahad')                 # a new counter from an iterable

print(c)

c = Counter({'red': 4, 'blue': 2})      # a new counter from a mapping

print(c)
print(list(c.elements()))

c = Counter(cats=4, dogs=8)             # a new counter from keyword args

print(c)
print(list(c.elements()))

c = Counter(a=4, b=2, c=0, d=-2)
d = Counter(a=1, b=2, c=3, d=4)
c.subtract(d)  # c- d

print(c)

c = Counter(a=4, b=2, c=0, d=-2)
d = Counter(a=1, b=2, c=3, d=4)

print(c + d)
print(c & d)
print(c | d)

text = """A press release is the quickest and easiest way to get free publicity. If well written, a press release can result in multiple published articles about your firm and its products. And that can mean new prospects contacting you asking you to sell to them. Talk about low-hanging fruit!
What's more, press releases are cost effective. If the release results in an article that (for instance) appears to recommend your firm or your product, that article is more likely to drive prospects to contact you than a comparable paid advertisement.
However, most press releases never accomplish that. Most press releases are just spray and pray. Nobody reads them, least of all the reporters and editors for whom they're intended. Worst case, a badly-written press release simply makes your firm look clueless and stupid.
For example, a while back I received a press release containing the following sentence: "Release 6.0 doubles the level of functionality available, providing organizations of all sizes with a fast-to-deploy, highly robust, and easy-to-use solution to better acquire, retain, and serve customers."
Translation: "The new release does more stuff." Why the extra verbiage? As I explained in the post "Why Marketers Speak Biz Blab", the BS words are simply a way to try to make something unimportant seem important. And, let's face it, a 6.0 release of a product probably isn't all that important.
As a reporter, my immediate response to that press release was that it's not important because it expended an entire sentence saying absolutely nothing. And I assumed (probably rightly) that the company's marketing team was a bunch of idiots.""".lower().split()

print(Counter(text))
print(Counter(text)["a"])

'''
결과
Counter({'a': 3, 'l': 2, 'g': 1, 'h': 1, 'd': 1})
Counter({'red': 4, 'blue': 2})
['red', 'red', 'red', 'red', 'blue', 'blue']
Counter({'dogs': 8, 'cats': 4})
['cats', 'cats', 'cats', 'cats', 'dogs', 'dogs', 'dogs', 'dogs', 'dogs', 'dogs', 'dogs', 'dogs']
Counter({'a': 3, 'b': 0, 'c': -3, 'd': -6})
Counter({'a': 5, 'b': 4, 'c': 3, 'd': 2})
Counter({'b': 2, 'a': 1})
Counter({'a': 4, 'd': 4, 'c': 3, 'b': 2})
Counter({'a': 12, 'to': 10, 'the': 9, 'and': 9, 'press': 8, 'release': 8, 'that': 7, 'of': 5, 'your': 4, 'in': 3, 'firm': 3, 'you': 3, 'releases': 3, 'are': 3, 'all': 3, 'i': 3, 'is': 2, 'way': 2, 'if': 2, 'can': 2, 'about': 2, 'new': 2, 'prospects': 2, 'an': 2, 'article': 2, 'more': 2, 'most': 2, 'for': 2, 'simply': 2, '6.0': 2, 'as': 2, 'important.': 2, 'was': 2, 'quickest': 1, 'easiest': 1, 'get': 1, 'free': 1, 'publicity.': 1, 'well': 1, 'written,': 1, 'result': 1, 'multiple': 1, 'published': 1, 'articles': 1, 'its': 1, 'products.': 1, 'mean': 1, 'contacting': 1, 'asking': 1, 'sell': 1, 'them.': 1, 'talk': 1, 'low-hanging': 1, 'fruit!': 1, "what's": 1, 'more,': 1, 'cost': 1, 'effective.': 1, 'results': 1, '(for': 1, 'instance)': 1, 'appears': 1, 'recommend': 1, 'or': 1, 'product,': 1, 'likely': 1, 'drive': 1, 'contact': 1, 'than': 1, 'comparable': 1, 'paid': 1, 'advertisement.': 1, 'however,': 1, 'never': 1, 'accomplish': 1, 'that.': 1, 'just': 1, 'spray': 1, 'pray.': 1, 'nobody': 1, 'reads': 1, 'them,': 1, 'least': 1, 'reporters': 1, 'editors': 1, 'whom': 1, "they're": 1, 'intended.': 1, 'worst': 1, 'case,': 1, 'badly-written': 1, 'makes': 1, 'look': 1, 'clueless': 1, 'stupid.': 1, 'example,': 1, 'while': 1, 'back': 1, 'received': 1, 'containing': 1, 'following': 1, 'sentence:': 1, '"release': 1, 'doubles': 1, 'level': 1, 'functionality': 1, 'available,': 1, 'providing': 1, 'organizations': 1, 'sizes': 1, 'with': 1, 'fast-to-deploy,': 1, 'highly': 1, 'robust,': 1, 'easy-to-use': 1, 'solution': 1, 'better': 1, 'acquire,': 1, 'retain,': 1, 'serve': 1, 'customers."': 1, 'translation:': 1, '"the': 1, 'does': 1, 'stuff."': 1, 'why': 1, 'extra': 1, 'verbiage?': 1, 'explained': 1, 'post': 1, '"why': 1, 'marketers': 1, 'speak': 1, 'biz': 1, 'blab",': 1, 'bs': 1, 'words': 1, 'try': 1, 'make': 1, 'something': 1, 'unimportant': 1, 'seem': 1, 'and,': 1, "let's": 1, 'face': 1, 'it,': 1, 'product': 1, 'probably': 1, "isn't": 1, 'reporter,': 1, 'my': 1, 'immediate': 1, 'response': 1, "it's": 1, 'not': 1, 'important': 1, 'because': 1, 'it': 1, 'expended': 1, 'entire': 1, 'sentence': 1, 'saying': 1, 'absolutely': 1, 'nothing.': 1, 'assumed': 1, '(probably': 1, 'rightly)': 1, "company's": 1, 'marketing': 1, 'team': 1, 'bunch': 1, 'idiots.': 1})
12
'''
```

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
<br>

### ==**Linear Algebra**==
<br>


## 작업 (Tasks)


## 정리 (Summary)

[[Python]]

