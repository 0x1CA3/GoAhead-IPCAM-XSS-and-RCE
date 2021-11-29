<h1 align="center">
    GoAhead IPCAM Exploit
</h1>
<p align="center">
	An exploit for an XSS vulnerability I found in the GoAhead webserver. I also decided to re-write and add an exploit for 
	the RCE vulnerability that was discovered by other security researchers for this webserver.
</p>

<p align="center">
	<a href="https://deno.land" target="_blank">
    	<img src="https://img.shields.io/badge/Version-1.0.0-7DCDE3?style=for-the-badge" alt="Version">
</p>

## Details
Vulnerability           | Severity    | Description
-------------           | ----------- | -----------
Stored XSS  | 5/10        | This vulnerability allows attackers to execute arbitrary javascript code on a victims browser.
Remote Code Execution   | 10/10       | This vulnerability allows remote attackers to execute arbitrary system commands.

## Setup
```
Steps for running exploit:
	cd bin
	./exploit
	

Steps for compiling (Make sure you have Vlang installed):
	v exploit.v
	./exploit
```
	
## Credits
```
https://github.com/0x1CA3
```
### Contributions 🎉
###### All contributions are accepted, simply open an Issue / Pull request.
