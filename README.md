Official dockerfile includes a quicklisp install with the following
installed: `drakma alexandria split-sequence serapeum esrap cl-ppcre
babel flexi-streams closer-mop cffi ironclad opticl cl-wav` (see
https://github.com/icfpcontest2020/dockerfiles/blob/master/dockerfiles/commonlisp/Dockerfile.base#L26
for current list, and send pull requests to make additions if you
think anything particularly common was missed). Those are mostly just
for convenience and to save a bit of build time, and you can include
your own `quicklisp/` dir in your solution repo and it will be copied
over the existing one, or add directories from your submission to the
`asdf` search path in `build.sh`

`app/` is added to `ql:*local-project-directories*`, so `.asd` files
there should be found by ql. By default `build.sh` loads the
`icfp2020-starterkit-cl` system, modify that as needed.

Alternately, you can modify `build.sh` as desired to build from the
contents of your submission repo as you see fit (no network access
allowed during build or run, so any extra dependencies must be
included in submission repo or added to the main dockerfile before the
contest, send pull requests to
https://github.com/icfpcontest2020/dockerfiles). See
https://github.com/icfpcontest2020/dockerfiles/blob/master/README.md
for full details of how submission works.