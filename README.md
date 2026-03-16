# dotnet-makefile
Arquivo Makefile que uso em projetos DotNET

#### Padrão NIX
```bash
dotnet publish -p:PublishSingleFile=true -p:StripSymbols=true
```

#### Binário nativo com arquivos debug
```bash
dotnet publish -p:IsAotCompatible=true -p:PublishAot=true -p:PublishSingleFile=true -p:StripSymbols=true .
```

#### Binário nativo sem arquivos debug
```bash
dotnet publish -p:IsAotCompatible=true -p:PublishAot=true -p:PublishSingleFile=true .
```

#### Binário limpo
```bash
dotnet publish -p:PublishSingleFile=true -p:PublishTrimmed=true -p:IsTrimmable=true -p:VerifyReferenceTrimCompatibility=true .
```
