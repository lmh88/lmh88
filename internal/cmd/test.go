package cmd

import (
	"context"
	"fmt"
	"myproj/utility"

	"github.com/gogf/gf/v2/os/gcmd"
)

var (
	Test = gcmd.Command{
		Name:  "test",
		Usage: "test",
		Brief: "test md5",
		Func: func(ctx context.Context, parser *gcmd.Parser) (err error) {
			fmt.Println(utility.MD5("hhahaha"))
			return nil
		},
	}
)
