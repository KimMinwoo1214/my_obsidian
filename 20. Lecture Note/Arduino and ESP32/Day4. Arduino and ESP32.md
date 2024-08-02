---
tags: []
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

모터를 설계할 때 주의할 점

모터와 아두이노에 외부 전력을 투입할 시 서로의 전압을 맞춰야함

# **[[Battery]] 보호회로란?**

 [https://blog.naver.com/roboholic84/221140991753](https://blog.naver.com/roboholic84/221140991753)
 
보호회로는 1970년에 개발되었지만 기술적 한계로 인해 실용화 되지 못하고 있다 1991년 소니에의해 사용화 되기 시작했다.
 
배터리 보호회로라는 단어를 처음 들어보는 사람들이 많을 것이다.

하지만 우리 주변을 자세하게 들여다보면 아주 많이 사용 되고 있다.

 보조배터리를 예로 들어 설명해보면 보조배터리의 경우엔 3~4셀의 배터리를 직렬로 연결하여 사용하게 된다.
 
 이때 **셀당 전압이 다르게 되면 배터리에 손상이 가해지게 되며 폭발,스웰링현상이 일어나게 된다.**
 
 배터리 보호회로는 기본적인 기능만 있는 PCM 회로와, 여러 기능이 추가된 BMS 회로 두가지로 나뉘게 된다.
 
 - **스웰링 현상**이란?
 
 배터리의 전해액이 산화하며 발생하는 가스로 인해 배터리 내부에 가스가 차는 현상이며, 배부름 증상이라고도 한다.
 
 **배터리 보호회로의 역할**
 
 **1. 과충전, 과방전 보호 (Overcharge Protection, Overdischarge Protection)**
 
 셀당 전압이 2.8v ~ 4.5v 초과 미만일 경우 배터리에 손상이 가해지며 스웰링 현상, 폭발이 일어날 수 있다.
 
 **2. 과전류 보호 (Overcurrent Protection)**
 
 배터리가 순간적으로 전류를 방출 하게 되면 배터리의 방전을 막아준다.
 
 **3.단락 보호 (Short-circuit Protection)**
 
 전지의 외부 단락으로 인해 다량의 전류가 흐를 경우 순간적으로 충전을 정지시켜 준다.
 
 # **PCM, BMS의 차이점**
 
 PCM (Protection Circuit Module)은 일반적인 보호회로의 기능인 **과방전, 과충전,과전류 셀 밸런싱의 기능을 갖춘 회로를 PCM** 회로라 부르고, 
 **BMS** (Battery Management System)의 경우에는 **과방전, 과충전,과전류 셀 밸런싱의 기능에 사용 이력, 모니터링, 통신, 배터리 잔량의 기능을 추가한 회로를 BMS** 라 할 수 있다.
 

## 이거 맞춰주는 방법을 조금 더 자세하게 조사하자

![Untitled](Untitled%2027.png)

여기서 vin은 외부전력을 사용해야 할 때 연결하는 부분이다.

보통 DC배럴잭을 많이 사용함.

[https://it-g-house.tistory.com/entry/아두이노-Arduino-시작하기-전원-공급-방법]


![Untitled](Untitled%2045.png)
> 
> ```
> 가장 많이 씀 : 
> 두번째 방법으로 DC 배럴잭을 통해 전원을 공급하는 방법입니다. 컴퓨터와 연결하지 않고 아두이노 보드에 전원을 공급하는 용도로 DC 배럴잭(사이즈: 5.5x2,1mm)을 사용합니다. 아두이노는 외부로부터 6~20V 범위로 전원을 받을 수 있는데 일반적으로 7~12V로 공급되는 게 좋습니다. 7~12V 전원이 공급되더라도 레귤레이터를 통해 5V로 변환되어 아두이노 보드에 공급되기 때문에 걱정하지 않으셔도 됩니다. 대부분 우리나라 전원은 AC 220V이기 때문에 AC-DC 어댑터가 필요합니다. 어댑터의 정격 용량은 1A 이상의 DC 9V제품을 사용하는 것을 추천합니다. (7V 미만은 보드 불안정, 12V이상은 레귤레이터 손상 가능하기 때문에...)AC-DC 어댑터 사용 시 주의사항으로 어댑터 극성을 꼭 확인해야 합니다. 그림과 같이Positive polarity를 사용해야 합니다. Negative polarity를 사용하시면 아두이노 보드가 타거나 고장 날 수 있습니다. DC barrel jack으로 건전지를 연결하여 전원을 공급할 수도 있습니다.
> ```
> 

> [https://m.blog.naver.com/dreammaker777/222382459647](https://m.blog.naver.com/dreammaker777/222382459647)
> 
> 
> **Arduino에 전원을 공급하는 네 가지 방법이 있습니다.**
> 
>  **1.[배럴 잭을 통해 Arduino에 전원 공급.](https://circuitjournal.com/arduino-power-pins#barrel-jack)**
> 
>  **2.[Vin 핀을 통해 Arduino에 전원 공급.](https://circuitjournal.com/arduino-power-pins#vin-pin)**
> 
>  **3.[5V 핀을 통해 Arduino에 전원 공급.](https://circuitjournal.com/arduino-power-pins#5v-pin)**
> 
>  **4.[USB 케이블을 통해 Arduino에 전원 공급.](https://circuitjournal.com/arduino-power-pins#usb-cable)**
> 
> **Arduino 보드에는 두 개의 전원 출력이 있습니다.**
> 
> **1.[전원 출력으로 5V 핀.](https://circuitjournal.com/arduino-power-pins#5v-output)**
> 
> **2.[전원 출력으로서 3.3V 핀.](https://circuitjournal.com/arduino-power-pins#3.3v-output)**
> 
> ****
> 
> Vin, 5V, 3.3V 및 GND 핀은 Arduino 전원 핀입니다.
> 
> Vin 핀을 사용하여  7 ~ 12V 전원으로 Arduino에 전원을 공급할 수 있습니다.
> 
> (예를들어, 9V 배터리 또는 7 ~ 12V 범위의 충전기)
> 
> 그러나  3.3V을 통하여 Arduino Uno / Nano 보드에 전원을 공급할 수 없습니다.
> 
> 또한 **5V 핀과 3.3V 핀을 모두 사용하여 Arduino에 연결된 모듈과 센서에 전원을 공급할 수 있습니다.**
> 
> 5V를 출력하는 외부 전원이있는 경우 Arduino 보드의 5V 핀에 직접 연결할 수 있습니다.
> 
> 5V 핀의 입력은 5.5V 볼트를 초과하지 않아야합니다
> 
> 참고로, 직렬로 연결된 3 개의 AA 배터리는 가득 차면 1.5 * 3 = 4.5V를 제공하고 거의 비었을 때 3V를 약간 넘습니다.
> 
> AA배터리 3개까지는 사용 가능합니다
> 
> ![Untitled](Untitled%2046.png)
> 
> 5V 핀을 통해 Arduino에 전원을 공급하면 Vin 핀이 사용되지 않습니다. Vin 핀에서 센서와 모듈에 전원을 공급할 수 없습니다.
> 
> ​
> 
> 5V에 5.5V보다 높은 전원을 공급하려면 DC-DC 컨버터를 사용하면 되지만, Vin이 있는데 굳지 그럴 필요는 없을 것 같습니다.
> 
> ​
> 
> 5V pin을 전원 공급으로 쓰지 않을때는 출력으로 사용할 수 있습니다.
> 
> USB케이블을 이용해 전원공급시 5V pin의 출력 전류는 500mA로 제한된다고 합니다.
> 

# DC/DC 컨버터란?

> [https://www.rohm.co.kr/electronics-basics/dc-dc-converters/dcdc_what1](https://www.rohm.co.kr/electronics-basics/dc-dc-converters/dcdc_what1)
> 
> - DC (직류)를 DC (직류)로 변환하는 기기입니다. 즉, DC (직류)로 전압을 변환하는 장치를 뜻합니다.
> - IC 등의 전자기기는 각각 동작 가능한 전압 범위가 다르므로, 각각에 적합한 전압을 생성할 필요가 있습니다.
> - 원래 전압보다 낮은 전압을 생성하는 것을 『강압 컨버터』, 원래 전압보다 높은 전압을 생성하는 것을 『승압 컨버터』라고 합니다.
> 
> 명칭 설명
> 
> - DC/DC 컨버터란 직류를 직류로 변환하는 **장치의 명칭** 입니다.
> - 보통 리니어 레귤레이터나 스위칭 레귤레이터라고 하는데, 이는 변환을 위한 **방식의 명칭**입니다.
> 
> ![Untitled](Untitled%2047.png)
> 
> | 전압을 낮추는 전원 장치 | 강압 컨버터, Buck 컨버터, Step‒down 컨버터 |
> | --- | --- |
> | 전압을 높이는 전원 장치 | 승압 컨버터, Boost 컨버터, Step-up 컨버터 |
> | 전압을 높이고 낮추는 전원 장치 | 승강압 컨버터, Buck-Boost 컨버터 |
> | 마이너스 (부) 전압을 생성하는 전원 장치 | 부전압 컨버터, 반전 컨버터, Inverting 컨버터 |

# **DC/DC 컨버터는 왜 필요한가?**

> [https://www.rohm.co.kr/electronics-basics/dc-dc-converters/dcdc_what3](https://www.rohm.co.kr/electronics-basics/dc-dc-converters/dcdc_what3)
> 
> 
> 콘센트를 연결하여 동작하는 전자 제품은 AC (교류) 100V를 DC (직류)로 변환하는 『AC/DC 컨버터』가 필요합니다.
> 
> 이는 반도체 부품의 대부분이 DC로만 동작하기 때문입니다.
> 
> 세트의 기판에 탑재되어 있는 IC 등은 각각 고유의 동작전압 범위를 가지며, 전압 정밀도 요구도 다릅니다.
> 
> 전압이 안정되지 않은 전원을 공급하면, 오동작 및 특성 열화 등의 트러블이 발생하게 됩니다.
> 
> 따라서, 필요한 전압으로 변환하거나, 안정화하기 위해 『DC/DC 컨버터』가 필요합니다.
> 
> [https://www.rohm.co.kr/documents/11417/4316668/dcdc_img_kr+%285%29.png/fe4fdd6f-dd73-495f-92e7-b4d2c9f131ad?t=1470258556423](https://www.rohm.co.kr/documents/11417/4316668/dcdc_img_kr+%285%29.png/fe4fdd6f-dd73-495f-92e7-b4d2c9f131ad?t=1470258556423)
> 
> DC/DC 컨버터로, 전압을 안정시키는 장치를 전압 레귤레이터라고 합니다.
> 

순간 방전이랑 지속 방전

순간 방전은 모터가 돌아갈 때 한번에 쫙 끌어가는 암페어 이고 지속 방전은 지속적으로 가져가는 암페어이다.

# **지속방전율에 대해서**

> https://evape.kr/bbs/board.php?bo_table=tip2&wr_id=5519
> 
> 
> 베이핑 생활에서 가장 중요한데 이해하기 복잡해서 입문자분들이 어렵게 생각하시는 부분이 배터리죠.
> 
> 오늘은 입문하시는 분들이 가장 어려워 하시는 배터리부분에 대한 필수적인 부분을 조금 설명드리려고 합니다.
> 
> 아래 내용에 대해 이것마저 "복잡하고 어려워"하시는 분들이 계시다면 시간낭비마시고 뒤로가기 버튼을 누르시고 그냥 내장배터리로 된 기기를 고르셔서 사용하시기 바랍니다.
> 
> "전류? 전력? 저항? 출력? 에고 복잡해"하시는 분들이 많으실 겁니다.
> 
> 입문하시는 분들 또는 입문하셨으나 그냥 쓰라고 하는 배터리만을 사용해오신 중급자를 포함한 분들을 위한 가이드라서 반드시 필요한 부분만 이해하시기 쉽게 써보도록 하겠습니다.
> 
> 배터리를 선택하시는데 고민이 많으실 거예요.
> 
> 예전의 배터리 폭발사건 이후로 국내제조사 제품들의 비보호배터리 소매유통이 금지되어서 오히려 국내생산된 비보호배터리를 구하기도 어렵구요.
 
 이를 이용해서 리래핑된 제품들이 유통되고는 있으나 가품이 섞인 경우도 꽤나 많습니다.
 
 직구를 통해서 국내산 배터리를 리래핑한 제품들을 구하기에도 쉽지 않으실거고 어떤게 쓸만한 것인지도 모르시는 분들도 계실겁니다.
 
 정품과 가품을 구별하는 방법까지는 다루지 않겠습니다.
 
 (너무 길어지고 경우의 수가 너무 많은 얘기라서..못하는 쪽이 더 맞겠네요.)
 
 이번엔 입문자분들을 위해서 정품인 경우만을 고려했을때 꼭 잊지 마셔야 하는 부분만 얘기하겠습니다.
 
 # **지속방전율**
 
 베이핑생활의 필수 배터리를 선택하실 때 이것만은 꼭 기억하시고 고르세요.
 
 "지속방전율(또는 지속방전전류, 영어약자로는 CDC 또는 CDR)!"
 
 이게 뭔데? 하시는 분들을 위해서 이해를 돕기위해 잠시 그림을 통해서 설명드리겠습니다.
 
 ![Untitled](Untitled%2048.png)
 
 그림과 같이 3개의 플라스틱(PET)물병에 물이 담겨 있습니다.
 
 용량이 같은 3000짜리(배터리는 mAh의 단위로 표시)의 물통입니다.
 
 주둥이의 크기가 다르죠.
 
 왼쪽부터 5, 15, 25의 주둥이 용량을 가지고 있습니다.
 
 같은 시간동안 같은 양의 물을 컵에 붓는 겁니다.
 
 4초동안 100짜리(배터리로 보면 W로 표시)라는 크기의 물을 붓도록 해보죠.
 
 어느 것이 안전하게 제한된 시간안에 물을 부어낼 수 있을까요?
 
 아마 5의 주둥이를 가진 PET병은 손으로 눌러 짜야 할겁니다.
 
 반면에 25의 크기를 가진 물통은 그리 힘들지 않게 물을 부어 낼 수 있을 겁니다.
 
 좀 비약해서 말씀드리자면 더 작은 주둥이를 가진 물통이라면 짜내느라고 찌그러져서 원형을 회복하기 어려울겁니다.
 
 이와 같은 원리로 극저옴저항의 폐호흡을 출력안나오는 배터리로 사용하다가 발열이 생겨서 배터리와 기기에 무리를 주게되고 수명을 갉아먹게되며 심지어 터질 수 있는 조건을 만들기도 합니다.
 
 바로 여기에서 이 물통의 주둥이의 크기가 "지속방전율, CDR"의 개념입니다.
 
 # **순간방전율?**
 
 순간방전율=지속방전율이라고 표기되어 팔고 있는 배터리도 꽤 많습니다.
 
 순간방전율이란건 위에서 그림으로 설명드린 것처럼 물병을 짜내서 뽑아낼 수 있는 강제적인 물의 양입니다.
 
 절대 순간방전율≠지속방전율이라는 걸 기억해주세요
 
 같은 돈을 주고 배터리를 구입한다면 주둥이가 큰 물통을 구입하세요.
 
 그게 안전한 베이핑생활의 필수조건입니다.
 
 # **최대출력 계산**
 
 지속방전율이 이해되셨다면 이것을 이용해 최대 출력을 계산하는 방법을 정리해봤습니다.
 
 저저항으로 폐호흡시 꼭 알아두셔야 할 부분입니다.
 
 "난 입호흡만 하는데?"하시는 분들은 모르셔도 됩니다. 하지만 알고 계시면 더욱 좋겠죠.
 
 "최대출력=지속방전율X3"을 기억하시면 됩니다.
 
 15A의 지속방전율을 가진 배터리로 낼수 있는 최대출력은 15X3 = 45W가 됩니다.
 
 25A의 지속방전율의 배터리라면 25X3 = 75W가 되겠죠.
 
 이걸 두발짜리 모드기를 생각하시면 X2해서 15AX3X2 = 90W
 
 25AX3X2 = 150W가 되는거죠.
 
 최대출력은 넉넉히 낼 수 있어야 좋은 배터리를 골랐다고 하겠죠.
 
 비유하자면 자동차의 배기량이 큰 엔진이 저속주행에서도 묵직하고 힘좋게 자동차를 끌어가는 원리와 같다고 할까요.
 
 같은 모드기를 사용해도 최대로 낼 수 있는 출력값은 지속방전율에 따라 이렇게 차이가 납니다.
 
 두발모드기를 사용하시는데 같은 값이면 어느 것을 선택하시겠습니까?
 
 한발모드기라면 더더욱 그렇죠. 멕모드를 써보고 싶으시면 더욱 지속방전율이 높은 배터리를 선택하셔야 합니다.
 
 베이핑을 안내하는 길잡이(샵직원)들이 한발 모드기에 지속방전율도 명확하지 않은 배터리를 권하면서 "이거로도 폐호흡하시는데 상관없어요."라고 한다면 문닫고 나오세요.
 

18650 리튬 배터리

버저로 소리 조절하기

```arduino
const int Buzzer = 10;
int Sound = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);

}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()>0){
    char c = Serial.read();
    if(c == 'a'){
      Sound += 100;
      tone(Buzzer,Sound);
    }
    else if(c == 'b'){
      Sound -= 100;
      tone(Buzzer,Sound);
      }
  }

}
```

키보드에 따라 소리 정하기

```arduino
const int Buzzer = 10;
int Sound = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);

}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()>0){
    char x = Serial.read();
    if(x == 'a'){
      Sound = 262;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 's'){
      Sound = 294;
      tone(Buzzer,Sound);
      delay(100);
      }
    else if(x == 'd'){
      Sound = 330;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 'f'){
      Sound = 349;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 'g'){
      Sound = 393;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 'h'){
      Sound = 440;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 'j'){
      Sound = 494;
      tone(Buzzer,Sound);
      delay(100);
    }
    else if(x == 'k'){
      Sound = 524;
      tone(Buzzer,Sound);
      delay(100);
    }
    else{
      Sound = 0;
      tone(Buzzer,Sound);
      delay(100);
    }
  }

}
```

## [[Arduino]] [[Class]] 만들기

```arduino
int A_IA = 10;
int A_IB = 9;
int buttonPin = 3;
int currentState = 0; // 0: stop, 1: forward, 2: stop, 3: back

void setup() {
  Serial.begin(115200);
  pinMode(A_IA, OUTPUT);
  pinMode(A_IB, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP); // 버튼 핀을 입력으로 설정하고 풀업 저항 사용
}

void loop() {
  static bool lastButtonState = HIGH; // 이전 버튼 상태를 저장
  bool buttonState = digitalRead(buttonPin); // 현재 버튼 상태를 읽음

  // 버튼 눌림 감지
  if (buttonState == LOW && lastButtonState == HIGH) {
    currentState = (currentState + 1) % 4; // 상태를 순환적으로 변경

    // 상태에 따라 동작 설정
    switch (currentState) {
      case 0:
      case 2:
        // stop
        analogWrite(A_IA, 0);
        analogWrite(A_IB, 0);
        Serial.println("stop");
        break;
      case 1:
        // forward
        analogWrite(A_IA, 128);
        analogWrite(A_IB, 0);
        Serial.println("forward");
        break;
      case 3:
        // back
        analogWrite(A_IA, 0);
        analogWrite(A_IB, 128);
        Serial.println("back");
        break;
    }
    delay(50); // 버튼 디바운싱을 위한 지연
  }

  lastButtonState = buttonState; // 현재 버튼 상태를 저장
}
```

예시 보고 이해하기

AGV를 만들 때에는 컨버터, 라즈베리파이, 모터, 배터리, 배쉬가 필요하다.

# LED에 불이 들어오게 하는 것

LedClass.h - 헤더파일

```arduino
#ifndef LED_CLASS_H     /* 만약 LED_CLASS_H가 define되어있지 않으면*/
#define LED_CLASS_H     /* define 해라*/
/* 헤더파일이 여기저기서 include될 수 있다. 그러면 중복 include될 수 있다.
 이렇게 중복으로 include 될 경우 error가 뜨기 때문에 이런 방식을 사용한다.

 ex) A.c  #include 'LedClass.h'
 ex) B.c  #include 'LedClass.h' 이 두 개를 compile하면 error가 뜸.

이런 헤더파일 이름들은 겹치지만 않으면 된다. */
/* 파이썬은 import하면 소스코드를 다 가져오지만 c는 목록만 가져옴*/
class LedClass{

public:            // 파이썬의 self와 비슷한다. 여기에는 목록이기에 함수의 이름만 적는다.
  LedClass();      // 이게 우리가 파이썬에서 쓰는 def __init__ (self): 와 같다. class가 객체를 만들 때 사용
  void begin();    // 이자식 들은 return 값이 없다.
  void turn_on();
  void turn_off();

//private:           // 파이썬의 self가 없는 것과 비슷하다.
};

#endif //여기까지 작성해야지 여기서 define했던 것을 여기까지만 하겠다고 선언하는 것이다.

//이건 헤더파일//
```

LedClass.cpp - 소스코드 파일

```arduino
#include "Arduino.h"
#include "LedClass.h"

LedClass::LedClass(){     // 이 :: 이 함수를 만드는 것

}

void LedClass::begin(){
  pinMode(13,OUTPUT);      // 우리는 pin_num을 고정했다. 
}

void LedClass::turn_on(){
  digitalWrite(13,HIGH);
}

void LedClass::turn_off(){
  digitalWrite(13,LOW);
}
```

sketch_jul16a.ino - 실행 파일

```arduino
#include "LedClass.h"

LedClass l13;    /* 이게 13번 을 가져오는 것 l13 = LedClass()와 같음
                     c언어는 이걸 밖에서 전체적으로 선언해야지만 돌아간다*/
void setup() {
  // put your setup code here, to run once:
  l13.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  l13.turn_on();
  delay(1000);
  l13.turn_off();
  delay(1000);

}

```

이번엔 교차로 불이 들어오게 하는 것

ino 파일만 바꾸면 됨.

```arduino
#include "LedClass.h"

LedClass l13(13);    /* 이게 13번 을 가져오는 것 l13 = LedClass()와 같음
                     c언어는 이걸 밖에서 전체적으로 선언해야지만 돌아간다*/
LedClass l2(2);

void setup() {
  // put your setup code here, to run once:
  l13.begin();
  l2.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  l13.turn_on();
  delay(1000);
  l13.turn_off();
  l2.turn_on();
  delay(1000);
  l2.turn_off();

}

```

모터로 바퀴 굴러가는 Class만들기

# 내가 만든건 안 돌아감

MoterClass.h

```arduino
#ifndef MOTOR_CLASS_H
#define MOTOR_CLASS_H

class MotorClass{

public:    
  MoterClass();     
  void begin();    
  void accel();
  void back();
  void stop();

};

#endif 
```

MoterClass.cpp

```arduino
#include "Arduino.h"
#include <Servo.h>
#include "MotorClass.h"

MotorClass::MotorClass(){   
}

void MotorClass::begin(){
  pinMode(A_IA,OUTPUT);    
  pinMode(B_IB,OUTPUT);   
}

void MotorClass::accel(){
  alalogWrite(A_IA,128);
  analogWrite(B_IB,0);
}

void LedClass::back(){
  alalogWrite(A_IA,0);
  analogWrite(B_IB,128);
}

void LedClass::stop(){
  alalogWrite(A_IA,0);
  analogWrite(B_IB,0);
}
```

ino파일

```arduino
#include "MotorClass.h"

MotorClass A_IA(10);
MotorClass B_IB(9);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  A_IA.begin();
  B_IB.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()>0) {
    char c = Serial.read();
    if (c=='f'){
      A_IA.accel();
      B_IB.back();
    }
    else if (c=='b'){
      A_IA.back();
      B_IB.accel();
    }
    else if (c=='s'){
    A_IA.stop();
    B_IB.stop();
    }
  }
}
```

# 우리가 강사님의 힌트를 보고 다시 고친 것

ino함수

```arduino
#include "MotorClass.h"

MotorClass Motor(9,10);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Motor.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available()>0) {
    char c = Serial.read();
    if (c=='f'){
      Motor.accel();
    }
    else if (c=='b'){
      Motor.back();
    }
    else if (c=='s'){
      Motor.stop();
    }
  }
}
```

헤더파일 함수

```arduino
#ifndef MOTOR_CLASS_H
#define MOTOR_CLASS_H

#include "Arduino.h"

class MotorClass{

public:    
  MotorClass(int IA, int IB);     
  void begin();    
  void accel();
  void back();
  void stop();

private:
  int A_IA;
  int B_IB;

};

#endif 
```

소스코드 파일

```arduino
#include "Arduino.h"
#include "MotorClass.h"

MotorClass::MotorClass(int IA, int IB){   
  A_IA = IA;
  B_IB = IB;
}

void MotorClass::begin(){
  pinMode(A_IA,OUTPUT);    
  pinMode(B_IB,OUTPUT);   
}

void MotorClass::accel(){
  analogWrite(A_IA,128);
  analogWrite(B_IB,0);
}

void MotorClass::back(){
  analogWrite(A_IA,0);
  analogWrite(B_IB,128);
}

void MotorClass::stop(){
  analogWrite(A_IA,0);
  analogWrite(B_IB,0);
}
```

이걸로 돌리면 잘 돌아감(오타 때문에 1시간은 고민함)

# 0.96’’ OLED

[https://www.youtube.com/watch?v=_KD7skmusTQ](https://www.youtube.com/watch?v=_KD7skmusTQ)

OLCD 기본 작동 유튜브

# 아두이노 4일차 오후

# 레지스터에 관한 설명

> Chatgpt

아두이노에서 레지스터(register)는 마이크로컨트롤러 내부의 메모리 위치로, 특정 하드웨어 기능을 제어하거나 설정하는 데 사용됩니다. 이 레지스터들은 특정 주소를 가지며, 이러한 주소를 통해 레지스터에 접근할 수 있습니다.
> 
> 
> 아두이노 우노 보드의 경우, ATmega328P 마이크로컨트롤러가 사용됩니다. 이 마이크로컨트롤러에는 여러 I/O 핀이 있으며, 각 핀은 특정 레지스터에 의해 제어됩니다. 아래는 아두이노 우노의 핀과 해당 레지스터를 정리한 것입니다.
> 
> ### 디지털 핀 (0~13)
> 
> - **핀 0 (RX)**: `PD0` (PORTD, DDRD, PIND)
> - **핀 1 (TX)**: `PD1` (PORTD, DDRD, PIND)
> - **핀 2**: `PD2` (PORTD, DDRD, PIND)
> - **핀 3**: `PD3` (PORTD, DDRD, PIND)
> - **핀 4**: `PD4` (PORTD, DDRD, PIND)
> - **핀 5**: `PD5` (PORTD, DDRD, PIND)
> - **핀 6**: `PD6` (PORTD, DDRD, PIND)
> - **핀 7**: `PD7` (PORTD, DDRD, PIND)
> - **핀 8**: `PB0` (PORTB, DDRB, PINB)
> - **핀 9**: `PB1` (PORTB, DDRB, PINB)
> - **핀 10**: `PB2` (PORTB, DDRB, PINB)
> - **핀 11**: `PB3` (PORTB, DDRB, PINB)
> - **핀 12**: `PB4` (PORTB, DDRB, PINB)
> - **핀 13**: `PB5` (PORTB, DDRB, PINB)
> 
> ### 아날로그 핀 (A0~A5)
> 
> 아날로그 핀도 디지털 핀으로 사용할 수 있습니다. 이 핀들은 `PORTC` 레지스터에 매핑됩니다.
> 
> - **핀 A0**: `PC0` (PORTC, DDRC, PINC)
> - **핀 A1**: `PC1` (PORTC, DDRC, PINC)
> - **핀 A2**: `PC2` (PORTC, DDRC, PINC)
> - **핀 A3**: `PC3` (PORTC, DDRC, PINC)
> - **핀 A4 (SDA)**: `PC4` (PORTC, DDRC, PINC)
> - **핀 A5 (SCL)**: `PC5` (PORTC, DDRC, PINC)
> 
> ### 레지스터 설명
> 
> - **PORTx 레지스터**: 핀에 데이터를 쓰기 위한 레지스터. 예를 들어, `PORTD`는 핀 0~7의 데이터를 설정합니다.
> - **DDRx 레지스터**: 핀의 방향을 설정하는 레지스터. `DDRD`에서 비트를 설정하여 핀을 입력(0) 또는 출력(1)으로 설정합니다.
> - **PINx 레지스터**: 핀의 현재 입력 값을 읽는 레지스터. `PIND`를 통해 핀 0~7의 상태를 읽을 수 있습니다.

# 레지스터 예제

http://kocw-n.xcache.kinxcdn.com/data/document/2021/hknu/kimsoochan0708/11.pdf

OLED 화면을 나오게 하는 법

[10.mp4](10.mp4)

ada ssd 1306을 라이브러리에 검색해서 설치한다음 example로 코드를 실행시키면 나온다. 

```arduino
#include <Wire.h>
#include <Adafruit_SSD1306.h>

Adafruit_SSD1306 oled(128, 32, &Wire, -1);

void setup()
{
  oled.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  delay(2000);

  oled.clearDisplay();
  oled.setTextSize(1);
  oled.setTextColor(WHITE);
  oled.setCursor(0, 10);
  oled.println("Hello");
  oled.println("Robot");
  oled.display();
}

void loop()
{

}
```

이렇게 하면 글자가 잘 나온다.

라이브러리가 display에 어떤 영향을 주는 지에 대해 알아보자

다른 방법으로 해봤더니 용량을 더 많이 사용했다.

내부에 프레임 버퍼라는 것이 있어서 프레임당 1개씩 그림을 그린다. 그때 이걸 display하는데 이 바이너리의 형태가 다를 수 있다.

SPI는 이걸 모든 프래임당 하나씩 그리는 것이다.

기본적으로 I2C가 선을 훨신 덜 연결해도 됨

그러나 SPI가 빠르고 전력 소모가 적음

디버깅 하는 방법은 

OLED하거나 소프트웨어 스크린이라는 것이 있다.

이건 디스플레이를 이용해서 OLED에 게임 디스플레이를 띄운 것이다.

![11.jpg](11.jpg)

타이머 인터럽트

여기의 타이머는 8,16,32비트의 방을 갖고 있다. 이건 아두이노가 1/16bit의 시간동안 1번 동안 카운팅 한다는 것이다.

카운트가 되는 도중에 일정 시간이 되면 인터럽트가 생기면서 우리가 원하는 정보를 읽게 만들 수 있다.

즉 여기서 타이머 인터럽트는 타이머를 측정하는 도중에 인터럽을 발생시키면서 다른 MCU의 정보를 읽게 하는 것이다.

이때 MCU는 모터나 엔코더 등에도 연결 되어 있다

타이머 카운터;;

크리스탈 클락이 들어올때마다 1씩 증가한다. 이건 고정된 타이머 이다. 그러나 우리는 가변적인 타이머가 필요하므로

8,16,32비트의 카운터 중에서도 일정의 인터럽을 발생해서 그 8,16,32비트의 타이머를 전부 읽기 전에 인터럽으로 시간을 지정하는 것이다.

```arduino
#include <Servo.h>

const int SERVO = 10;
Servo servo;
const int buttonPin = 2;

int servo_state = 30;
bool servo_state_changed = false;

void buttonPressed() {
  servo_state = (servo_state == 30)?150:30;
  servo_state_changed = true;
}

void setup() {  
  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(buttonPin), buttonPressed, FALLING);
  servo.attach(SERVO);  
  servo.write(0);
  delay(1000);
}

void loop() {
  if(servo_state_changed) {
    servo_state_changed = false;
    servo.write(servo_state);
  }   
}

```

버튼을 누르면 인터럽트를 이용해서 서보모터가 움직임

[9.mp4](9.mp4)

# 시리얼 통신

```arduino
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0){
    String uga = Serial.readStringUntil('c');
    Serial.println(uga);
  }
}

```

문자열에서 c를 입력하면 줄을 바꿔버린다.

![Untitled](Untitled%2049.png)

![Untitled](Untitled%2050.png)

이번엔 a90b90c90d90만 이용해서 90만 뽑아내 본다.

# abcd프로토콜

맥박과 같은 숫자 정보를 pc로 날릴 때 사용

```arduino
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0){
    String uga = Serial.readStringUntil('\n');
    int start = uga.indexOf('a');
    int end = uga.indexOf('b');
    String sub_uga = uga.substring(start+1,end);  // start+1의 인덱스부터 end의 인덱스까지 반환
    Serial.println(sub_uga);
  }
}

```

하지만 이때에 sub_uga는 문자열이다.

```arduino
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available() > 0){
    String uga = Serial.readStringUntil('\n');
    int start = uga.indexOf('a');
    int end = uga.indexOf('b');
    String sub_uga = uga.substring(start+1,end);
    int uga_num = sub_uga.toInt();   // 여기서 문자열을 int형으로 바꾸어 준다.
    Serial.println(uga_num+1);
  }
}
```

이러면 문자열을 int로 바꿀 수 있어서 1을 더할 수 있게 된다.

파이썬에서 아두이노로 보내서 띄우는 것을 해보자

우리는 지금까지 시리얼 모니터에 a90b90c90d90e90을 작성 했지만 이번에는 파이썬을 이용해서 보내서 91이 출력되게 해보자.

```arduino
#include <Arduino.h>
#include <U8x8lib.h>

#ifdef U8X8_HAVE_HW_SPI
#include <SPI.h>
#endif

U8X8_SSD1306_128X32_UNIVISION_HW_I2C u8x8(/* reset=*/ U8X8_PIN_NONE, /* clock=*/ SCL, /* data=*/ SDA);   // pin remapping with ESP8266 HW I2C

void setup(void)
{
  Serial.begin(115200);  
  u8x8.begin();
  u8x8.setPowerSave(0);
  
  
}

void loop(void){
    String sub_uga="";

    if(Serial.available() > 0){
    String uga = Serial.readStringUntil('\n');
    int start = uga.indexOf('a');
    int end = uga.indexOf('b');
    String sub_uga = uga.substring(start+1,end);
    int uga_num = sub_uga.toInt();
    
    Serial.println(uga_num);
    u8x8.clearDisplay();
    u8x8.setFont(u8x8_font_chroma48medium8_r);
    u8x8.drawString(0,1,sub_uga.c_str());
    u8x8.refreshDisplay();
  }
  delay(500);
}
```

이걸로 시리얼 모니터에 작성하면 값이 디스플레이에 올라온다.

![KakaoTalk_20240716_173429561.jpg](KakaoTalk_20240716_173429561.jpg)

![KakaoTalk_20240716_173429561_01.jpg](KakaoTalk_20240716_173429561_01.jpg)

## 공지사항
<br>



## 수업 내용


# 다음 할 일(After Actions)
## 작업 (Tasks)


## 정리 (Summary)



