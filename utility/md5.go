package utility

import (
	"crypto/md5"
	"encoding/hex"
)

// MD5 求值MD5码
func MD5(src string) string {
	h := md5.New()
	h.Write([]byte(src))
	return hex.EncodeToString(h.Sum(nil))
}
