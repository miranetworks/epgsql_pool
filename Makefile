
.PHONY: all app clean test deps release

deps:
	./rebar get-deps

app: deps
	./rebar compile

clean:
	rm -fr .eunit
	./rebar clean

test: app
	sudo /etc/init.d/postgresql start
	sudo su postgres -c "cat sql/create_db.sql | psql"
	mkdir -p .eunit
	./rebar skip_deps=true eunit

all: clean app test
	@echo "Done."

include docker/docker.mk
