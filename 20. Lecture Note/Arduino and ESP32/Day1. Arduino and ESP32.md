---
tags:
  - Arduino
  - Embedded
  - Kairos
  - project
aliases: 
type: lecture-note
created: 2024-08-02
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[]]
### **Week**:: 

**이전 강의 노트**: [[]]

### 강의자료: 

# 강의필기 (Lecture Notes)
<br>

프로토 타입을 만들 때에는 아두이노 만큼 좋은게 없다

가격적으로 싸고 만들기 편하다

어두이노로 회로 설계

빨강은 + 검정은 - 로 구별

LED등은 다리의 모양은 보고 양극 음극을 나눌 필요성을 알 수 있다

그러나 가변 저항 같은 것들은 바꿔줄 필요가 있다

![Untitled](Untitled.png)

![Untitled](LED.png)

보통 다리가 긴 쪽이 양이다. 양은 빨강 음은 검정

GND 접지(-), volt는 전력(+)

![Untitled](Bread_Board.png)

브레드 보드

하나하나가 다 핀이여서 전선을 꽂을 수있음

플러스(+)에 하나를 연결 시키면 내부가 전선으로 연결 되어 있기에 나머지 구멍들은 전부 사용할 수 있다

![Untitled](LED_Bread.png)

저항은 음극에 연결하는 것이 빛이 나온다

![Untitled](Untitled%204.png)

빵판 이용해서 불 키고 전압차 측정

![Untitled](Untitled%205.png)

![Untitled](Resistor.png)

5v를 사용할 때 가장 적당한 레지스터는?

V = IR

(5-1.8)/20 = 160

![Untitled](Untitled%207.png)

![Untitled](Untitled%208.png)

저항의 색에 따라 어느 정도의 저항을 갖는지 알 수 있음

![Untitled](Untitled%209.png)

1. 1000   1K
2. 3000  3K
3. 110000  110K
4. 400000  400K

보통 저항이 필요한데 우리가 받은 것은 저항이 필요 없는 것이다

![Untitled](Resistor1.png)

저항 읽는 법

![Untitled](Untitled%2011.png)

제어는 옆에 코드로 한다

아니면 블록으로도 만들 수 있다

![Untitled](Untitled%2012.png)

아무것도 하지 않고 실행했을 때 ‘L’에 불이 깜빡거려야 내부에 이상이 없는 것이

0,1번은 사용하지 않는다 — 통신할 때 사용하기 때문에 사용불가

13번은 빌트인 이라고 한다.

![Untitled](Builtin.png)

```arduino
// C++ code
//
void setup()
{
  pinMode(8, OUTPUT);
}

void loop()
{
  digitalWrite(8, HIGH);
  delay(1000); // Wait for 1000 millisecond(s)
  digitalWrite(8, LOW);
  delay(1000); // Wait for 1000 millisecond(s)
}
```

위의 코드로 불을 1초마다 키고 끌 수 있다.

여기서 1000은 1초르 나타낸다.

