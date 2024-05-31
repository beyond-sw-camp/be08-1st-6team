import csv
import random
from datetime import datetime, timedelta    # cf) timedelta(날짜 더하기 빼기 모듈)

start_date_range = datetime(2020, 1, 1)#시작 날짜(변경해도 됨)
end_date_range = datetime(2024, 5, 31)#끝나는 날짜(변경ok)



def random_date_func(start, end):#서비스 신청 날짜 랜덤 데이터 생성 func

    del_date=(end - start).days#날짜 차이(무작위 날짜 생성 때문)
    rand_date=random.randint(0,del_date)#0일 ~ 날짜 차이만큼의 랜덤데이터
    rd = start+timedelta(rand_date)
    # 시작날짜(원 데이터)에 랜덤으로 돌린 날짜데이터 더하면 새로운 시작 날짜 데이터 생성 됨

    return rd

dummy = []#랜덤으로 생성한 데이터 담을 배열

for cnt in range(1,2001): #총 2000개
    service_no=cnt
    user_no = random.choice(list(range(1, 16)))#회원 1~15까지
    inst_no = random.choice(list(range(1, 24)))#기관 1~23까지

    start_date=random_date_func(start_date_range, end_date_range)

    #랜덤 값: end_date는 start_date의 당일~1년 후의 날짜로
    #마찬가지로 random.randint(0, 365) 값은 변경해도 ok
    rd_end_date=timedelta(random.randint(0, 365))
    end_date=start_date+rd_end_date

    # cf) random.choice=>중복 허용해서 하나 랜덤 선택하는 모듈
    care_service = random.choice(['Y', 'N'])
    alert_service = random.choice(['Y', 'N'])
    check_service = random.choice(['Y', 'N'])


    # 날짜데이터 sql date 형식이랑 일치시키기
    start_date=start_date.strftime('%Y-%m-%d')
    end_date=end_date.strftime('%Y-%m-%d')

    dummy.append((service_no,user_no, inst_no, start_date, end_date, care_service, alert_service, check_service))

dummy.sort(key=lambda x:(x[0],x[1],x[2]))

#print(len(dummy)-len(set((user_no,inst_no))))
#print(*dummy[:20],sep="\n") #생성 확인


# ↓ CSV파일 생성 코드 ↓
file_name = 'service_request_dummy.csv'
with open(file_name, mode='w', newline='') as file:#파일명, 쓰기모드, 개행X
    w = csv.writer(file)
    #데베 쿼리랑 일치 시키기
    w.writerow(['service_no','user_no', 'inst_no', 'start_date', 'end_date', 'care_service', 'alert_service', 'check_service'])
    w.writerows(dummy)
print("파일생성완료")
