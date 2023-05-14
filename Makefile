APP1_SRC := $(wildcard apps/app1/*.go)
LIB1_SRC := $(wildcard libs/lib1/*.go)

.PHONY: all.build
all.build: app1.build

app1.build: apps/app1/dist/main

apps/app1/dist/main: $(APP1_SRC) $(LIB1_SRC)
	go build -o apps/app1/dist/main apps/app1/main.go

.PHONY: all.test
all.test: app1.test lib1.test

.PHONY: app1.test
app1.test: lib1.test
	go test go-make-monorepo/apps/app1/...

.PHONY: lib1.test
lib1.test:
	go test go-make-monorepo/libs/lib1/...
