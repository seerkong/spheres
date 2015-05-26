(include "~~lib/ssrun/tasks/core.scm")

(define libraries
  '((spheres/algorithm boyer-moore-search)
    (spheres/algorithm knuth-morris-pratt-search)
    (spheres/algorithm compare)
    (spheres/algorithm comprehension)
    (spheres/algorithm list-extra)
    (spheres/algorithm list)
    (spheres/algorithm random)
    (spheres/algorithm/random extract)
    (spheres/algorithm/random flip-coin)
    (spheres/algorithm/random pick-unique)
    (spheres/algorithm/random pick)
    (spheres/algorithm/random sample-ordered)
    (spheres/algorithm/random sample-tree)
    (spheres/algorithm/random sample)
    (spheres/algorithm shuffle)
    (spheres/algorithm/shuffle binary)
    (spheres/algorithm/shuffle fisher-yates)
    (spheres/algorithm/shuffle insertion)
    (spheres/algorithm/shuffle merge)
    (spheres/algorithm/shuffle selection)
    (spheres/algorithm sort-merge)
    (spheres/algorithm tree)
    (spheres/algorithm u8vector)
    (spheres/algorithm vector)
    (spheres/concurrency channel)
    (spheres/concurrency mailbox)
    (spheres/concurrency termite)
    (spheres/core assert)
    (spheres/core base)
    (spheres/core condition)
    (spheres/core exception)
    (spheres/core functional)
    (spheres/core let-multiple)
    (spheres/core match)
    (spheres/core meta)
    (spheres/core minimal)
    (spheres/core rest-values)
    (spheres/core shift-reset)
    (spheres/crypto aes)
    (spheres/crypto cert)
    (spheres/crypto digest)
    (spheres/crypto hmac)
    (spheres/crypto io)
    (spheres/crypto pad)
    (spheres/crypto rsa)
    (spheres/dataenc base32)
    (spheres/dataenc base64)
    (spheres/dataenc bignum)
    (spheres/dataenc ieee-754)
    (spheres/dataenc integer)
    (spheres/dataformat csv)
    (spheres/dataformat json)
    (spheres/dataformat tar)
    (spheres/dataformat zlib)
    (spheres/gambit/ffi array)
    (spheres/gambit/ffi ffi-dependent)
    (spheres/gambit/ffi ffi-s-expression)
    (spheres/gambit/ffi memory)
    (spheres/gambit/ffi obj-c)
    (spheres/gambit/ffi serialization)
    (spheres/gambit/ios intf)
    (spheres/gambit/ios uidevice)
    (spheres/io base)
    (spheres/io binary)
    (spheres/io genport)
    (spheres/io file)
    (spheres/io shared-structure)
    (spheres/io ttyui)
    (spheres/logic alpha-kanren)
    (spheres/logic kanren)
    (spheres/logic r-kanren)
    (spheres/markup atom)
    (spheres/markup html)
    (spheres/markup html-doctype)
    (spheres/markup html-escape)
    (spheres/markup stx)
    (spheres/markup sxml-parser)
    (spheres/markup sxml-serializer)
    (spheres/markup sxml-tools)
    (spheres/markup sxml-tree-transform)
    (spheres/markup sxpath)
    (spheres/markup sxpath-context-xlink)
    (spheres/math arithmetic)
    (spheres/math arithmetic-inexact)
    (spheres/math arithmetic-modular)
    (spheres/math bit-logic)
    (spheres/math cartesian)
    (spheres/math combinatorics)
    (spheres/math factor)
    (spheres/math interpolation)
    (spheres/math interval)
    (spheres/math matrix)
    (spheres/math numerical)
    (spheres/math prime)
    (spheres/math statistics)
    (spheres/math vect2)
    (spheres/net mime)
    (spheres/net mime-types)
    (spheres/net repl-server)
    (spheres/net sack-server)
    (spheres/net/sack cookie)
    (spheres/net/sack http-util)
    (spheres/net/sack io-primitives)
    (spheres/net/sack overload-protection)
    (spheres/net/sack show-exceptions)
    (spheres/net/sack session)
    (spheres/net/sack session-cookie-id-based-store)
    (spheres/net/sack session-pool-store)
    (spheres/net/sack uri)
    (spheres/net/sack x-www-form-urlencoded)
    (spheres/net url)
    (spheres/net uuid)
    (spheres/object prototype)
    (spheres/object record)
    (spheres/object type-class)
    (spheres/os arguments)
    (spheres/os date-format)
    (spheres/os date-time)
    (spheres/os filesystem)
    (spheres/os functional-arguments)
    (spheres/os linux/error-codes)
    (spheres/os localization)
    (spheres/parser earley)
    (spheres/parser simple)
    (spheres/parser silex)
    (spheres/streams primitive)
    (spheres/streams derived)
    (spheres/streams extra)
    (spheres/streams lazy-seq)
    (spheres/string char-iset)
    (spheres/string char-set)
    (spheres/string fmt)
    (spheres/string format)
    (spheres/string/format format-srfi-28)
    (spheres/string/format format-srfi-48)
    (spheres/string/format format-srfi-54)
    (spheres/string regexp)
    (spheres/string string)
    (spheres/string string-extra)
    (spheres/string u8vector)
    (spheres/string unicode)
    (spheres/structure a-list)
    (spheres/structure array)
    (spheres/structure avl-tree)
    (spheres/structure bb-tree)
    (spheres/structure bit-vector)
    (spheres/structure circular-vector)
    (spheres/structure fifo)
    (spheres/structure hash-table)
    (spheres/structure hash-trie)
    (spheres/structure heap)
    (spheres/structure integer-set)
    (spheres/structure lru-cache)
    (spheres/structure multi-dimensional-array)
    (spheres/structure/multi-dimensional-array ctor)
    (spheres/structure/multi-dimensional-array mbda)
    (spheres/structure/multi-dimensional-array tter)
    (spheres/structure persistent-map)
    (spheres/structure persistent-vector)
    (spheres/structure persistent-zipper-vector)
    (spheres/structure random-access-list)
    (spheres/structure red-black-tree)
    (spheres/structure rope)
    (spheres/structure skip-list)
    (spheres/structure sparse-vector)
    (spheres/structure suffix-tree)
    (spheres/structure token-table)
    (spheres/structure treap)
    (spheres/structure vlist)
    (spheres/structure zipper)
    (spheres/util check)
    (spheres/util inspect)
    (spheres/util log)
    (spheres/util profile)
    (spheres/util quickcheck)
    (spheres/util test)))

