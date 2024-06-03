# for loop
- for 명령
- 동일한 작업을 반복할 때 사용한다.
- 구조 :
-
    ```sh
    for var in var1 var2 var3 # a b c
    do 
      cmd1
      cmd2
      echo $var ...
      ...
    done
    ,,,

  - do - done 구간을 바디라고 부른다.
  - 바디 구간은 var 개수만큼 반복이 되고, 마지막 var을 타고 종료가 된다.

Q. file1, file2. file3을 돌면서 파일 출력하기

for file in file1 file2 file3
do
  echo $file
done

or

for file in file[1-3]
do
  $file
done

- 문자 치환 가능함

## Q. 현재 디렉토리의 모든 파일에 대해서 루프를 타고자 한다

for file in *
....

## Q. 파일 목록이 있고 filelist.txt에 대해 저장되어 있다.
이 파일에 있는 모든 파일 리스트를 순회하는 코드

## in이 없는 for loop
for file # 들어오는 모든 인수를 순회한다.
do
...

./sample.sh 1 2 3 4 5

이 코드는 1 2 3 4 5를 순회하며, 각각의 인수에 대해서 do

### '$*' vs '$@'
- 입력되는 모든 인수
- 다음표가 있고 없을 때 차이점 비교

### $*
- 따옴표로 감싸면 모든 인수를 1개로 취급한다.
- 따옴표로 감싸면 null을 출력한다.

### $@
- 따옴표로 감싸면 입력되는 따옴표를 인지해서 개수를 취급한다.
- 따옴표로 감싸면 null을 실행하지 않는다.

#while
- 조건이 성립할 때까지 순회하는 반복문에 사용한다.
- 구조 :

  while cmd # 참이면/종료상태 바디를 순회함
  do
    cmd1
    cmd2
     # cmd 변화 상태
  done
  ...

## Q. 1-5까지 출력하는 while loop

num=1
while [ $num -le 5 ]
do
  echo $num
  num=$(( num+1 ))
done

#until loop

  until cmd # nonzero, false
  do
    cmd1
    cmd2
  done

- 특정 이벤트가 일어나길 기다릴 때 많이 사용한다.
