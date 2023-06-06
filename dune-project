(lang dune 3.6)

(name libgen)

(generate_opam_files true)

(source
 (github muqiuhan/ocaml_libgen))

(authors "Muqiu Han")

(maintainers "Muqiu Han")

(license MIT)

(documentation https://github.com/muqiuhan/ocaml_libgen)

(package
 (name libgen)
 (allow_empty)
 (synopsis "OCaml libgen bindings")
 (description "OCaml libgen bindings")
 (depends (ocaml dune)
 (tags
  (libgen bindings)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
