#include <libgen.h>

#include <caml/alloc.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/memory.h>
#include <caml/mlvalues.h>

/* Return directory part of PATH or "." if none is available.  */
value
__ocaml_dirname (value ocaml_path_value)
{
  CAMLparam1 (ocaml_path_value);

  CAMLreturn (
      caml_copy_string (dirname ((char *)(String_val (ocaml_path_value)))));
}

/* Return final component of PATH.

   This is the weird XPG version of this function.  It sometimes will
   modify its argument.  Therefore we normally use the GNU version (in
   <string.h>) and only if this header is included make the XPG
   version available under the real name.  */
value
__ocaml__xpg_basename (value ocaml_path)
{
  CAMLparam1 (ocaml_path);

  CAMLreturn (caml_copy_string (dirname ((char *)(String_val (ocaml_path)))));
}
