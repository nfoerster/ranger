version:=372

build:
	./mvnw -DskipTests package -P ranger-trino-plugin

push:
	cp target/ranger-3.0.0-SNAPSHOT-trino-plugin.tar.gz target/ranger-3.0.0-$(version)-trino-plugin.tar.gz
	mc cp target/ranger-3.0.0-$(version)-trino-plugin.tar.gz s3/ftd-afo/Analytics/ranger