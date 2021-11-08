module util
import os


/*
util/handler.v
Date: 11/06/21
Author: 0x1CA3
*/


pub fn util_handler() ?bool {
	if os.args[1] == "--xss" {
		if util_xss_exploit(os.args[2], os.args[3], os.args[4], os.args[5], os.args[6])? == false {
			print(util.util_error())
		}
	}
	if os.args[1] == "--cmd" {
		if util_rce_exploit(os.args[2], os.args[3], os.args[4], os.args[5], os.args[6])? == false {
			print(util.util_error())
		}
	}
	return true
}

pub fn util_check() bool {
	if os.args.len < 7 {
		if os.args.len < 3 && os.args[1] == "--help" {
			print(util.util_help())
			return true
		}
		return false
	}
	return true
}