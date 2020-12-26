# ec2-web-and-db-server-setting
server setting template (amazon linux, springboot, react, mariadb, nginx, jenkins)

# java 설치
```sudo yum install -y java-1.8.0-openjdk-devel.x86_64```

# node 설치
#### nvm설치
```curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash```

#### nvm 환경변수추가	
```vi ~/.bash_profile```
다음 내용 추가
```export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"```

#### nvm버전 설정
```nvm use v11.15.0```

# gradle build
gradle build 안되면 `./gradlew dependencies`  
그래도 안되면 `./gradlew --stop` 해서 데몬 하나끄기

# mariadb 설치
```sudo yum install mariadb-server```

#### config 수정
`sudo vi /etc/my.cnf` 에서 mysqld부분에 추가
```
# ec2-user custom
port=3306
character-set-server=utf8mb4
collation-server=utf8mb4_unicode_ci
character_set_server=utf8mb4
collation_server=utf8mb4_unicode_ci
skip-external-locking
bind-address=0.0.0.0
```

