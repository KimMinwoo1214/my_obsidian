---
tags:
  - Arduino
  - Kairos
  - Cpp
aliases: 
type: lecture-note
created: 2024-07-11
reviewed: false
notices: false
summary: false
---
### **Subject**:: [[Arduino and ESP32]]
### **Week**:: 5

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
![[Pasted image 20240724112347.png]]
![[Pasted image 20240724112356.png]]

보통 다리가 긴 쪽이 양이다. 양은 빨강 음은 검정

GND 접지(-), volt는 전력(+)
![[Pasted image 20240724112416.png]]

## [[Bread Board]]

하나하나가 다 핀이여서 전선을 꽂을 수있음

플러스(+)에 하나를 연결 시키면 내부가 전선으로 연결 되어 있기에 나머지 구멍들은 전부 사용할 수 있다
![[Pasted image 20240724112431.png]]
5v를 사용할 때 가장 적당한 레지스터는?

V = IR

(5-1.8)/20 = 160
![[Pasted image 20240724112448.png]]

![[Pasted image 20240724112526.png]]
```arduino
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

여기서 1000은 1초를 나타낸다.

## [[Arduino]] Computing

이게 C++와 같은 언어 이지만 많이 다름, 기본만 비슷함

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

![[Pasted image 20240724112655.png]]
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

위의 기기에서 ‘~’는 PWM을 쓸 때 사용하는 것이다. PWM은 보통 모터를 제어할 때 사용한다.

## [[Arduino]]
![[Pasted image 20240724112733.png]]

1. 디지털 핀들

	이 핀 들은 디지털 입·출력 용으로 digitalRead(), digitalWrite(), 그리고 analogWrite() 명령(함수)들을 가지고 사용할 수 있는 핀들입니다. analogWrite() 명령은 PWM(Pulse With Modulation) 기능을 제공하는 핀들만 사용 가능합니다. 보드를 자세히 살펴 보면 "~" 물결 표시가 되어 있는 핀들이 있을 것입니다. 이 핀들만 analogWrite() 명령을 사용할 수 있습니다.
	
2. LED 디지털 13번 핀

	디지털 13번 핀과 연결되어 있고, 우노 보드에서 유일하게 ON/OFF 할 수 있는 LED입니다. 스케치 디버깅을 할 때 매우 유용하게 사용할 수 있습니다. 예제 01. Basics에 들어 있는 Blink 스케치도 이 LED를  ON/OFF 시킵니다, 참고로 아두이노 우노 보드를 처음 구입하여 동작 시켰을 때, 보드가 정상인지 이 LED가 주기적으로 깜빡이는 것을 확인하여 확인 할 수 있습니다. 물론 Blink 스케치가 사용되고 있습니다.
	
3. 전원 LED

	전원(파워: Power)이 들어오고 있다는 것을 알려주는 LED입니다. 보드가 정상인지 판단하는데 유용합니다.
	
4. ATmega 마이크로컨트롤러(Microcontroller)

	보드의 심장 혹은 두뇌로 Atmel사의 ATmega328 혹은 ATmega328P MCU가 사용됩니다. 28 핀 DIP 타입의 부품이 사용되지만, 간혹 소켓 없이 보드에 바로 부착되는 SMD 용의 여러 모양이 사용될 수 있습니다.
	
5. 아날로그 입력 핀들

	analogRead() 함수를 이용하여 입력 전압의 값들을 0 ~ 1023 사이의 값들로 읽어 들일 수 있는 아날로그 입력 핀들입니다. 아날로그 값들을 1024 등분(분해능)해서 읽어 들일 수 있습니다. analogReference() 함수를 사용하여 입력 전압을 DEFAULT, INTERNAL, EXTERNAL 등으로 설정하여 입력 전압 값을 보다 정확하게 측정할 수 있습니다.
	아날로그 입력 핀들은 pinMode() 명령을 사용하여 디지털 입출력 핀들로 사용할 수 있습니다.
	
6. 전원 핀들

	아두이노 우노와 연결하여 사용할 보드나 부품들에 전원을 공급하기 위한 5V와 GND 핀들이며, 3.3V도 사용할 수 있게 핀을 제공하고 있습니다.
	
7. 전원 컨넥터

	USB 포트로부터 전원을 공급 받지만, USB가 연결되지 않았을 경우 전원 컨넥터를 통하여 전원을 공급 받을 수 있습니다. 외부에서 공급하는 전원은 7 ~ 12V 사이의 전압을 사용하여야 합니다. 9V 사용을 권장합니다.
	
8. TX와 RX LED들

	컴퓨터와 우노 보드 간 통신 상태를 나타내기 위한 LED들입니다. 스케치를 업로드 하거나 시리얼 통신할 때 빠르게 깜빡이는 것을 볼 수 있으며, 보드가 정상으로 동작하는지 판단하는데도 유용합니다.
	
9. USB 포트

	아두이노 우노 보드에 전원 공급과 스케치 업로드 그리고 Serial.print() 혹은 Serial.println() 명령으로 컴퓨터와 시리얼 통신을 위한 용도로 사용됩니다.

10. 리셋 버튼

	마이크로컨트롤러를 리셋하기 위한 버튼입니다.

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)



