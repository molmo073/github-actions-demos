## Creamos fichero de prueba para modificar hanman-api y de esta forma verificar que funciona el path del workflow

```yaml
paths: ["hangman-api/**"]             #  el workflow solo se ejecute si los cambios afectan a la ruta concreta hangman-api/**
```

## Modificamos el README para provocar un push de la rama main y por tanto que se ejecute el workflow.

```yaml
 push:
    branches: [main]                      # El workflow se ejecutará cuando haya un push a la rama main.
    paths: ["hangman-api/**"]             #  el workflow solo se ejecute si los cambios afectan a la ruta concreta hangman-api/**
```

## Modificamos de nuevo el README para provocar un push de la rama main y por tanto que se ejecute el workflow de split-jobs.