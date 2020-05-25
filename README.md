# GitCmdShorter（简称：JCS）工具介绍

## 工具出发点
   在开发中我们发现，虽然git十分丰富，但我们常用的git命令确是屈指可数，为了更方便的使用这些git命令，我们便将这些命令封装成了简单的脚本，达到提交时简化输入的目的。
   

## 工具介绍
   1.目前工具提供了常用命令的封装，同时我们提供了安装和卸载这些命令的脚本。
   
   2.工具安装：检出这些命令后，运行下install.sh命令即可将这些命令拷贝到当前用户的bin目录下（一般是环境变量的PATH第一个目录），后续即可直接使用这些命令。
   
   3.工具卸载：检出这些命令后，运行uninstall.sh命令即可将工具提供的脚本从当前用户的bin目录下清除已经安装的简化命令。
   
## 常用Git简写命令介绍 

### ga
    1.命令功能：封装了 [git add $*],用以增加修改的文件
    2.使用方式：在本地git仓库下输入[ga 文件路径1 文件路径2  ]
    3.使用示例：ga /sss/sss.java
### gau
    1.命令功能：封装了 [git add -u]命令，用以直接添加当前修改的文件
    2.使用方式：在本地git仓库下输入[gau]即可
    3.使用示例：gau
### gc
    1.命令功能：封装了 [git commit -m $1]命令，接收一个参数，实现代码本地commit提交
    2.使用方式：在本地git仓库下输入[gc "需要注明的提交注释"]
    3.使用示例：gc "修改GCS READ.md文件"	
### gca
    1.命令功能：封装了 [git commit --amend --no-edit]命令，用以追加当前修改到上次的commit上
    2.使用方式：在本地git仓库下输入[gca]
    3.使用示例：gca	
### gcp
    1.命令功能：封装了 [git cherry-pick $1]命令，用以从其他分支检出某个commit id到当前分支上，详细可查看git cherry-pick解释
    2.使用方式：在本地git仓库下输入[gcp commit-id]
    3.使用示例：gcp 766a10b1dee6632bca35a0ef1ca700aa08827e66	
### gd
    1.命令功能：封装了 [git diff &*]命令，显示文件的修改内容
    2.使用方式：在本地git仓库下输入[gd 文件]
    3.使用示例：gd ./xx/file.java	
### gp
    1.命令功能：封装了 [git pull --rebase]命令，用以从远端仓库拉去更新
    2.使用方式：在本地git仓库下输入[gp]
    3.使用示例：gp
### gr
    1.命令功能：封装了 [git review -R --reviewers xxxx@zte.com.cn yyy@zte.com.cn zzzz@zte.com.cn -v]命令，
	  用以向远端仓库发起review操作，并指定评审人员xxxx@zte.com.cn等
    2.使用方式：在本地git仓库下输入[gr]
    3.使用示例：gr		
	4.特别说明：检出本命令后，需要填写有效评审人员邮箱后才能正常使用
### gs
    1.命令功能：封装了 [git status]命令，用以查看本地仓库当前增删改的文件
    2.使用方式：在本地git仓库下输入[gs]
    3.使用示例：gs
### gbd
    1.命令功能：封装了 [git branch -D $*]命令，用以删除本地的某个分支
    2.使用方式：在本地git仓库下输入[gbd 分支名称]
    3.使用示例：gbd branchTEST
### gbr
    1.命令功能：封装了 [git branch -r]命令，用以删除本地的某个分支
    2.使用方式：在本地git仓库下输入[gbr]
    3.使用示例：gbr
### gck
    1.命令功能：封装了 [git checkout  "$*"]命令，用以还原某个修个文件
    2.使用方式：在本地git仓库下输入[gck 文件1 文件2]
    3.使用示例：gck ./xx/file1.java ./xxx/file2.java	
### gl
    1.命令功能：封装了 [git log]命令，用以还原某个修个文件
    2.使用方式：在本地git仓库下输入[gl]
    3.使用示例：gl
