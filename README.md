# 创建service 和 ingress

```bash
./create.sh pod-name host-name
```
这里我们创建
```
./create.sh distribute-liusc-master master
```
# 安装jupyter book

```bash
./env.sh
```

# 使用jupyter

`nohup jupyter-notebook --ip=172.20.49.56 --allow-root &`

注意讲`172.20.49.56`替换为你自己的ip.

![](/assets/ip.png)

![](/assets/import2.png)将token部分复制到剪切板。

打开浏览器,输入http://master.ava.ke-xs.cloudappl.com/

![](/assets/hello.png)

将token \`6d88dd50864b80fcf********************\`输入当中。*号是为了安全

创建ipython![](/assets/ipy.png)

## 输入代码,run
可以直接运行，输出图片，方便调试和观察，同时也可以直接打开图片和文件。

![](/assets/re.png)

## 新建终端

![](/assets/terminal.png)
## 终端和shell类似

![](/assets/terms.png)

