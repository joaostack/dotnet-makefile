all: clean restore build publish

clean:
	dotnet clean .

restore:
	dotnet restore .

build:
	dotnet build .

#### BINÁRIO NATIVO E SEM ARQUIVOS DEBUG
# dotnet publish -p:IsAotCompatible=true -p:PublishAot=true -p:PublishSingleFile=true -p:StripSymbols=true .

#### BINÁRIO NATIVO COM ARQUIVOS DEBUG
# dotnet publish -p:IsAotCompatible=true -p:PublishAot=true -p:PublishSingleFile=true .

#### BINÁRIO LIMPO
# dotnet publish -p:PublishSingleFile=true -p:PublishTrimmed=true -p:StripSymbols=true -p:IsTrimmable=true -p:VerifyReferenceTrimCompatibility=true .

publish:
	dotnet publish -p:PublishSingleFile=true -p:StripSymbols=true