(define features
  '(((spheres/core let-multiple) only-macros)
    ((spheres/core match) only-macros)
    ((spheres/core meta) only-macros)
    ((spheres/core shift-reset) only-macros)
    ((spheres/gambit/ffi array) gambit)
    ((spheres/gambit/ffi ffi-dependent) gambit)
    ((spheres/gambit/ffi ffi-s-expression) gambit)
    ((spheres/gambit/ffi memory) gambit)
    ((spheres/gambit/ffi obj-c) gambit ios objc)
    ((spheres/gambit/ffi serialization) gambit)
    ((spheres/gambit/ios intf) gambit ios)
    ((spheres/gambit/ios uidevice) gambit ios)
    ((spheres/object type-class) only-macros)
    ((spheres/structure fifo) only-macros)
    ((spheres/structure red-black-tree) only-macros)
    ((spheres/structure zipper) only-macros)))

(define-task (compile library) ()
  (define (compile-library lib)
    (let ((ftrs (or (assoc lib features) '())))
      (if (and (not (memq 'only-macros ftrs))
               (not (memq 'ios ftrs))
               (not (memq 'objc ftrs)))
          (ssrun#compile-library
           lib
           cond-expand-features: '(debug)
           expander: (if (memq 'gambit ftrs)
                         'gambit
                         'syntax-case)))))
  (if library
      (compile-library library)
      (for-each compile-library libraries)))

(define-task (test file) ()
  (if file
      (ssrun#run-file (string-append "test/" file))
      (ssrun#run-all-files "test/")))

(define-task clean ()
  (ssrun#clean-libraries libraries))

(define-task all (compile)
  'compile)
