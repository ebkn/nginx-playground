package main

import (
	"net/http"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func mainHandler(c echo.Context) error {
	return c.String(http.StatusOK, "ok")
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", mainHandler)

	e.Logger.Fatal(e.Start(":3000"))
}
