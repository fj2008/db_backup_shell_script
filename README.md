# db_backup_shell_script

## 작업했던 순서
- ec2 인스턴스에서 docker컨테이너생성 이미지는 ubuntu기반에 mysql5.7버전이 깔려있는 이미지를 dockerhub에서 pull했습니다.
- ssh/vi editor 설치
```
apt-get update
apt-get install net-tools vim openssh-server
```
- docker 컨테이너 내에서 해당 shellscript를 작성
- expect는 대화형 프로그램을 자동으로 핸들링 할 수 있도록 해주는 툴입니다
```
sudo apt update
sudo apt install expect
```

