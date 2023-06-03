#include <libgen.h>
#include <caml/mlvalues.h>

/* Return directory part of PATH or "." if none is available.  */
extern char *ocaml_dirname (char *__path) __THROW;