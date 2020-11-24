# Git for TwinCAT 2 (CoDeSys)

## How To...

> It is a good idea to close `PLC Control` before using `+commit.cmd`

* [+commit.cmd](https://github.com/nikvoronin/Tc2_Git/blob/master/%2Bcommit.cmd) does:
  1. looking for the .pro files inside `%ProjectDir%`
  2. exports several `.exp` files from the one `.pro` file to the `~%ProjectName%` folder
  3. git add * (all)
  4. git commit -m _with-current-date-n-time_

> From command line, execute `git branch` or `git checkout` before running `+restore.cmd`

* [+restore.cmd](https://github.com/nikvoronin/Tc2_Git/blob/master/%2Brestore.cmd) does:
  1. looking for .pro files inside `%ProjectDir%`
  1. import from the .exp files to the .pro one

## Project Structure

```
ProjectDirectory
├─ .git
│  └─ ...
├─ .gitignore
├─ +commit.cmd
├─ +restore.cmd
├─ Git.mac
├─ README.md
└─ src
   ├─ foo.pro
   ├─ bar.pro
   ├─ bar.tpy
   ├─ ~foo
   │  ├─ FILE111.EXP
   │  ├─ FILE222.EXP
   │  └─ ...
   └─ ~bar
      ├─ FILE111.EXP
      ├─ FILE222.EXP
      └─ ...
```

## Macro

Open options menu in the `PLC Control` then add [Git.mac](https://github.com/nikvoronin/Tc2_Git/blob/master/Git.mac) as a macrolibrary to the working project: `Project → Options → Macros → Macrolibrary... → Include...`

![00_macro](https://user-images.githubusercontent.com/11328666/66593447-b295cd00-eb9f-11e9-9c52-5343585a19a1.png)

After that, you can find it under the `Edit → Macros → Git → Commit` menu items

![01_macro_menu](https://user-images.githubusercontent.com/11328666/66593496-cb05e780-eb9f-11e9-80ed-ebdeeacb4cb0.png)

## PLC-Control Command Line

"When TwinCAT PLC Control is started, you can add commands in the command line which will be asserted during execution of the program." Read the rest at the infosys' topic: [Command Line/Command File Commands](https://infosys.beckhoff.com/content/1033/tcplccontrol/html/tcplcctrl_addcommandline.htm)

## Reading List (eng, ru)

In a random reading order (on your wish)

* Understanding Git Series (eng)
  * [Data Model](https://hackernoon.com/https-medium-com-zspajich-understanding-git-data-model-95eb16cc99f5)
  * [Branching](https://hackernoon.com/understanding-git-branching-2662f5882f9)
  * [Index](https://hackernoon.com/understanding-git-index-4821a0765cf)
  * [Git Reset 101](https://hackernoon.com/reset-101-ba05d9e3f2c7)
* [Сходство и различие между Mercurial и Git](https://habr.com/ru/post/168675/). Почему именно Git?
* [Git: наглядная справка](https://marklodato.github.io/visual-git-guide/index-ru.html)
* [Про Git](https://git-scm.com/book/ru/v2). Книга и полное описание работы с Git.
* [Git How To](https://githowto.com/ru). Интерактивный тур.
* [Got TwinCAT](https://gotwincat.blogspot.com/2019/10/git-twincat2-codesys-project-macro-export-import.html). Пост в блоге.
