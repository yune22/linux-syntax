# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 실행할때 ./myscript.sh
# 실행을 위해서는 실행권한 (x) 필요
# 예시
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
./myscript.sh


# 실습1
# myscript2 쉘스크립트 파일 생성
# 터미널창에 script start라는 문구 출력
# 홈 디렉토리에서 mydir 폴더 생성
# mydir로 이동해서  file1.txt, file2.txt 파일 생성
# file1.txt에는 hello from file1이라는 문구 입력
# file2.txt에는 hello from file2이라는 문구 입력
# 터미널창에 script end라는 문구 출력

# nano 안에 실행권한 넣어봤자
echo "script start"
cd
mkdir mydir
cd mydir 
touch file1.txt file2.txt
echo "hello from file1" > file1.txt
echo "hello from file2" > file2.txt
echo "script end"

# 실습2
# myscript3.sh 생성
# script3 start 터미널 창 출력
# 홈디렉토리의 mydir로 이동 (절대경로)
# file1.txt 파일의 백업본 생성, 이름은 file1_backup.txt
# file2.txt 파일의 이름을 file2_rename.txt로 변경
# script3 end 터미널 창 출력

touch myscript3.sh
nano myscript3.sh

echo "script3 start"
cd /home/yun/mydir
cp file1.txt file1_backup.txt
mv file2.txt ./file2_rename.txt
echo "script3 end"

chmod u+x myscript3.sh
./myscript3.sh

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name = first_file.txt
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else 
    echo "$filr_name file does not exist"
fi

# for문
for a in {1..100}
do
    echo "hello world $a"
done

# for문과 파일/디렉토리 목록 조회
for a in *
do
    echo "$a"
done

# for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"