**[[Bread**

+,- 끼리 연결 되어 있고 내부는 a,b,c,d,e를 한 줄로 연결 되어있다

우리가 이번에 보는 기기는 핀마다 5V씩 전압이 출력된다.

저항은 (-) 쪽에 연결해서 +는 전선으로 연결 하면 불이 들어온다

아두이노 코딩

이게 C++와 같은 언어 이지만 많이 다름,  기본만 비슷함

아두이노 와 연결된 구성요소 확인 (setup)

void 는 def와 비슷하다. 또한 void는 return 값이 없다는 뜻이다

하드웨어는 C를 쓰는 이유는 메모리를 적게 먹기 때문이다. 그래서 파이썬을 쓰지 않는다

```arduino
int time = 0;             // 여기는 변수를 선언 하기 전에 미리 공간을 만들어 두어야 한다.

void setup(){

}

void loop(){

int temp = read_temp();       // 만약 여기서 int temp 로 하기 싫으면 함수가 시작하기 전에 선언하면 됨

}

int는 return값을 int로 준다는 것이다

int read_temp(){

time = loop();                // 여기서 time은 미리 선언 했기에 int time으로 작성할 필요가 없다.

}
```

```arduino
pinMode(8,OUTPUT);       
// 핀을 꽂을 때 사용 (몇번에 꼽는지,type)
// type : INPUT vs OUTPUT        INPUT은 입력할때 OUTPUT는 출력할 때, 그래서 부품을 받을 때마다 이게 어떤것인지 생각해야 함

// Digital vs Analog 이 친구 들을 구분하는 방식은 상태가 2개 일때는 디지털 단계가 여러가지 이면 아날로그 이다
// 예를 들어 전등의 on,off는 디지털이다

// Write vs Read 
```

```arduino
void setup(){
pinMode(8,OUTPUT);
}

void loop(){
digitalWrite(8,HIGH);         // 대문자를 뒤의 단어로 함
}                             // 이렇게 만들면 불이 켜
```



```arduino
void setup(){
pinMode(4,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
}

void loop(){
digitalWrite(8,HIGH);         // 대문자를 뒤의 단어로 함
delay(1000);
digitalWrite(8,LOW);
digitalWrite(7,HIGH);        
delay(1000);
digitalWrite(7,LOW);
digitalWrite(4,HIGH);        
delay(1000);
digitalWrite(4,LOW);
} 
```

위의  기기에서 ‘~’는 PWM을 쓸 때 사용하는 것이다. PWM은 보통 모터를 제어할 때 사용한다

1. 아두이노 우노
2. 빵판
3. USB

https://www.arduino.cc/

아두이노는 아두이노를 만드는 환경에서 만들어야 한다.

아두이노의 뜻이 이탈리아어로 ‘절친한 친구’ 라는 뜻이다

아두이노에 익숙해지면 깃 허브를 이용해서 만들 수도 있다

**아두이노 우노**

![Untitled](Arduino.png)

![https://postfiles.pstatic.net/20160810_172/msyang59_1470786211244zMcpr_PNG/num_01.png?type=w1](https://postfiles.pstatic.net/20160810_172/msyang59_1470786211244zMcpr_PNG/num_01.png?type=w1)

디지털 핀들

이 핀 들은 디지털 입·출력 용으로 digitalRead(), digitalWrite(), 그리고 analogWrite() 명령(함수)들을 가지고 사용할 수 있는 핀들입니다. analogWrite() 명령은 PWM(Pulse With Modulation) 기능을 제공하는 핀들만 사용 가능합니다. 보드를 자세히 살펴 보면 "~" 물결 표시가 되어 있는 핀들이 있을 것입니다. 이 핀들만 analogWrite() 명령을 사용할 수 있습니다.

![https://postfiles.pstatic.net/20160810_34/msyang59_1470786517235wQlGz_PNG/num_02.png?type=w1](https://postfiles.pstatic.net/20160810_34/msyang59_1470786517235wQlGz_PNG/num_02.png?type=w1)

LED 디지털 13번 핀

디지털 13번 핀과 연결되어 있고, 우노 보드에서 유일하게 ON/OFF 할 수 있는 LED입니다. 스케치 디버깅을 할 때 매우 유용하게 사용할 수 있습니다. 예제 01. Basics에 들어 있는 Blink 스케치도 이 LED를  ON/OFF 시킵니다, 참고로 아두이노 우노 보드를 처음 구입하여 동작 시켰을 때, 보드가 정상인지 이 LED가 주기적으로 깜빡이는 것을 확인하여 확인 할 수 있습니다. 물론 Blink 스케치가 사용되고 있습니다.

![https://postfiles.pstatic.net/20160810_260/msyang59_14707872239464xiNH_PNG/num_03.png?type=w1](https://postfiles.pstatic.net/20160810_260/msyang59_14707872239464xiNH_PNG/num_03.png?type=w1)

전원 LED

전원(파워: Power)이 들어오고 있다는 것을 알려주는 LED입니다. 보드가 정상인지 판단하는데 유용합니다.

![https://postfiles.pstatic.net/20160810_45/msyang59_1470787428863rHVkQ_PNG/num_04.png?type=w1](https://postfiles.pstatic.net/20160810_45/msyang59_1470787428863rHVkQ_PNG/num_04.png?type=w1)

ATmega 마이크로컨트롤러(Microcontroller)

보드의 심장 혹은 두뇌로 Atmel사의 ATmega328 혹은 ATmega328P MCU가 사용됩니다. 28 핀 DIP 타입의 부품이 사용되지만, 간혹 소켓 없이 보드에 바로 부착되는 SMD 용의 여러 모양이 사용될 수 있습니다.

![https://postfiles.pstatic.net/20160810_146/msyang59_1470787429048jKJfP_PNG/num_05.png?type=w1](https://postfiles.pstatic.net/20160810_146/msyang59_1470787429048jKJfP_PNG/num_05.png?type=w1)

아날로그 입력 핀들

analogRead() 함수를 이용하여 입력 전압의 값들을 0 ~ 1023 사이의 값들로 읽어 들일 수 있는 아날로그 입력 핀들입니다. 아날로그 값들을 1024 등분(분해능)해서 읽어 들일 수 있습니다. analogReference() 함수를 사용하여 입력 전압을 DEFAULT, INTERNAL, EXTERNAL 등으로 설정하여 입력 전압 값을 보다 정확하게 측정할 수 있습니다.

아날로그 입력 핀들은 pinMode() 명령을 사용하여 디지털 입출력 핀들로 사용할 수 있습니다.

![https://postfiles.pstatic.net/20160810_280/msyang59_1470787429171kMhlK_PNG/num_06.png?type=w1](https://postfiles.pstatic.net/20160810_280/msyang59_1470787429171kMhlK_PNG/num_06.png?type=w1)

전원 핀들

아두이노 우노와 연결하여 사용할 보드나 부품들에 전원을 공급하기 위한 5V와 GND 핀들이며, 3.3V도 사용할 수 있게 핀을 제공하고 있습니다.

![https://postfiles.pstatic.net/20160810_295/msyang59_1470787429364Kku1r_PNG/num_07.png?type=w1](https://postfiles.pstatic.net/20160810_295/msyang59_1470787429364Kku1r_PNG/num_07.png?type=w1)

전원 컨넥터

USB 포트로부터 전원을 공급 받지만, USB가 연결되지 않았을 경우 전원 컨넥터를 통하여 전원을 공급 받을 수 있습니다. 외부에서 공급하는 전원은 7 ~ 12V 사이의 전압을 사용하여야 합니다. 9V 사용을 권장합니다.

![https://postfiles.pstatic.net/20160810_104/msyang59_1470787429515u5Uhw_PNG/num_08.png?type=w1](https://postfiles.pstatic.net/20160810_104/msyang59_1470787429515u5Uhw_PNG/num_08.png?type=w1)

TX와 RX LED들

컴퓨터와 우노 보드 간 통신 상태를 나타내기 위한 LED들입니다. 스케치를 업로드 하거나 시리얼 통신할 때 빠르게 깜빡이는 것을 볼 수 있으며, 보드가 정상으로 동작하는지 판단하는데도 유용합니다.

![https://postfiles.pstatic.net/20160810_115/msyang59_1470787430000gYqfl_PNG/num_09.png?type=w1](https://postfiles.pstatic.net/20160810_115/msyang59_1470787430000gYqfl_PNG/num_09.png?type=w1)

USB 포트

아두이노 우노 보드에 전원 공급과 스케치 업로드 그리고 Serial.print() 혹은 Serial.println() 명령으로 컴퓨터와 시리얼 통신을 위한 용도로 사용됩니다.

![https://postfiles.pstatic.net/20160810_262/msyang59_1470787430171JtkbA_PNG/num_10.png?type=w1](https://postfiles.pstatic.net/20160810_262/msyang59_1470787430171JtkbA_PNG/num_10.png?type=w1)

리셋 버튼

ATmega 마이크로컨트롤러를 리셋하기 위한 버튼입니다.

**[출처]** [아두이노 우노 보드 해부](https://blog.naver.com/msyang59/220784048835)|**작성자** [과객](https://blog.naver.com/msyang59)

# 아두이노 1일차 오후

RGB 는 공통 음극을 사용한다

![Untitled](Untitled%2016.png)

함수 만들어서 돌리기

```arduino
int red = 8;
int blue = 6;
int green = 4;

void setup(){
  pinMode(red, OUTPUT);
  pinMode(blue, OUTPUT);
  pinMode(green, OUTPUT);
}

void loop(){
rgb_change(124,225,98);     //여기서 색을 정하는 작업이다
rgb_change(0,225,225);
rgb_change(10,4,225);
rgb_change(220,100,6);
}

void rgb_change(int r_value,int g_value,int b_value){
  analogWrite(red, r_value);
  analogWrite(blue, g_value);
  analogWrite(green, b_value);
  delay(100);
}
```


RGB는 두번째 다리가 음극을 관리하는 것이기에 여기에 GND를 연결해야 한다.


이제 RGB값을 random으로 지정해서 빛나게 하느 코드를 작성해 보자

```arduino
int red_p = 8;
int blue_p = 6;
int green_p = 4;

void setup(){
  pinMode(red_p, OUTPUT);
  pinMode(blue_p, OUTPUT);
  pinMode(green_p, OUTPUT);
}

void loop(){
rgb_change();
}

void rgb_change(){
  int red  = random(0,225);
  int blue = random(0,225);
  int green = random(0,225);
  
  analogWrite(red_p, red);
  analogWrite(blue_p, blue);
  analogWrite(green_p, green);
  delay(50);
}
```
<br>

아두이노 에서는 프린트 하는 방식이 C와도 다르다

여기에서도 내가 코딩하는 과정을 확인하기 위해 프린팅이 필요하다

```arduino
void setup(){
  Serial.begin(9600);
  
}
void loop(){
  for(int num = 10;num >= 0; num --){
    // for(시작;작동하는 구간;step)
  	Serial.println(num);
    delay(100);
  }
  delay(1000);
}
```

이걸로 10 → 0까지 프린팅을 할 수있다

또한 여기서 Serial.begin(숫자) 여기서 숫자는 통신속도로  **초당 9600비트(bit)를 전송하겠다는 의미이다.**

이게 쓰는 시리얼 통신에 따라 적히는 숫자가 다르다. 우리가 쓰는 것은 대부분 9600이다.

이걸 대부분 맞춰 주어야 돌아간다.

그 다음으로는 random으로 숫자를 뽑아서 출력하는 프로그램을 만들어 보자

```arduino
void setup(){
  Serial.begin(9600);

}
void loop(){
  int red_value = random_pick();
  Serial.println(red_value);
}

int random_pick(){
  int red = random(0,225);
  return red;
}
```

![Untitled](Untitled%2019.png)

```arduino
void setup(){
  Serial.begin(9600);
}
void loop(){
  int red_value = random_pick_red();
  int green_value = random_pick_green();
  Serial.print(red_value);
  Serial.print(" ");
  Serial.println(green_value);
  
}

int random_pick_red(){
  int red = random(0,225);
  return red;
}

int random_pick_green(){
  int green = random(0,225);
  return green;
}
```

2개를 숫자 숫자로 나오게 하기

```arduino
void setup(){
  Serial.begin(9600);
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}
void loop(){
  int value = random_pick();  
  digitalWrite(value, HIGH);
  delay(100);
  digitalWrite(value, LOW);
  rgb_change();
}

int random_pick(){
  int pick = random(6,13);
  return pick;
}

void rgb_change(){
  int red  = random(0,225);
  int blue = random(0,225);
  int green = random(0,225);
  
  analogWrite(5, red);
  analogWrite(3, blue);
  analogWrite(2, green);
  delay(50);
}
```

```arduino
struct Colors{     //여기에 새로운 자료형을 만든다
  int red;
  int green;
};                        

Colors random_pick();          // random_pick를 선언한다

void setup(){
	Serial.begin(9600);   
}

void loop(){
   Colors result = random_pick();    // result로 가져오는 것은 random_pick이다.
   Serial.print(result.red);          
   Serial.print(", ");
   Serial.println(result.green);
   delay(500);
} 
Colors random_pick(){          // 선언방식도 COlors로 한다.
     Colors result;            // result를 Colors로 한번 선언한다
     result.red = random(0, 255);
     result.green = random (0, 255);
     return result;   // red와 green을 한번에 return을 못하므로 result라는 것으로 묶어준다
}
///////////
//void setup(){
//	Serial.begin(9600);
//}
//
//void loop(){
//   result = random_pick();     
//  Serial.print(result);
//   delay(500);
//}
//////// 여기가 시작임
```

블루까지 추가해서 키기

```arduino
struct Colors{     //여기에 새로운 자료형을 만든다
  int red;
  int green;
  int blue;
};                        

Colors random_pick();          // random_pick를 선언한다

void setup(){
  Serial.begin(9600);  
  pinMode(4, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(8, OUTPUT);
  	
}

void loop(){
   Colors result = random_pick();    // result로 가져오는 것은 random_pick이다.
   analogWrite(4, result.red);
   analogWrite(6, result.green);
   analogWrite(8, result.blue);
   Serial.print(result.red);          
   Serial.print(", ");
   Serial.println(result.green);
   Serial.print(", ");
   Serial.println(result.blue);
   delay(500);
} 

Colors random_pick(){          // 선언방식도 COlors로 한다.
     Colors result;            // result를 Colors로 한번 선언한다
     result.red = random(0, 255);
     result.green = random (0, 255);
     result.blue = random (0, 255);
     return result;   // red와 green을 한번에 return을 못하므로 result라는 것으로 묶어준다
}
///////////
//void setup(){
//	Serial.begin(9600);
//}
//
//void loop(){
//   result = random_pick();     
//  Serial.print(result);
//   delay(500);
//}
//////// 여기가 시작임
```

```arduino
struct Colors{
  int red;
  int green;
  int blue;
};

int red_p = 4;
int green_p = 6;
int blue_p = 8;

Colors random_pick();

void setup() {
  Serial.begin(9600);
  pinMode(red_p,OUTPUT);
  pinMode(green_p,OUTPUT);
  pinMode(blue_p,OUTPUT);
}

void loop() {
  random_m();
}

void random_m(){
  Colors result = random_pick();
  analogWrite(red_p, result.red);
  analogWrite(blue_p, result.blue);
  analogWrite(green_p, result.green);
  delay(100);
}

Colors random_pick(){
  Colors results;
  results.red = random(0,255);
  results.green = random(0,255);
  results.blue = random(0,255);
  return results;
}
```
## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)



