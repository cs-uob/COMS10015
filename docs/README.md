<!--- -------------------------------------------------------------------- --->

- At a high level, the idea is that
  `index.html`
  is *generated* by applying the pre-processor `m4` to
  `index.m4`.
  It's therefore important *not* to edit
  `index.html`
  directly.

- The generation can be done by executing

  ```sh
  make index.html
  ```

  or similar.

- However, you might (reasonably) wonder why:
  [GitHub pages](https://pages.github.com) 
  already uses 
  [Jekyll](https://jekyllrb.com)
  to produce a static web-site from the repo. content!  The reason is 
  basically that we *also* need a single (ideally identical)
  `index.html`
  for use within the unit
  [Blackboard](https://www.blackboard.com)
  web-page.  So this approach, although a little convoluted, attempts
  to offer a result suitable for both contexts.

<!--- -------------------------------------------------------------------- --->
