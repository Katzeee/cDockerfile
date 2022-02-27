部署与运行
docker build -t jiangfengxi/ubuntu-ics2021 . --no-cache
docker run -d --name ics2021 -e "PASSWD=xjfXJF110" -p 80:8443 -v /G/github-codes/Linux-projects/ics-projects:/config/workspace jiangfengxi/ubuntu-ics2021