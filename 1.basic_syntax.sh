# 현재 위치 경로 출력
pwd

# 현재 위치에서 파일 및 폴더 목록 조회
ls

# 목록 조회 자세히
ls -l 

# 목록 조회 자세히, 숨긴 파일까지 
ls -al

# 목록 조회 자세히, 숨긴 파일까지, 오래된 순으로 정렬
ls -alrt

# 디렉토리 생성
mkdir yun_dir

# 특정 디렉토리로 이동
cd yun_dir

# 상위 디렉토리로 이동 (cd ../)
cd ..

# 루트 디렉토리로 이동 (최상위 디렉토리)
cd / 

# 직전 폴더로 이동
cd - 

# 홈 경로 (/home/yun)
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

# 파일 내용 터미널창에 출력
cat first_file.txt

# 파일 내용 편집기로 열기 : nano, vi
nano first_file.txt

# 파일 내용 상위 10줄 출력
head 파일명

# 파일 내용 하위 10줄 출력
tail 파일명

# 파일 내용 하위 n줄 출력
tail -숫자 파일명

# 파일 내용 실시간 조회
tail -f 파일명

# 도스키 위/아래를 통해 이전 명령어 조회 (화살표키)
# history 통해 이전에 실행했던 명령어 모두 조회
# clear 통해 터미널창에 보이는 명령어 내역 모두 지우기
# Ctrl+C 통해 명령중인 명령어 취소

# 파일 삭제 명령어, -f 옵션으로 묻지않고 삭제
rm 파일명

# 폴더째로 삭제
rm -r 파일명

# 터미널창에 입력한 문자열 출력
echo "hello world"

# echo를 통해 파일에 내용 입력 가능
# > : 덮어쓰기, >> : 추가모드
echo "hello world" > second_file.txt

# 복사 명령어 (폴더 복사시에는 -r 옵션)
# cp 복사대상 복사될파일명
cp first_file.txt first_file_copy.txt

# 파일 이동 명령어
mv 이동대상파일 경로/이동될파일명
# 현재 폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
# 상위 폴더로 파일 이동
mv second_file.txt ../

# grep : 파일 내에서 문자열 찾기
# r : 디렉토리 내에서, n : 라인수 출력, i : 대소문자 구분없이
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -type f (타입 파일만)

# fine와 grep의 혼용
# | xargs를 통해 왼쪽 실행문의 결과값을 오른쪽 실행문의 input 값으로 전달 
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일 중 이름이 first로 시작하는 파일을 찾아,
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장을 찾아라.
find . -type f -name "first*" | xargs grep -rni "hello"
find . -type f -name "first*" -exec grep -rni "hello"

# 파일 생성
touch 파일명