# Git for TwinCAT 2 (CoDeSys)

## How To...

Should close `PLC Control` before using `+commit.cmd`

* [+commit.cmd](https://github.com/nikvoronin/Tc2_Git/blob/master/%2Bcommit.cmd)
  1. scan for the .pro files
  1. silently do overwriting export from the .pro to the .exp
  1. git add * (all)
  1. git commit -m _with-current-date-n-time_

U should `git branch` or `git checkout` before running `+restore.cmd`

* [+restore.cmd](https://github.com/nikvoronin/Tc2_Git/blob/master/%2Brestore.cmd)
  1. scan for .pro files
  1. silently do overwriting import from the .exp files to the .pro one

## Macro

Open options menu in the `PLC Control` then add [Git.mac](https://github.com/nikvoronin/Tc2_Git/blob/master/Git.mac) as a macrolibrary to the working project: `Project → Options → Macros → Macrolibrary... → Include...`
Use it under the `Edit → Macros → Git → Commit`

## Reading List (eng, ru)

In a random order

* Understanding Git Series (eng)
  * [Data Model](https://hackernoon.com/https-medium-com-zspajich-understanding-git-data-model-95eb16cc99f5)
  * [Branching](https://hackernoon.com/understanding-git-branching-2662f5882f9)
  * [Index](https://hackernoon.com/understanding-git-index-4821a0765cf)
  * [Git Reset 101](https://hackernoon.com/reset-101-ba05d9e3f2c7)
* [Сходство и различие между Mercurial и Git](https://habr.com/ru/post/168675/). Почему именно Git?
* [Git: наглядная справка](https://marklodato.github.io/visual-git-guide/index-ru.html)
* [Про Git](https://git-scm.com/book/ru/v2). Книга и полное описание работы с Git.
* [Git How To](https://githowto.com/ru). Интерактивный тур
* [Got TwinCAT](https://gotwincat.blogspot.com). Пост в блоге.
