module vulnerable-project

go 1.18

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // CVE-2020-26160
	github.com/gin-gonic/gin v1.3.0 // CVE-2020-28483
	github.com/beego/beego/v2 v2.0.1 // CVE-2021-21250
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9 // CVE-2020-29652
	github.com/etcd-io/etcd v3.3.10+incompatible // CVE-2020-15106
)
