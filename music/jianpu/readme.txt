尽管GNU/Linux并非无所不能，但确实能在很多时候提供免费、开放的解决方案。这两天我想做一个简谱，在网上搜索乐谱排版软件，发现了基于GPL协议的Lilypond软件。只不过Lilypond是用来做五线谱的。幸好，又找到剑桥大学 Silas S. Brown 编写的一个 jianpu-ly.py 脚本，通过调用Lilypond能够最终生成简谱。关于它的详细介绍请看这里。

该脚本支持的简谱语法规则如下：

音阶：1 2 3 4 5 6 7 1'
空拍：0
升、降音：#1 b2
低两个八度、低八度、中音、高八度、高两个八度：1,, 1, 1 1' 1''
六十四分、三十二分、十六分、八分、四分音符（一拍）：h1 d1 s1 q1 1
符点音符：s1. q1. 1.
半音符（两拍）：1 -
符点半音符（三拍）：1 - -
全音符（四拍）：1 - - -
拍子：4/4
大调：1=Bb
小调：6=F#
标题：title=采茶舞曲
三联音：3[ q1 q1 q1 ]
重复：R{ 1 1 1 } A{ 2 | 3 }

此外，我在使用的过程中发现，若使用默认的Lilypond设置，虽然能够生成正确的midi文件，但却无法排版出升、降与还原号（accidentals）。经过一番试探，发现只要在/usr/share/lilypond/2.14.2/ly/engraver-init.ly文件中第168行添加：

\consists "Accidental_engraver"
便可以解决该问题。这是因为，经jianpu-ly.py脚本转换生成的Lilypond文件基于的是RhythmicStaff context。而engraver-init.ly中的默认配置并未包括对accidentals的“雕刻”（engrave）。所以，需要手动加上。

至此，用于简谱排版的工具已经俱备。我试着编排了《博基上校进行曲》片段如下。大家可以体验一下Lilypond的效果。
