# Nixvim config

Esto es una configuración básica de NixVim (una herramienta para tener instancias de neovim configuradas en nix). Esta orientada a cumplir los siguientes requisitos:

- Editar Latex decentemente con VimTex como plugin para compilar (backend de TeXLive y latexmk) y Zathura como lector de pdf (con synctex activado)

- Editar Python, Nix y Julia bien, con todas las comodidades de autocompletado y de detección de errores. **No está planeado el soporte a inteligencias artificiales (en mi opinión tienden a causar graves errores en código científico)**, sin embargo se puede agregar manualmente en la config.

- Utilizar Quarto y Molten con Jupytext para tener una manera cómoda y extensible de editar Jupyter Notebooks, y archivos .qmd con código de Julia y Python.

- Ser amigable para usar y de integrar de a poco en el día a día.


## Configurar

Para ajustar la configuración es posible añadir archivos a la carpeta `./config`, o modificar los existentes. El lenguaje nix en este caso funciona más como un .json, y debería no ser difícil de seguir. La documentación está disponible en la página de nixvim.

Si añades un nuevo archivo recuerda incluirlo en el archivo de entrada de la configuración:
[`config/default.nix`](./config/default.nix)

Luego de configurar recomiendo ejecutar el comando `:checkhealth` dentro de neovim para verificar que no se haya roto nada.

## Probar la configuración

Para probar la configuración, asumiendo que se tiene una instancia de nix con flakes activadas (recomiendo el instalador de Determinate Systems si esque no se usa NixOS), basta correr el siguiente comando:

```
nix run .
```

¡Se agradecen comentarios y solicitudes! Si hay un error o bug no duden en abrir un issue. Si les comparto esta config es porque son panas así que seguramente podré buscar un momento para mejorar lo pedido