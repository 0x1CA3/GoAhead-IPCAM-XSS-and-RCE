module util


/*
util/message.v
Date: 11/06/21
Author: 0x1CA3
*/


pub fn payload_success() string {
	return "Alert: Payload sent!\n\n"
}

pub fn util_banner() string {
	return "/*****\n* GoAhead IPCAM RCE/Stored XSS Exploit\n* @written 11/06/21\n* @author 0x1CA3\n*****/\nUsage: ./exploit --option <USERNAME> <PASSWORD> <IP_ADDRESS> <PORT> <PAYLOAD>\n"
}

pub fn util_help() string {
	return "\n--help\t\tDisplays the available flags\n--xss\t\tLets you send a custom XSS payload\n--cmd\t\tLets you execute arbitrary system commands\n\n"
}

pub fn util_error() string {
	return "Error: Could not connect to target!\n\n"
}

pub fn util_arg_error() string {
	return "Error: Not enough arguments!\n\n"
}