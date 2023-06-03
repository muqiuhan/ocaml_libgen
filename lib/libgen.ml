(* Return directory part of PATH or "." if none is available.  *)
external dirname : string -> string = "__ocaml_dirname"

(* Return final component of PATH.
   This is the weird XPG version of this function.  It sometimes will
   modify its argument.  Therefore we normally use the GNU version (in
   <string.h>) and only if this header is included make the XPG
   version available under the real name.  *)
external xpg_basename : string -> string = "__ocaml__xpg_basename"

(** Alias ​​for xpg_basename *)
let basename = xpg_basename
