echo "> 현재 구동중인 애플리케이션 pid 확인"
CURRENT_PID=$(pgrep -f my-web-service.jar)
echo "$CURRENT_PID"
if [ -z $CURRENT_PID ]; then

        echo "> 현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
        echo "> 현재 구동중인 애플리케이션을 종료합니다."
        echo "kill -2 $CURRENT_PID"
        kill -9 $CURRENT_PID
        sleep 5
fi
