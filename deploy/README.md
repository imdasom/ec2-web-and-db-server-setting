- deploy를 준비하는 폴더이다
- `git clone http://github.com/imdasom/my-web-service` > 배포환경을 준비하고
- `./gradlew clean && ./gradlew build` > jar파일을 만들어낸다
- `bin/deploy.sh`을 실행시켜서 빌드된 jar파일을 카피해서 배포를 한다
- 젠킨스 연동해서 자동화필요!