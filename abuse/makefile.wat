all : opt

debug : game.exe
	echo Made debug

opt : gameo.exe
	echo Made opt

WATCOM_game_debug_o_files = &
	src\net\dos4gw\wat\debug\ipx.obj &
	src\wat\debug\specache.obj &
	..\imlib\wat\debug\sprite.obj &
	src\wat\debug\netcfg.obj &
	src\wat\debug\text_gui.obj &
	src\wat\debug\innet.obj &
	src\net\unix\wat\debug\gserver.obj &
	src\net\unix\wat\debug\gclient.obj &
	src\net\unix\wat\debug\fileman.obj &
	src\net\wat\debug\sock.obj &
	src\wat\debug\chat.obj &
	src\wat\debug\endgame.obj &
	src\wat\debug\setup.obj &
	src\wat\debug\version.obj &
	src\wat\debug\loadgame.obj &
	src\wat\debug\profile.obj &
	src\wat\debug\cop.obj &
	src\wat\debug\statbar.obj &
	src\wat\debug\compiled.obj &
	src\wat\debug\ant.obj &
	src\wat\debug\sensor.obj &
	src\wat\debug\lisp_opt.obj &
	src\wat\debug\demo.obj &
	src\wat\debug\lcache.obj &
	src\wat\debug\lisp_gc.obj &
	src\wat\debug\nfclient.obj &
	src\wat\debug\username.obj &
	src\wat\debug\clisp.obj &
	src\wat\debug\gui.obj &
	src\wat\debug\transp.obj &
	src\wat\debug\collide.obj &
	src\wat\debug\trig.obj &
	src\wat\debug\property.obj &
	src\wat\debug\lisp.obj &
	src\wat\debug\cache.obj &
	src\wat\debug\particle.obj &
	src\wat\debug\objects.obj &
	src\wat\debug\extend.obj &
	src\wat\debug\console.obj &
	src\wat\debug\ability.obj &
	src\wat\debug\items.obj &
	src\wat\debug\dev.obj &
	src\wat\debug\chars.obj &
	src\wat\debug\level.obj &
	src\wat\debug\smallfnt.obj &
	src\wat\debug\automap.obj &
	src\wat\debug\help.obj &
	src\wat\debug\intsect.obj &
	src\wat\debug\loader2.obj &
	src\wat\debug\seq.obj &
	src\wat\debug\points.obj &
	src\wat\debug\fnt6x13.obj &
	src\wat\debug\morpher.obj &
	src\wat\debug\menu.obj &
	src\wat\debug\director.obj &
	src\wat\debug\view.obj &
	src\wat\debug\config.obj &
	src\wat\debug\game.obj &
	src\wat\debug\light.obj &
	src\wat\debug\devsel.obj &
	src\wat\debug\crc.obj &
	src\wat\debug\gamma.obj &
	src\wat\debug\language.obj

game.exe : $(WATCOM_game_debug_o_files)
	wlink @game.lnk

src\net\dos4gw\wat\debug\ipx.obj : src\net\dos4gw\ipx.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\dos4gw\ipx.c -fo=src\net\dos4gw\wat\debug\ipx.obj /zq /d2 -DMANAGE_MEM 

src\net\dos4gw\wat\debug\ipx.obj : src\net\dos4gw\ipx.c
src\wat\debug\specache.obj : src\specache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\specache.c -fo=src\wat\debug\specache.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\specache.obj : ../imlib/include\system.h
src\wat\debug\specache.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\specache.obj : ../imlib/include\linked.hpp
src\wat\debug\specache.obj : ../imlib/include\specs.hpp
src\wat\debug\specache.obj : inc\specache.hpp
..\imlib\wat\debug\sprite.obj : ..\imlib\sprite.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 ..\imlib\sprite.c -fo=..\imlib\wat\debug\sprite.obj /zq /d2 -DMANAGE_MEM 

..\imlib\wat\debug\sprite.obj : ../imlib/include\sprite.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\emm.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\ppmread.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\gifread.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\glread.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\video.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\image.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\jmalloc.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\specs.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\linked.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\palette.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\mdlread.hpp
..\imlib\wat\debug\sprite.obj : ../imlib/include\system.h
..\imlib\wat\debug\sprite.obj : ../imlib/include\macs.hpp
src\wat\debug\netcfg.obj : src\netcfg.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\netcfg.c -fo=src\wat\debug\netcfg.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\netcfg.obj : inc\crc.hpp
src\wat\debug\netcfg.obj : inc\config.hpp
src\wat\debug\netcfg.obj : inc\light.hpp
src\wat\debug\netcfg.obj : src/net/inc\sock.hpp
src\wat\debug\netcfg.obj : ../imlib/include\timing.hpp
src\wat\debug\netcfg.obj : inc\lisp_opt.hpp
src\wat\debug\netcfg.obj : inc\lisp.hpp
src\wat\debug\netcfg.obj : inc\particle.hpp
src\wat\debug\netcfg.obj : ../imlib/include\sound.hpp
src\wat\debug\netcfg.obj : inc\points.hpp
src\wat\debug\netcfg.obj : inc\items.hpp
src\wat\debug\netcfg.obj : inc\cache.hpp
src\wat\debug\netcfg.obj : ../imlib/include\input.hpp
src\wat\debug\netcfg.obj : ../imlib/include\timage.hpp
src\wat\debug\netcfg.obj : ../imlib/include\fonts.hpp
src\wat\debug\netcfg.obj : ../imlib/include\filter.hpp
src\wat\debug\netcfg.obj : ../imlib/include\mouse.hpp
src\wat\debug\netcfg.obj : ../imlib/include\macs.hpp
src\wat\debug\netcfg.obj : ../imlib/include\sprite.hpp
src\wat\debug\netcfg.obj : ../imlib/include\keys.hpp
src\wat\debug\netcfg.obj : ../imlib/include\event.hpp
src\wat\debug\netcfg.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\netcfg.obj : ../imlib/include\specs.hpp
src\wat\debug\netcfg.obj : ../imlib/include\palette.hpp
src\wat\debug\netcfg.obj : ../imlib/include\linked.hpp
src\wat\debug\netcfg.obj : ../imlib/include\image.hpp
src\wat\debug\netcfg.obj : ../imlib/include\system.h
src\wat\debug\netcfg.obj : ../imlib/include\video.hpp
src\wat\debug\netcfg.obj : ../imlib/include\jwindow.hpp
src\wat\debug\netcfg.obj : inc\netcfg.hpp
src\wat\debug\text_gui.obj : src\text_gui.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\text_gui.c -fo=src\wat\debug\text_gui.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\text_gui.obj : inc\fakelib.hpp
src\wat\debug\text_gui.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\text_gui.obj : inc\stack.hpp
src\wat\debug\text_gui.obj : inc\lisp_gc.hpp
src\wat\debug\text_gui.obj : ../imlib/include\timing.hpp
src\wat\debug\text_gui.obj : inc\lisp_opt.hpp
src\wat\debug\text_gui.obj : inc\lisp.hpp
src\wat\debug\innet.obj : src\innet.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\innet.c -fo=src\wat\debug\innet.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\innet.obj : inc\netcfg.hpp
src\wat\debug\innet.obj : ../imlib/include\dprint.hpp
src\wat\debug\innet.obj : src/net/unix\gclient.hpp
src\wat\debug\innet.obj : src/net/unix\ghandler.hpp
src\wat\debug\innet.obj : src/net/unix\gserver.hpp
src\wat\debug\innet.obj : src/net/inc\indian.hpp
src\wat\debug\innet.obj : inc\netface.hpp
src\wat\debug\innet.obj : src/net/inc\sock.hpp
src\wat\debug\innet.obj : src/net/unix\fileman.hpp
src\wat\debug\innet.obj : inc\director.hpp
src\wat\debug\innet.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\innet.obj : ../imlib/include\image24.hpp
src\wat\debug\innet.obj : ../imlib/include\loader.hpp
src\wat\debug\innet.obj : ../imlib/include\mdlread.hpp
src\wat\debug\innet.obj : inc\game.hpp
src\wat\debug\innet.obj : inc\id.hpp
src\wat\debug\innet.obj : inc\extend.hpp
src\wat\debug\innet.obj : inc\crc.hpp
src\wat\debug\innet.obj : inc\light.hpp
src\wat\debug\innet.obj : inc\view.hpp
src\wat\debug\innet.obj : inc\loader2.hpp
src\wat\debug\innet.obj : inc\config.hpp
src\wat\debug\innet.obj : ../imlib/include\supmorph.hpp
src\wat\debug\innet.obj : inc\morpher.hpp
src\wat\debug\innet.obj : inc\ability.hpp
src\wat\debug\innet.obj : ../imlib/include\timing.hpp
src\wat\debug\innet.obj : inc\lisp_opt.hpp
src\wat\debug\innet.obj : inc\lisp.hpp
src\wat\debug\innet.obj : inc\particle.hpp
src\wat\debug\innet.obj : ../imlib/include\sound.hpp
src\wat\debug\innet.obj : inc\cache.hpp
src\wat\debug\innet.obj : inc\points.hpp
src\wat\debug\innet.obj : inc\items.hpp
src\wat\debug\innet.obj : inc\seq.hpp
src\wat\debug\innet.obj : inc\chars.hpp
src\wat\debug\innet.obj : ../imlib/include\input.hpp
src\wat\debug\innet.obj : inc\objects.hpp
src\wat\debug\innet.obj : inc\level.hpp
src\wat\debug\innet.obj : ../imlib/include\timage.hpp
src\wat\debug\innet.obj : ../imlib/include\fonts.hpp
src\wat\debug\innet.obj : ../imlib/include\filter.hpp
src\wat\debug\innet.obj : ../imlib/include\mouse.hpp
src\wat\debug\innet.obj : ../imlib/include\macs.hpp
src\wat\debug\innet.obj : ../imlib/include\sprite.hpp
src\wat\debug\innet.obj : ../imlib/include\keys.hpp
src\wat\debug\innet.obj : ../imlib/include\event.hpp
src\wat\debug\innet.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\innet.obj : ../imlib/include\specs.hpp
src\wat\debug\innet.obj : ../imlib/include\palette.hpp
src\wat\debug\innet.obj : ../imlib/include\linked.hpp
src\wat\debug\innet.obj : ../imlib/include\image.hpp
src\wat\debug\innet.obj : ../imlib/include\system.h
src\wat\debug\innet.obj : ../imlib/include\video.hpp
src\wat\debug\innet.obj : ../imlib/include\jwindow.hpp
src\wat\debug\innet.obj : inc\demo.hpp
src\net\unix\wat\debug\gserver.obj : src\net\unix\gserver.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\gserver.c -fo=src\net\unix\wat\debug\gserver.obj /zq /d2 -DMANAGE_MEM 

src\net\unix\wat\debug\gserver.obj : ../imlib/include\input.hpp
src\net\unix\wat\debug\gserver.obj : inc\id.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\timage.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\fonts.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\filter.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\mouse.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\sprite.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\keys.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\event.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\jmalloc.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\specs.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\palette.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\linked.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\image.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\video.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\jwindow.hpp
src\net\unix\wat\debug\gserver.obj : inc\netcfg.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\timing.hpp
src\net\unix\wat\debug\gserver.obj : src/net/inc\indian.hpp
src\net\unix\wat\debug\gserver.obj : inc\netface.hpp
src\net\unix\wat\debug\gserver.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\debug\gserver.obj : src/net/inc\sock.hpp
src\net\unix\wat\debug\gserver.obj : src/net/unix\gserver.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\macs.hpp
src\net\unix\wat\debug\gserver.obj : ../imlib/include\system.h
src\net\unix\wat\debug\gclient.obj : src\net\unix\gclient.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\gclient.c -fo=src\net\unix\wat\debug\gclient.obj /zq /d2 -DMANAGE_MEM 

src\net\unix\wat\debug\gclient.obj : ../imlib/include\timing.hpp
src\net\unix\wat\debug\gclient.obj : src/net/unix\undrv.hpp
src\net\unix\wat\debug\gclient.obj : src/net/inc\indian.hpp
src\net\unix\wat\debug\gclient.obj : inc\netface.hpp
src\net\unix\wat\debug\gclient.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\debug\gclient.obj : src/net/inc\sock.hpp
src\net\unix\wat\debug\gclient.obj : src/net/unix\gclient.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\timage.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\fonts.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\filter.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\mouse.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\macs.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\sprite.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\keys.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\event.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\jmalloc.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\specs.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\palette.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\linked.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\image.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\system.h
src\net\unix\wat\debug\gclient.obj : ../imlib/include\video.hpp
src\net\unix\wat\debug\gclient.obj : ../imlib/include\jwindow.hpp
src\net\unix\wat\debug\gclient.obj : inc\netcfg.hpp
src\net\unix\wat\debug\fileman.obj : src\net\unix\fileman.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\fileman.c -fo=src\net\unix\wat\debug\fileman.obj /zq /d2 -DMANAGE_MEM 

src\net\unix\wat\debug\fileman.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\debug\fileman.obj : src/net/inc\indian.hpp
src\net\unix\wat\debug\fileman.obj : inc\netface.hpp
src\net\unix\wat\debug\fileman.obj : src/net/inc\sock.hpp
src\net\unix\wat\debug\fileman.obj : src/net/unix\fileman.hpp
src\net\unix\wat\debug\fileman.obj : ../imlib/include\system.h
src\net\unix\wat\debug\fileman.obj : ../imlib/include\macs.hpp
src\net\wat\debug\sock.obj : src\net\sock.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\sock.c -fo=src\net\wat\debug\sock.obj /zq /d2 -DMANAGE_MEM 

src\net\wat\debug\sock.obj : src/net/inc\sock.hpp
src\wat\debug\chat.obj : src\chat.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\chat.c -fo=src\wat\debug\chat.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\chat.obj : ../imlib/include\timage.hpp
src\wat\debug\chat.obj : ../imlib/include\fonts.hpp
src\wat\debug\chat.obj : ../imlib/include\filter.hpp
src\wat\debug\chat.obj : ../imlib/include\mouse.hpp
src\wat\debug\chat.obj : ../imlib/include\macs.hpp
src\wat\debug\chat.obj : ../imlib/include\sprite.hpp
src\wat\debug\chat.obj : ../imlib/include\keys.hpp
src\wat\debug\chat.obj : ../imlib/include\event.hpp
src\wat\debug\chat.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\chat.obj : ../imlib/include\specs.hpp
src\wat\debug\chat.obj : ../imlib/include\palette.hpp
src\wat\debug\chat.obj : ../imlib/include\linked.hpp
src\wat\debug\chat.obj : ../imlib/include\image.hpp
src\wat\debug\chat.obj : ../imlib/include\system.h
src\wat\debug\chat.obj : ../imlib/include\video.hpp
src\wat\debug\chat.obj : ../imlib/include\jwindow.hpp
src\wat\debug\chat.obj : inc\console.hpp
src\wat\debug\chat.obj : inc\chat.hpp
src\wat\debug\endgame.obj : src\endgame.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\endgame.c -fo=src\wat\debug\endgame.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\endgame.obj : inc\fakelib.hpp
src\wat\debug\endgame.obj : inc\stack.hpp
src\wat\debug\endgame.obj : inc\lisp_gc.hpp
src\wat\debug\endgame.obj : ../imlib/include\jrand.hpp
src\wat\debug\endgame.obj : ../imlib/include\dprint.hpp
src\wat\debug\endgame.obj : inc\clisp.hpp
src\wat\debug\endgame.obj : inc\console.hpp
src\wat\debug\endgame.obj : inc\dev.hpp
src\wat\debug\endgame.obj : inc\property.hpp
src\wat\debug\endgame.obj : inc\gui.hpp
src\wat\debug\endgame.obj : ../imlib/include\pmenu.hpp
src\wat\debug\endgame.obj : inc\director.hpp
src\wat\debug\endgame.obj : inc\id.hpp
src\wat\debug\endgame.obj : inc\extend.hpp
src\wat\debug\endgame.obj : inc\crc.hpp
src\wat\debug\endgame.obj : inc\light.hpp
src\wat\debug\endgame.obj : inc\view.hpp
src\wat\debug\endgame.obj : inc\config.hpp
src\wat\debug\endgame.obj : ../imlib/include\supmorph.hpp
src\wat\debug\endgame.obj : inc\morpher.hpp
src\wat\debug\endgame.obj : inc\ability.hpp
src\wat\debug\endgame.obj : inc\particle.hpp
src\wat\debug\endgame.obj : inc\cache.hpp
src\wat\debug\endgame.obj : inc\seq.hpp
src\wat\debug\endgame.obj : inc\chars.hpp
src\wat\debug\endgame.obj : ../imlib/include\input.hpp
src\wat\debug\endgame.obj : inc\objects.hpp
src\wat\debug\endgame.obj : inc\level.hpp
src\wat\debug\endgame.obj : inc\points.hpp
src\wat\debug\endgame.obj : inc\items.hpp
src\wat\debug\endgame.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\endgame.obj : ../imlib/include\image24.hpp
src\wat\debug\endgame.obj : ../imlib/include\loader.hpp
src\wat\debug\endgame.obj : ../imlib/include\mdlread.hpp
src\wat\debug\endgame.obj : ../imlib/include\sound.hpp
src\wat\debug\endgame.obj : ../imlib/include\mouse.hpp
src\wat\debug\endgame.obj : ../imlib/include\sprite.hpp
src\wat\debug\endgame.obj : ../imlib/include\keys.hpp
src\wat\debug\endgame.obj : ../imlib/include\event.hpp
src\wat\debug\endgame.obj : ../imlib/include\video.hpp
src\wat\debug\endgame.obj : ../imlib/include\jwindow.hpp
src\wat\debug\endgame.obj : inc\loader2.hpp
src\wat\debug\endgame.obj : inc\game.hpp
src\wat\debug\endgame.obj : ../imlib/include\timing.hpp
src\wat\debug\endgame.obj : inc\lisp_opt.hpp
src\wat\debug\endgame.obj : inc\lisp.hpp
src\wat\debug\endgame.obj : ../imlib/include\filter.hpp
src\wat\debug\endgame.obj : ../imlib/include\macs.hpp
src\wat\debug\endgame.obj : ../imlib/include\timage.hpp
src\wat\debug\endgame.obj : ../imlib/include\system.h
src\wat\debug\endgame.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\endgame.obj : ../imlib/include\specs.hpp
src\wat\debug\endgame.obj : ../imlib/include\palette.hpp
src\wat\debug\endgame.obj : ../imlib/include\linked.hpp
src\wat\debug\endgame.obj : ../imlib/include\image.hpp
src\wat\debug\endgame.obj : ../imlib/include\fonts.hpp
src\wat\debug\endgame.obj : inc\menu.hpp
src\wat\debug\setup.obj : src\setup.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\setup.c -fo=src\wat\debug\setup.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\setup.obj : inc\particle.hpp
src\wat\debug\setup.obj : inc\points.hpp
src\wat\debug\setup.obj : inc\items.hpp
src\wat\debug\setup.obj : inc\cache.hpp
src\wat\debug\setup.obj : ../imlib/include\dprint.hpp
src\wat\debug\setup.obj : inc\fakelib.hpp
src\wat\debug\setup.obj : inc\stack.hpp
src\wat\debug\setup.obj : inc\lisp_gc.hpp
src\wat\debug\setup.obj : inc\lisp_opt.hpp
src\wat\debug\setup.obj : inc\lisp.hpp
src\wat\debug\setup.obj : ../imlib/include\scroller.hpp
src\wat\debug\setup.obj : ../imlib/include\input.hpp
src\wat\debug\setup.obj : ../imlib/include\timing.hpp
src\wat\debug\setup.obj : ../imlib/include\visobj.hpp
src\wat\debug\setup.obj : ../imlib/include\status.hpp
src\wat\debug\setup.obj : ../imlib/include\guistat.hpp
src\wat\debug\setup.obj : ../imlib/include\sound.hpp
src\wat\debug\setup.obj : ../imlib/include\timage.hpp
src\wat\debug\setup.obj : ../imlib/include\fonts.hpp
src\wat\debug\setup.obj : ../imlib/include\filter.hpp
src\wat\debug\setup.obj : ../imlib/include\mouse.hpp
src\wat\debug\setup.obj : ../imlib/include\macs.hpp
src\wat\debug\setup.obj : ../imlib/include\sprite.hpp
src\wat\debug\setup.obj : ../imlib/include\keys.hpp
src\wat\debug\setup.obj : ../imlib/include\event.hpp
src\wat\debug\setup.obj : ../imlib/include\palette.hpp
src\wat\debug\setup.obj : ../imlib/include\image.hpp
src\wat\debug\setup.obj : ../imlib/include\video.hpp
src\wat\debug\setup.obj : ../imlib/include\jwindow.hpp
src\wat\debug\setup.obj : inc\id.hpp
src\wat\debug\setup.obj : ../imlib/include\system.h
src\wat\debug\setup.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\setup.obj : ../imlib/include\linked.hpp
src\wat\debug\setup.obj : ../imlib/include\specs.hpp
src\wat\debug\version.obj : src\version.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\version.c -fo=src\wat\debug\version.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\version.obj : ../imlib/include\system.h
src\wat\debug\version.obj : ../imlib/include\macs.hpp
src\wat\debug\version.obj : ../imlib/include\dprint.hpp
src\wat\debug\loadgame.obj : src\loadgame.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\loadgame.c -fo=src\wat\debug\loadgame.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\loadgame.obj : inc\director.hpp
src\wat\debug\loadgame.obj : inc\extend.hpp
src\wat\debug\loadgame.obj : inc\crc.hpp
src\wat\debug\loadgame.obj : inc\light.hpp
src\wat\debug\loadgame.obj : inc\view.hpp
src\wat\debug\loadgame.obj : inc\config.hpp
src\wat\debug\loadgame.obj : ../imlib/include\supmorph.hpp
src\wat\debug\loadgame.obj : inc\morpher.hpp
src\wat\debug\loadgame.obj : inc\ability.hpp
src\wat\debug\loadgame.obj : inc\seq.hpp
src\wat\debug\loadgame.obj : inc\chars.hpp
src\wat\debug\loadgame.obj : inc\objects.hpp
src\wat\debug\loadgame.obj : inc\level.hpp
src\wat\debug\loadgame.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\loadgame.obj : ../imlib/include\image24.hpp
src\wat\debug\loadgame.obj : ../imlib/include\loader.hpp
src\wat\debug\loadgame.obj : ../imlib/include\mdlread.hpp
src\wat\debug\loadgame.obj : inc\loader2.hpp
src\wat\debug\loadgame.obj : inc\game.hpp
src\wat\debug\loadgame.obj : inc\demo.hpp
src\wat\debug\loadgame.obj : inc\gui.hpp
src\wat\debug\loadgame.obj : inc\particle.hpp
src\wat\debug\loadgame.obj : ../imlib/include\sound.hpp
src\wat\debug\loadgame.obj : inc\points.hpp
src\wat\debug\loadgame.obj : inc\items.hpp
src\wat\debug\loadgame.obj : inc\cache.hpp
src\wat\debug\loadgame.obj : ../imlib/include\dprint.hpp
src\wat\debug\loadgame.obj : ../imlib/include\timing.hpp
src\wat\debug\loadgame.obj : inc\lisp_opt.hpp
src\wat\debug\loadgame.obj : inc\lisp.hpp
src\wat\debug\loadgame.obj : ../imlib/include\input.hpp
src\wat\debug\loadgame.obj : inc\id.hpp
src\wat\debug\loadgame.obj : ../imlib/include\timage.hpp
src\wat\debug\loadgame.obj : ../imlib/include\fonts.hpp
src\wat\debug\loadgame.obj : ../imlib/include\filter.hpp
src\wat\debug\loadgame.obj : ../imlib/include\mouse.hpp
src\wat\debug\loadgame.obj : ../imlib/include\macs.hpp
src\wat\debug\loadgame.obj : ../imlib/include\sprite.hpp
src\wat\debug\loadgame.obj : ../imlib/include\keys.hpp
src\wat\debug\loadgame.obj : ../imlib/include\event.hpp
src\wat\debug\loadgame.obj : ../imlib/include\palette.hpp
src\wat\debug\loadgame.obj : ../imlib/include\image.hpp
src\wat\debug\loadgame.obj : ../imlib/include\video.hpp
src\wat\debug\loadgame.obj : ../imlib/include\jwindow.hpp
src\wat\debug\loadgame.obj : ../imlib/include\system.h
src\wat\debug\loadgame.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\loadgame.obj : ../imlib/include\linked.hpp
src\wat\debug\loadgame.obj : ../imlib/include\specs.hpp
src\wat\debug\profile.obj : src\profile.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\profile.c -fo=src\wat\debug\profile.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\profile.obj : inc\extend.hpp
src\wat\debug\profile.obj : inc\crc.hpp
src\wat\debug\profile.obj : inc\light.hpp
src\wat\debug\profile.obj : inc\view.hpp
src\wat\debug\profile.obj : inc\loader2.hpp
src\wat\debug\profile.obj : inc\config.hpp
src\wat\debug\profile.obj : ../imlib/include\supmorph.hpp
src\wat\debug\profile.obj : inc\morpher.hpp
src\wat\debug\profile.obj : inc\ability.hpp
src\wat\debug\profile.obj : ../imlib/include\timing.hpp
src\wat\debug\profile.obj : inc\lisp_opt.hpp
src\wat\debug\profile.obj : inc\lisp.hpp
src\wat\debug\profile.obj : inc\particle.hpp
src\wat\debug\profile.obj : ../imlib/include\sound.hpp
src\wat\debug\profile.obj : inc\cache.hpp
src\wat\debug\profile.obj : inc\points.hpp
src\wat\debug\profile.obj : inc\items.hpp
src\wat\debug\profile.obj : inc\seq.hpp
src\wat\debug\profile.obj : inc\chars.hpp
src\wat\debug\profile.obj : ../imlib/include\input.hpp
src\wat\debug\profile.obj : inc\objects.hpp
src\wat\debug\profile.obj : inc\property.hpp
src\wat\debug\profile.obj : ../imlib/include\timage.hpp
src\wat\debug\profile.obj : ../imlib/include\fonts.hpp
src\wat\debug\profile.obj : ../imlib/include\filter.hpp
src\wat\debug\profile.obj : ../imlib/include\video.hpp
src\wat\debug\profile.obj : ../imlib/include\jwindow.hpp
src\wat\debug\profile.obj : ../imlib/include\mouse.hpp
src\wat\debug\profile.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\profile.obj : ../imlib/include\specs.hpp
src\wat\debug\profile.obj : ../imlib/include\palette.hpp
src\wat\debug\profile.obj : ../imlib/include\linked.hpp
src\wat\debug\profile.obj : ../imlib/include\image.hpp
src\wat\debug\profile.obj : ../imlib/include\system.h
src\wat\debug\profile.obj : ../imlib/include\macs.hpp
src\wat\debug\profile.obj : ../imlib/include\sprite.hpp
src\wat\debug\profile.obj : ../imlib/include\keys.hpp
src\wat\debug\profile.obj : ../imlib/include\event.hpp
src\wat\debug\profile.obj : inc\profile.hpp
src\wat\debug\cop.obj : src\cop.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\cop.c -fo=src\wat\debug\cop.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\cop.obj : inc\ant.hpp
src\wat\debug\cop.obj : inc\clisp.hpp
src\wat\debug\cop.obj : ../imlib/include\jrand.hpp
src\wat\debug\cop.obj : inc\director.hpp
src\wat\debug\cop.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\cop.obj : ../imlib/include\image24.hpp
src\wat\debug\cop.obj : ../imlib/include\loader.hpp
src\wat\debug\cop.obj : ../imlib/include\mdlread.hpp
src\wat\debug\cop.obj : inc\game.hpp
src\wat\debug\cop.obj : inc\id.hpp
src\wat\debug\cop.obj : inc\level.hpp
src\wat\debug\cop.obj : inc\extend.hpp
src\wat\debug\cop.obj : inc\crc.hpp
src\wat\debug\cop.obj : inc\light.hpp
src\wat\debug\cop.obj : inc\view.hpp
src\wat\debug\cop.obj : inc\loader2.hpp
src\wat\debug\cop.obj : inc\config.hpp
src\wat\debug\cop.obj : ../imlib/include\supmorph.hpp
src\wat\debug\cop.obj : inc\morpher.hpp
src\wat\debug\cop.obj : inc\ability.hpp
src\wat\debug\cop.obj : inc\particle.hpp
src\wat\debug\cop.obj : ../imlib/include\sound.hpp
src\wat\debug\cop.obj : inc\cache.hpp
src\wat\debug\cop.obj : inc\points.hpp
src\wat\debug\cop.obj : inc\items.hpp
src\wat\debug\cop.obj : inc\seq.hpp
src\wat\debug\cop.obj : inc\chars.hpp
src\wat\debug\cop.obj : ../imlib/include\timage.hpp
src\wat\debug\cop.obj : ../imlib/include\fonts.hpp
src\wat\debug\cop.obj : ../imlib/include\filter.hpp
src\wat\debug\cop.obj : ../imlib/include\mouse.hpp
src\wat\debug\cop.obj : ../imlib/include\sprite.hpp
src\wat\debug\cop.obj : ../imlib/include\keys.hpp
src\wat\debug\cop.obj : ../imlib/include\event.hpp
src\wat\debug\cop.obj : ../imlib/include\specs.hpp
src\wat\debug\cop.obj : ../imlib/include\palette.hpp
src\wat\debug\cop.obj : ../imlib/include\linked.hpp
src\wat\debug\cop.obj : ../imlib/include\image.hpp
src\wat\debug\cop.obj : ../imlib/include\video.hpp
src\wat\debug\cop.obj : ../imlib/include\jwindow.hpp
src\wat\debug\cop.obj : ../imlib/include\input.hpp
src\wat\debug\cop.obj : inc\objects.hpp
src\wat\debug\cop.obj : ../imlib/include\system.h
src\wat\debug\cop.obj : ../imlib/include\macs.hpp
src\wat\debug\cop.obj : inc\compiled.hpp
src\wat\debug\cop.obj : inc\fakelib.hpp
src\wat\debug\cop.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\cop.obj : inc\stack.hpp
src\wat\debug\cop.obj : inc\lisp_gc.hpp
src\wat\debug\cop.obj : ../imlib/include\timing.hpp
src\wat\debug\cop.obj : inc\lisp_opt.hpp
src\wat\debug\cop.obj : inc\lisp.hpp
src\wat\debug\statbar.obj : src\statbar.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\statbar.c -fo=src\wat\debug\statbar.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\statbar.obj : inc\clisp.hpp
src\wat\debug\statbar.obj : inc\director.hpp
src\wat\debug\statbar.obj : inc\id.hpp
src\wat\debug\statbar.obj : inc\level.hpp
src\wat\debug\statbar.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\statbar.obj : ../imlib/include\image24.hpp
src\wat\debug\statbar.obj : ../imlib/include\loader.hpp
src\wat\debug\statbar.obj : ../imlib/include\mdlread.hpp
src\wat\debug\statbar.obj : inc\game.hpp
src\wat\debug\statbar.obj : inc\extend.hpp
src\wat\debug\statbar.obj : inc\loader2.hpp
src\wat\debug\statbar.obj : ../imlib/include\supmorph.hpp
src\wat\debug\statbar.obj : inc\morpher.hpp
src\wat\debug\statbar.obj : ../imlib/include\input.hpp
src\wat\debug\statbar.obj : inc\objects.hpp
src\wat\debug\statbar.obj : inc\ability.hpp
src\wat\debug\statbar.obj : inc\seq.hpp
src\wat\debug\statbar.obj : inc\chars.hpp
src\wat\debug\statbar.obj : inc\demo.hpp
src\wat\debug\statbar.obj : inc\particle.hpp
src\wat\debug\statbar.obj : ../imlib/include\sound.hpp
src\wat\debug\statbar.obj : inc\points.hpp
src\wat\debug\statbar.obj : inc\items.hpp
src\wat\debug\statbar.obj : inc\cache.hpp
src\wat\debug\statbar.obj : ../imlib/include\timing.hpp
src\wat\debug\statbar.obj : inc\lisp_opt.hpp
src\wat\debug\statbar.obj : inc\lisp.hpp
src\wat\debug\statbar.obj : ../imlib/include\timage.hpp
src\wat\debug\statbar.obj : ../imlib/include\fonts.hpp
src\wat\debug\statbar.obj : ../imlib/include\filter.hpp
src\wat\debug\statbar.obj : ../imlib/include\mouse.hpp
src\wat\debug\statbar.obj : ../imlib/include\sprite.hpp
src\wat\debug\statbar.obj : ../imlib/include\keys.hpp
src\wat\debug\statbar.obj : ../imlib/include\event.hpp
src\wat\debug\statbar.obj : ../imlib/include\video.hpp
src\wat\debug\statbar.obj : ../imlib/include\jwindow.hpp
src\wat\debug\statbar.obj : ../imlib/include\macs.hpp
src\wat\debug\statbar.obj : inc\crc.hpp
src\wat\debug\statbar.obj : inc\config.hpp
src\wat\debug\statbar.obj : inc\light.hpp
src\wat\debug\statbar.obj : inc\view.hpp
src\wat\debug\statbar.obj : ../imlib/include\system.h
src\wat\debug\statbar.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\statbar.obj : ../imlib/include\specs.hpp
src\wat\debug\statbar.obj : ../imlib/include\palette.hpp
src\wat\debug\statbar.obj : ../imlib/include\linked.hpp
src\wat\debug\statbar.obj : ../imlib/include\image.hpp
src\wat\debug\statbar.obj : inc\sbar.hpp
src\wat\debug\compiled.obj : src\compiled.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\compiled.c -fo=src\wat\debug\compiled.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\compiled.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\compiled.obj : ../imlib/include\system.h
src\wat\debug\compiled.obj : ../imlib/include\macs.hpp
src\wat\debug\compiled.obj : ../imlib/include\timing.hpp
src\wat\debug\compiled.obj : inc\lisp_opt.hpp
src\wat\debug\compiled.obj : inc\lisp.hpp
src\wat\debug\ant.obj : src\ant.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\ant.c -fo=src\wat\debug\ant.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\ant.obj : inc\console.hpp
src\wat\debug\ant.obj : inc\dev.hpp
src\wat\debug\ant.obj : inc\clisp.hpp
src\wat\debug\ant.obj : ../imlib/include\jrand.hpp
src\wat\debug\ant.obj : inc\director.hpp
src\wat\debug\ant.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\ant.obj : ../imlib/include\image24.hpp
src\wat\debug\ant.obj : ../imlib/include\loader.hpp
src\wat\debug\ant.obj : ../imlib/include\mdlread.hpp
src\wat\debug\ant.obj : inc\game.hpp
src\wat\debug\ant.obj : inc\id.hpp
src\wat\debug\ant.obj : inc\level.hpp
src\wat\debug\ant.obj : inc\extend.hpp
src\wat\debug\ant.obj : inc\crc.hpp
src\wat\debug\ant.obj : inc\light.hpp
src\wat\debug\ant.obj : inc\view.hpp
src\wat\debug\ant.obj : inc\loader2.hpp
src\wat\debug\ant.obj : inc\config.hpp
src\wat\debug\ant.obj : ../imlib/include\supmorph.hpp
src\wat\debug\ant.obj : inc\morpher.hpp
src\wat\debug\ant.obj : inc\ability.hpp
src\wat\debug\ant.obj : inc\particle.hpp
src\wat\debug\ant.obj : ../imlib/include\sound.hpp
src\wat\debug\ant.obj : inc\cache.hpp
src\wat\debug\ant.obj : inc\points.hpp
src\wat\debug\ant.obj : inc\items.hpp
src\wat\debug\ant.obj : inc\seq.hpp
src\wat\debug\ant.obj : inc\chars.hpp
src\wat\debug\ant.obj : ../imlib/include\timage.hpp
src\wat\debug\ant.obj : ../imlib/include\fonts.hpp
src\wat\debug\ant.obj : ../imlib/include\filter.hpp
src\wat\debug\ant.obj : ../imlib/include\mouse.hpp
src\wat\debug\ant.obj : ../imlib/include\sprite.hpp
src\wat\debug\ant.obj : ../imlib/include\keys.hpp
src\wat\debug\ant.obj : ../imlib/include\event.hpp
src\wat\debug\ant.obj : ../imlib/include\specs.hpp
src\wat\debug\ant.obj : ../imlib/include\palette.hpp
src\wat\debug\ant.obj : ../imlib/include\linked.hpp
src\wat\debug\ant.obj : ../imlib/include\image.hpp
src\wat\debug\ant.obj : ../imlib/include\video.hpp
src\wat\debug\ant.obj : ../imlib/include\jwindow.hpp
src\wat\debug\ant.obj : ../imlib/include\input.hpp
src\wat\debug\ant.obj : inc\objects.hpp
src\wat\debug\ant.obj : ../imlib/include\system.h
src\wat\debug\ant.obj : ../imlib/include\macs.hpp
src\wat\debug\ant.obj : inc\compiled.hpp
src\wat\debug\ant.obj : inc\fakelib.hpp
src\wat\debug\ant.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\ant.obj : inc\stack.hpp
src\wat\debug\ant.obj : inc\lisp_gc.hpp
src\wat\debug\ant.obj : ../imlib/include\timing.hpp
src\wat\debug\ant.obj : inc\lisp_opt.hpp
src\wat\debug\ant.obj : inc\lisp.hpp
src\wat\debug\ant.obj : inc\ant.hpp
src\wat\debug\sensor.obj : src\sensor.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\sensor.c -fo=src\wat\debug\sensor.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\sensor.obj : inc\clisp.hpp
src\wat\debug\sensor.obj : ../imlib/include\jrand.hpp
src\wat\debug\sensor.obj : inc\director.hpp
src\wat\debug\sensor.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\sensor.obj : ../imlib/include\image24.hpp
src\wat\debug\sensor.obj : ../imlib/include\loader.hpp
src\wat\debug\sensor.obj : ../imlib/include\mdlread.hpp
src\wat\debug\sensor.obj : inc\game.hpp
src\wat\debug\sensor.obj : inc\id.hpp
src\wat\debug\sensor.obj : inc\level.hpp
src\wat\debug\sensor.obj : inc\extend.hpp
src\wat\debug\sensor.obj : inc\crc.hpp
src\wat\debug\sensor.obj : inc\light.hpp
src\wat\debug\sensor.obj : inc\view.hpp
src\wat\debug\sensor.obj : inc\loader2.hpp
src\wat\debug\sensor.obj : inc\config.hpp
src\wat\debug\sensor.obj : ../imlib/include\supmorph.hpp
src\wat\debug\sensor.obj : inc\morpher.hpp
src\wat\debug\sensor.obj : inc\ability.hpp
src\wat\debug\sensor.obj : inc\particle.hpp
src\wat\debug\sensor.obj : ../imlib/include\sound.hpp
src\wat\debug\sensor.obj : inc\cache.hpp
src\wat\debug\sensor.obj : inc\points.hpp
src\wat\debug\sensor.obj : inc\items.hpp
src\wat\debug\sensor.obj : inc\seq.hpp
src\wat\debug\sensor.obj : inc\chars.hpp
src\wat\debug\sensor.obj : ../imlib/include\timage.hpp
src\wat\debug\sensor.obj : ../imlib/include\fonts.hpp
src\wat\debug\sensor.obj : ../imlib/include\filter.hpp
src\wat\debug\sensor.obj : ../imlib/include\mouse.hpp
src\wat\debug\sensor.obj : ../imlib/include\sprite.hpp
src\wat\debug\sensor.obj : ../imlib/include\keys.hpp
src\wat\debug\sensor.obj : ../imlib/include\event.hpp
src\wat\debug\sensor.obj : ../imlib/include\specs.hpp
src\wat\debug\sensor.obj : ../imlib/include\palette.hpp
src\wat\debug\sensor.obj : ../imlib/include\linked.hpp
src\wat\debug\sensor.obj : ../imlib/include\image.hpp
src\wat\debug\sensor.obj : ../imlib/include\video.hpp
src\wat\debug\sensor.obj : ../imlib/include\jwindow.hpp
src\wat\debug\sensor.obj : ../imlib/include\input.hpp
src\wat\debug\sensor.obj : inc\objects.hpp
src\wat\debug\sensor.obj : ../imlib/include\system.h
src\wat\debug\sensor.obj : ../imlib/include\macs.hpp
src\wat\debug\sensor.obj : inc\compiled.hpp
src\wat\debug\sensor.obj : inc\fakelib.hpp
src\wat\debug\sensor.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\sensor.obj : inc\stack.hpp
src\wat\debug\sensor.obj : inc\lisp_gc.hpp
src\wat\debug\sensor.obj : ../imlib/include\timing.hpp
src\wat\debug\sensor.obj : inc\lisp_opt.hpp
src\wat\debug\sensor.obj : inc\lisp.hpp
src\wat\debug\lisp_opt.obj : src\lisp_opt.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp_opt.c -fo=src\wat\debug\lisp_opt.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\lisp_opt.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\lisp_opt.obj : inc\stack.hpp
src\wat\debug\lisp_opt.obj : inc\lisp_gc.hpp
src\wat\debug\lisp_opt.obj : ../imlib/include\timing.hpp
src\wat\debug\lisp_opt.obj : inc\lisp_opt.hpp
src\wat\debug\lisp_opt.obj : inc\lisp.hpp
src\wat\debug\lisp_opt.obj : ../imlib/include\system.h
src\wat\debug\lisp_opt.obj : ../imlib/include\macs.hpp
src\wat\debug\lisp_opt.obj : inc\fakelib.hpp
src\wat\debug\demo.obj : src\demo.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\demo.c -fo=src\wat\debug\demo.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\demo.obj : src/net/inc\indian.hpp
src\wat\debug\demo.obj : inc\netface.hpp
src\wat\debug\demo.obj : inc\clisp.hpp
src\wat\debug\demo.obj : ../imlib/include\jrand.hpp
src\wat\debug\demo.obj : inc\console.hpp
src\wat\debug\demo.obj : inc\dev.hpp
src\wat\debug\demo.obj : ../imlib/include\dprint.hpp
src\wat\debug\demo.obj : inc\director.hpp
src\wat\debug\demo.obj : inc\id.hpp
src\wat\debug\demo.obj : inc\extend.hpp
src\wat\debug\demo.obj : inc\crc.hpp
src\wat\debug\demo.obj : inc\light.hpp
src\wat\debug\demo.obj : inc\view.hpp
src\wat\debug\demo.obj : inc\config.hpp
src\wat\debug\demo.obj : ../imlib/include\supmorph.hpp
src\wat\debug\demo.obj : inc\morpher.hpp
src\wat\debug\demo.obj : inc\ability.hpp
src\wat\debug\demo.obj : inc\particle.hpp
src\wat\debug\demo.obj : inc\cache.hpp
src\wat\debug\demo.obj : inc\seq.hpp
src\wat\debug\demo.obj : inc\chars.hpp
src\wat\debug\demo.obj : ../imlib/include\input.hpp
src\wat\debug\demo.obj : inc\objects.hpp
src\wat\debug\demo.obj : inc\level.hpp
src\wat\debug\demo.obj : inc\points.hpp
src\wat\debug\demo.obj : inc\items.hpp
src\wat\debug\demo.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\demo.obj : ../imlib/include\image24.hpp
src\wat\debug\demo.obj : ../imlib/include\loader.hpp
src\wat\debug\demo.obj : ../imlib/include\mdlread.hpp
src\wat\debug\demo.obj : ../imlib/include\sound.hpp
src\wat\debug\demo.obj : ../imlib/include\timing.hpp
src\wat\debug\demo.obj : inc\lisp_opt.hpp
src\wat\debug\demo.obj : inc\lisp.hpp
src\wat\debug\demo.obj : inc\loader2.hpp
src\wat\debug\demo.obj : inc\game.hpp
src\wat\debug\demo.obj : ../imlib/include\timage.hpp
src\wat\debug\demo.obj : ../imlib/include\fonts.hpp
src\wat\debug\demo.obj : ../imlib/include\filter.hpp
src\wat\debug\demo.obj : ../imlib/include\mouse.hpp
src\wat\debug\demo.obj : ../imlib/include\macs.hpp
src\wat\debug\demo.obj : ../imlib/include\sprite.hpp
src\wat\debug\demo.obj : ../imlib/include\keys.hpp
src\wat\debug\demo.obj : ../imlib/include\event.hpp
src\wat\debug\demo.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\demo.obj : ../imlib/include\specs.hpp
src\wat\debug\demo.obj : ../imlib/include\palette.hpp
src\wat\debug\demo.obj : ../imlib/include\linked.hpp
src\wat\debug\demo.obj : ../imlib/include\image.hpp
src\wat\debug\demo.obj : ../imlib/include\system.h
src\wat\debug\demo.obj : ../imlib/include\video.hpp
src\wat\debug\demo.obj : ../imlib/include\jwindow.hpp
src\wat\debug\demo.obj : inc\demo.hpp
src\wat\debug\lcache.obj : src\lcache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lcache.c -fo=src\wat\debug\lcache.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\lcache.obj : inc\bus_type.hpp
src\wat\debug\lcache.obj : ../imlib/include\system.h
src\wat\debug\lcache.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\lcache.obj : ../imlib/include\linked.hpp
src\wat\debug\lcache.obj : ../imlib/include\specs.hpp
src\wat\debug\lcache.obj : ../imlib/include\timing.hpp
src\wat\debug\lcache.obj : inc\lisp_opt.hpp
src\wat\debug\lcache.obj : inc\lisp.hpp
src\wat\debug\lisp_gc.obj : src\lisp_gc.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp_gc.c -fo=src\wat\debug\lisp_gc.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\lisp_gc.obj : inc\stack.hpp
src\wat\debug\lisp_gc.obj : ../imlib/include\system.h
src\wat\debug\lisp_gc.obj : ../imlib/include\macs.hpp
src\wat\debug\lisp_gc.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\lisp_gc.obj : inc\fakelib.hpp
src\wat\debug\lisp_gc.obj : ../imlib/include\timing.hpp
src\wat\debug\lisp_gc.obj : inc\lisp_opt.hpp
src\wat\debug\lisp_gc.obj : inc\lisp.hpp
src\wat\debug\nfclient.obj : src\nfclient.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\nfclient.c -fo=src\wat\debug\nfclient.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\nfclient.obj : src/net/unix\ghandler.hpp
src\wat\debug\nfclient.obj : src/net/unix\gserver.hpp
src\wat\debug\nfclient.obj : ../imlib/include\timing.hpp
src\wat\debug\nfclient.obj : inc\lisp_opt.hpp
src\wat\debug\nfclient.obj : inc\lisp.hpp
src\wat\debug\nfclient.obj : inc\particle.hpp
src\wat\debug\nfclient.obj : ../imlib/include\sound.hpp
src\wat\debug\nfclient.obj : ../imlib/include\filter.hpp
src\wat\debug\nfclient.obj : ../imlib/include\timage.hpp
src\wat\debug\nfclient.obj : inc\points.hpp
src\wat\debug\nfclient.obj : ../imlib/include\palette.hpp
src\wat\debug\nfclient.obj : ../imlib/include\image.hpp
src\wat\debug\nfclient.obj : inc\items.hpp
src\wat\debug\nfclient.obj : inc\cache.hpp
src\wat\debug\nfclient.obj : ../imlib/include\macs.hpp
src\wat\debug\nfclient.obj : inc\crc.hpp
src\wat\debug\nfclient.obj : ../imlib/include\dprint.hpp
src\wat\debug\nfclient.obj : src/net/inc\sock.hpp
src\wat\debug\nfclient.obj : inc\nfserver.hpp
src\wat\debug\nfclient.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\nfclient.obj : ../imlib/include\linked.hpp
src\wat\debug\nfclient.obj : ../imlib/include\specs.hpp
src\wat\debug\nfclient.obj : src/net/inc\indian.hpp
src\wat\debug\nfclient.obj : inc\netface.hpp
src\wat\debug\nfclient.obj : ../imlib/include\system.h
src\wat\debug\username.obj : src\username.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\username.c -fo=src\wat\debug\username.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\username.obj : src\username.c
src\wat\debug\clisp.obj : src\clisp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\clisp.c -fo=src\wat\debug\clisp.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\clisp.obj : inc\netcfg.hpp
src\wat\debug\clisp.obj : ../imlib/include\jdir.hpp
src\wat\debug\clisp.obj : inc\text_gui.hpp
src\wat\debug\clisp.obj : inc\chat.hpp
src\wat\debug\clisp.obj : inc\demo.hpp
src\wat\debug\clisp.obj : ../imlib/include\joy.hpp
src\wat\debug\clisp.obj : src/net/inc\sock.hpp
src\wat\debug\clisp.obj : src/net/inc\indian.hpp
src\wat\debug\clisp.obj : inc\netface.hpp
src\wat\debug\clisp.obj : inc\nfserver.hpp
src\wat\debug\clisp.obj : inc\loadgame.hpp
src\wat\debug\clisp.obj : inc\cop.hpp
src\wat\debug\clisp.obj : inc\fakelib.hpp
src\wat\debug\clisp.obj : inc\stack.hpp
src\wat\debug\clisp.obj : inc\lisp_gc.hpp
src\wat\debug\clisp.obj : inc\clisp.hpp
src\wat\debug\clisp.obj : ../imlib/include\dprint.hpp
src\wat\debug\clisp.obj : inc\menu.hpp
src\wat\debug\clisp.obj : ../imlib/include\pcxread.hpp
src\wat\debug\clisp.obj : inc\console.hpp
src\wat\debug\clisp.obj : inc\dev.hpp
src\wat\debug\clisp.obj : ../imlib/include\jrand.hpp
src\wat\debug\clisp.obj : inc\director.hpp
src\wat\debug\clisp.obj : inc\id.hpp
src\wat\debug\clisp.obj : inc\extend.hpp
src\wat\debug\clisp.obj : inc\crc.hpp
src\wat\debug\clisp.obj : inc\light.hpp
src\wat\debug\clisp.obj : inc\view.hpp
src\wat\debug\clisp.obj : inc\config.hpp
src\wat\debug\clisp.obj : ../imlib/include\supmorph.hpp
src\wat\debug\clisp.obj : inc\morpher.hpp
src\wat\debug\clisp.obj : inc\ability.hpp
src\wat\debug\clisp.obj : inc\particle.hpp
src\wat\debug\clisp.obj : inc\cache.hpp
src\wat\debug\clisp.obj : inc\seq.hpp
src\wat\debug\clisp.obj : inc\chars.hpp
src\wat\debug\clisp.obj : ../imlib/include\input.hpp
src\wat\debug\clisp.obj : inc\objects.hpp
src\wat\debug\clisp.obj : inc\level.hpp
src\wat\debug\clisp.obj : inc\points.hpp
src\wat\debug\clisp.obj : inc\items.hpp
src\wat\debug\clisp.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\clisp.obj : ../imlib/include\image24.hpp
src\wat\debug\clisp.obj : ../imlib/include\loader.hpp
src\wat\debug\clisp.obj : ../imlib/include\mdlread.hpp
src\wat\debug\clisp.obj : ../imlib/include\sound.hpp
src\wat\debug\clisp.obj : ../imlib/include\timage.hpp
src\wat\debug\clisp.obj : ../imlib/include\fonts.hpp
src\wat\debug\clisp.obj : ../imlib/include\filter.hpp
src\wat\debug\clisp.obj : ../imlib/include\mouse.hpp
src\wat\debug\clisp.obj : ../imlib/include\macs.hpp
src\wat\debug\clisp.obj : ../imlib/include\sprite.hpp
src\wat\debug\clisp.obj : ../imlib/include\keys.hpp
src\wat\debug\clisp.obj : ../imlib/include\event.hpp
src\wat\debug\clisp.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\clisp.obj : ../imlib/include\specs.hpp
src\wat\debug\clisp.obj : ../imlib/include\palette.hpp
src\wat\debug\clisp.obj : ../imlib/include\linked.hpp
src\wat\debug\clisp.obj : ../imlib/include\image.hpp
src\wat\debug\clisp.obj : ../imlib/include\system.h
src\wat\debug\clisp.obj : ../imlib/include\video.hpp
src\wat\debug\clisp.obj : ../imlib/include\jwindow.hpp
src\wat\debug\clisp.obj : inc\loader2.hpp
src\wat\debug\clisp.obj : inc\game.hpp
src\wat\debug\clisp.obj : ../imlib/include\timing.hpp
src\wat\debug\clisp.obj : inc\lisp_opt.hpp
src\wat\debug\clisp.obj : inc\lisp.hpp
src\wat\debug\clisp.obj : inc\ant.hpp
src\wat\debug\gui.obj : src\gui.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\gui.c -fo=src\wat\debug\gui.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\gui.obj : inc\loader2.hpp
src\wat\debug\gui.obj : ../imlib/include\fonts.hpp
src\wat\debug\gui.obj : ../imlib/include\mouse.hpp
src\wat\debug\gui.obj : ../imlib/include\sprite.hpp
src\wat\debug\gui.obj : ../imlib/include\keys.hpp
src\wat\debug\gui.obj : ../imlib/include\event.hpp
src\wat\debug\gui.obj : ../imlib/include\video.hpp
src\wat\debug\gui.obj : ../imlib/include\jwindow.hpp
src\wat\debug\gui.obj : inc\gui.hpp
src\wat\debug\gui.obj : ../imlib/include\timing.hpp
src\wat\debug\gui.obj : inc\lisp_opt.hpp
src\wat\debug\gui.obj : inc\lisp.hpp
src\wat\debug\gui.obj : inc\particle.hpp
src\wat\debug\gui.obj : ../imlib/include\sound.hpp
src\wat\debug\gui.obj : ../imlib/include\filter.hpp
src\wat\debug\gui.obj : ../imlib/include\macs.hpp
src\wat\debug\gui.obj : ../imlib/include\timage.hpp
src\wat\debug\gui.obj : inc\points.hpp
src\wat\debug\gui.obj : ../imlib/include\palette.hpp
src\wat\debug\gui.obj : ../imlib/include\image.hpp
src\wat\debug\gui.obj : inc\items.hpp
src\wat\debug\gui.obj : ../imlib/include\system.h
src\wat\debug\gui.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\gui.obj : ../imlib/include\linked.hpp
src\wat\debug\gui.obj : ../imlib/include\specs.hpp
src\wat\debug\gui.obj : inc\cache.hpp
src\wat\debug\transp.obj : src\transp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\transp.c -fo=src\wat\debug\transp.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\transp.obj : ../imlib/include\macs.hpp
src\wat\debug\transp.obj : ../imlib/include\system.h
src\wat\debug\transp.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\transp.obj : ../imlib/include\specs.hpp
src\wat\debug\transp.obj : ../imlib/include\palette.hpp
src\wat\debug\transp.obj : ../imlib/include\linked.hpp
src\wat\debug\transp.obj : ../imlib/include\image.hpp
src\wat\debug\transp.obj : inc\transp.hpp
src\wat\debug\collide.obj : src\collide.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\collide.c -fo=src\wat\debug\collide.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\collide.obj : inc\intsect.hpp
src\wat\debug\collide.obj : inc\id.hpp
src\wat\debug\collide.obj : inc\extend.hpp
src\wat\debug\collide.obj : inc\crc.hpp
src\wat\debug\collide.obj : inc\light.hpp
src\wat\debug\collide.obj : inc\view.hpp
src\wat\debug\collide.obj : inc\loader2.hpp
src\wat\debug\collide.obj : inc\config.hpp
src\wat\debug\collide.obj : ../imlib/include\supmorph.hpp
src\wat\debug\collide.obj : inc\morpher.hpp
src\wat\debug\collide.obj : inc\ability.hpp
src\wat\debug\collide.obj : ../imlib/include\timing.hpp
src\wat\debug\collide.obj : inc\lisp_opt.hpp
src\wat\debug\collide.obj : inc\lisp.hpp
src\wat\debug\collide.obj : inc\particle.hpp
src\wat\debug\collide.obj : ../imlib/include\sound.hpp
src\wat\debug\collide.obj : inc\cache.hpp
src\wat\debug\collide.obj : inc\points.hpp
src\wat\debug\collide.obj : inc\items.hpp
src\wat\debug\collide.obj : inc\seq.hpp
src\wat\debug\collide.obj : inc\chars.hpp
src\wat\debug\collide.obj : ../imlib/include\timage.hpp
src\wat\debug\collide.obj : ../imlib/include\fonts.hpp
src\wat\debug\collide.obj : ../imlib/include\filter.hpp
src\wat\debug\collide.obj : ../imlib/include\mouse.hpp
src\wat\debug\collide.obj : ../imlib/include\sprite.hpp
src\wat\debug\collide.obj : ../imlib/include\keys.hpp
src\wat\debug\collide.obj : ../imlib/include\event.hpp
src\wat\debug\collide.obj : ../imlib/include\palette.hpp
src\wat\debug\collide.obj : ../imlib/include\image.hpp
src\wat\debug\collide.obj : ../imlib/include\video.hpp
src\wat\debug\collide.obj : ../imlib/include\jwindow.hpp
src\wat\debug\collide.obj : ../imlib/include\input.hpp
src\wat\debug\collide.obj : inc\objects.hpp
src\wat\debug\collide.obj : ../imlib/include\macs.hpp
src\wat\debug\collide.obj : ../imlib/include\system.h
src\wat\debug\collide.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\collide.obj : ../imlib/include\linked.hpp
src\wat\debug\collide.obj : ../imlib/include\specs.hpp
src\wat\debug\collide.obj : inc\level.hpp
src\wat\debug\trig.obj : src\trig.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\trig.c -fo=src\wat\debug\trig.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\trig.obj : src\trig.c
src\wat\debug\property.obj : src\property.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\property.c -fo=src\wat\debug\property.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\property.obj : ../imlib/include\dprint.hpp
src\wat\debug\property.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\property.obj : inc\property.hpp
src\wat\debug\lisp.obj : src\lisp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp.c -fo=src\wat\debug\lisp.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\lisp.obj : inc\console.hpp
src\wat\debug\lisp.obj : inc\director.hpp
src\wat\debug\lisp.obj : inc\id.hpp
src\wat\debug\lisp.obj : inc\extend.hpp
src\wat\debug\lisp.obj : inc\crc.hpp
src\wat\debug\lisp.obj : inc\light.hpp
src\wat\debug\lisp.obj : inc\view.hpp
src\wat\debug\lisp.obj : inc\config.hpp
src\wat\debug\lisp.obj : ../imlib/include\supmorph.hpp
src\wat\debug\lisp.obj : inc\morpher.hpp
src\wat\debug\lisp.obj : inc\ability.hpp
src\wat\debug\lisp.obj : inc\seq.hpp
src\wat\debug\lisp.obj : inc\chars.hpp
src\wat\debug\lisp.obj : ../imlib/include\input.hpp
src\wat\debug\lisp.obj : inc\objects.hpp
src\wat\debug\lisp.obj : inc\level.hpp
src\wat\debug\lisp.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\lisp.obj : ../imlib/include\image24.hpp
src\wat\debug\lisp.obj : ../imlib/include\loader.hpp
src\wat\debug\lisp.obj : ../imlib/include\mdlread.hpp
src\wat\debug\lisp.obj : inc\loader2.hpp
src\wat\debug\lisp.obj : inc\game.hpp
src\wat\debug\lisp.obj : inc\dev.hpp
src\wat\debug\lisp.obj : inc\particle.hpp
src\wat\debug\lisp.obj : ../imlib/include\sound.hpp
src\wat\debug\lisp.obj : inc\points.hpp
src\wat\debug\lisp.obj : inc\items.hpp
src\wat\debug\lisp.obj : inc\cache.hpp
src\wat\debug\lisp.obj : ../imlib/include\dprint.hpp
src\wat\debug\lisp.obj : ../imlib/include\timage.hpp
src\wat\debug\lisp.obj : ../imlib/include\fonts.hpp
src\wat\debug\lisp.obj : ../imlib/include\filter.hpp
src\wat\debug\lisp.obj : ../imlib/include\mouse.hpp
src\wat\debug\lisp.obj : ../imlib/include\macs.hpp
src\wat\debug\lisp.obj : ../imlib/include\sprite.hpp
src\wat\debug\lisp.obj : ../imlib/include\keys.hpp
src\wat\debug\lisp.obj : ../imlib/include\event.hpp
src\wat\debug\lisp.obj : ../imlib/include\specs.hpp
src\wat\debug\lisp.obj : ../imlib/include\palette.hpp
src\wat\debug\lisp.obj : ../imlib/include\linked.hpp
src\wat\debug\lisp.obj : ../imlib/include\image.hpp
src\wat\debug\lisp.obj : ../imlib/include\system.h
src\wat\debug\lisp.obj : ../imlib/include\video.hpp
src\wat\debug\lisp.obj : ../imlib/include\jwindow.hpp
src\wat\debug\lisp.obj : ../imlib/include\visobj.hpp
src\wat\debug\lisp.obj : ../imlib/include\status.hpp
src\wat\debug\lisp.obj : inc\fakelib.hpp
src\wat\debug\lisp.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\lisp.obj : inc\stack.hpp
src\wat\debug\lisp.obj : inc\lisp_gc.hpp
src\wat\debug\lisp.obj : ../imlib/include\timing.hpp
src\wat\debug\lisp.obj : inc\lisp_opt.hpp
src\wat\debug\lisp.obj : inc\lisp.hpp
src\wat\debug\lisp.obj : inc\bus_type.hpp
src\wat\debug\cache.obj : src\cache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\cache.c -fo=src\wat\debug\cache.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\cache.obj : inc\specache.hpp
src\wat\debug\cache.obj : inc\fakelib.hpp
src\wat\debug\cache.obj : inc\stack.hpp
src\wat\debug\cache.obj : inc\lisp_gc.hpp
src\wat\debug\cache.obj : inc\director.hpp
src\wat\debug\cache.obj : inc\id.hpp
src\wat\debug\cache.obj : inc\extend.hpp
src\wat\debug\cache.obj : inc\crc.hpp
src\wat\debug\cache.obj : inc\light.hpp
src\wat\debug\cache.obj : inc\view.hpp
src\wat\debug\cache.obj : inc\config.hpp
src\wat\debug\cache.obj : ../imlib/include\supmorph.hpp
src\wat\debug\cache.obj : inc\morpher.hpp
src\wat\debug\cache.obj : inc\ability.hpp
src\wat\debug\cache.obj : inc\seq.hpp
src\wat\debug\cache.obj : inc\chars.hpp
src\wat\debug\cache.obj : ../imlib/include\input.hpp
src\wat\debug\cache.obj : inc\objects.hpp
src\wat\debug\cache.obj : inc\level.hpp
src\wat\debug\cache.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\cache.obj : ../imlib/include\image24.hpp
src\wat\debug\cache.obj : ../imlib/include\loader.hpp
src\wat\debug\cache.obj : ../imlib/include\mdlread.hpp
src\wat\debug\cache.obj : inc\loader2.hpp
src\wat\debug\cache.obj : inc\game.hpp
src\wat\debug\cache.obj : ../imlib/include\fonts.hpp
src\wat\debug\cache.obj : ../imlib/include\mouse.hpp
src\wat\debug\cache.obj : ../imlib/include\sprite.hpp
src\wat\debug\cache.obj : ../imlib/include\keys.hpp
src\wat\debug\cache.obj : ../imlib/include\event.hpp
src\wat\debug\cache.obj : ../imlib/include\jwindow.hpp
src\wat\debug\cache.obj : ../imlib/include\visobj.hpp
src\wat\debug\cache.obj : ../imlib/include\status.hpp
src\wat\debug\cache.obj : inc\lcache.hpp
src\wat\debug\cache.obj : ../imlib/include\exitproc.hpp
src\wat\debug\cache.obj : ../imlib/include\dprint.hpp
src\wat\debug\cache.obj : ../imlib/include\video.hpp
src\wat\debug\cache.obj : ../imlib/include\timing.hpp
src\wat\debug\cache.obj : inc\lisp_opt.hpp
src\wat\debug\cache.obj : inc\lisp.hpp
src\wat\debug\cache.obj : inc\particle.hpp
src\wat\debug\cache.obj : ../imlib/include\sound.hpp
src\wat\debug\cache.obj : ../imlib/include\filter.hpp
src\wat\debug\cache.obj : ../imlib/include\macs.hpp
src\wat\debug\cache.obj : ../imlib/include\timage.hpp
src\wat\debug\cache.obj : inc\points.hpp
src\wat\debug\cache.obj : ../imlib/include\palette.hpp
src\wat\debug\cache.obj : ../imlib/include\image.hpp
src\wat\debug\cache.obj : inc\items.hpp
src\wat\debug\cache.obj : ../imlib/include\system.h
src\wat\debug\cache.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\cache.obj : ../imlib/include\linked.hpp
src\wat\debug\cache.obj : ../imlib/include\specs.hpp
src\wat\debug\cache.obj : inc\cache.hpp
src\wat\debug\particle.obj : src\particle.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\particle.c -fo=src\wat\debug\particle.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\particle.obj : ../imlib/include\jrand.hpp
src\wat\debug\particle.obj : ../imlib/include\sound.hpp
src\wat\debug\particle.obj : inc\points.hpp
src\wat\debug\particle.obj : inc\items.hpp
src\wat\debug\particle.obj : inc\cache.hpp
src\wat\debug\particle.obj : ../imlib/include\timing.hpp
src\wat\debug\particle.obj : inc\lisp_opt.hpp
src\wat\debug\particle.obj : inc\lisp.hpp
src\wat\debug\particle.obj : ../imlib/include\timage.hpp
src\wat\debug\particle.obj : ../imlib/include\fonts.hpp
src\wat\debug\particle.obj : ../imlib/include\filter.hpp
src\wat\debug\particle.obj : ../imlib/include\mouse.hpp
src\wat\debug\particle.obj : ../imlib/include\sprite.hpp
src\wat\debug\particle.obj : ../imlib/include\keys.hpp
src\wat\debug\particle.obj : ../imlib/include\event.hpp
src\wat\debug\particle.obj : ../imlib/include\video.hpp
src\wat\debug\particle.obj : ../imlib/include\jwindow.hpp
src\wat\debug\particle.obj : inc\crc.hpp
src\wat\debug\particle.obj : inc\config.hpp
src\wat\debug\particle.obj : inc\light.hpp
src\wat\debug\particle.obj : inc\view.hpp
src\wat\debug\particle.obj : ../imlib/include\palette.hpp
src\wat\debug\particle.obj : ../imlib/include\image.hpp
src\wat\debug\particle.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\particle.obj : ../imlib/include\linked.hpp
src\wat\debug\particle.obj : ../imlib/include\specs.hpp
src\wat\debug\particle.obj : inc\particle.hpp
src\wat\debug\particle.obj : ../imlib/include\system.h
src\wat\debug\particle.obj : ../imlib/include\macs.hpp
src\wat\debug\objects.obj : src\objects.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\objects.c -fo=src\wat\debug\objects.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\objects.obj : inc\profile.hpp
src\wat\debug\objects.obj : inc\fakelib.hpp
src\wat\debug\objects.obj : inc\stack.hpp
src\wat\debug\objects.obj : inc\lisp_gc.hpp
src\wat\debug\objects.obj : inc\clisp.hpp
src\wat\debug\objects.obj : ../imlib/include\dprint.hpp
src\wat\debug\objects.obj : ../imlib/include\jrand.hpp
src\wat\debug\objects.obj : inc\intsect.hpp
src\wat\debug\objects.obj : inc\director.hpp
src\wat\debug\objects.obj : inc\id.hpp
src\wat\debug\objects.obj : inc\level.hpp
src\wat\debug\objects.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\objects.obj : ../imlib/include\image24.hpp
src\wat\debug\objects.obj : ../imlib/include\loader.hpp
src\wat\debug\objects.obj : ../imlib/include\mdlread.hpp
src\wat\debug\objects.obj : inc\game.hpp
src\wat\debug\objects.obj : inc\extend.hpp
src\wat\debug\objects.obj : inc\crc.hpp
src\wat\debug\objects.obj : inc\light.hpp
src\wat\debug\objects.obj : inc\view.hpp
src\wat\debug\objects.obj : inc\loader2.hpp
src\wat\debug\objects.obj : inc\config.hpp
src\wat\debug\objects.obj : ../imlib/include\supmorph.hpp
src\wat\debug\objects.obj : inc\morpher.hpp
src\wat\debug\objects.obj : inc\ability.hpp
src\wat\debug\objects.obj : ../imlib/include\timing.hpp
src\wat\debug\objects.obj : inc\lisp_opt.hpp
src\wat\debug\objects.obj : inc\lisp.hpp
src\wat\debug\objects.obj : inc\particle.hpp
src\wat\debug\objects.obj : ../imlib/include\sound.hpp
src\wat\debug\objects.obj : inc\cache.hpp
src\wat\debug\objects.obj : inc\points.hpp
src\wat\debug\objects.obj : inc\items.hpp
src\wat\debug\objects.obj : inc\seq.hpp
src\wat\debug\objects.obj : inc\chars.hpp
src\wat\debug\objects.obj : ../imlib/include\fonts.hpp
src\wat\debug\objects.obj : ../imlib/include\mouse.hpp
src\wat\debug\objects.obj : ../imlib/include\sprite.hpp
src\wat\debug\objects.obj : ../imlib/include\keys.hpp
src\wat\debug\objects.obj : ../imlib/include\event.hpp
src\wat\debug\objects.obj : ../imlib/include\video.hpp
src\wat\debug\objects.obj : ../imlib/include\jwindow.hpp
src\wat\debug\objects.obj : ../imlib/include\input.hpp
src\wat\debug\objects.obj : inc\objects.hpp
src\wat\debug\objects.obj : ../imlib/include\filter.hpp
src\wat\debug\objects.obj : ../imlib/include\macs.hpp
src\wat\debug\objects.obj : ../imlib/include\system.h
src\wat\debug\objects.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\objects.obj : ../imlib/include\specs.hpp
src\wat\debug\objects.obj : ../imlib/include\palette.hpp
src\wat\debug\objects.obj : ../imlib/include\linked.hpp
src\wat\debug\objects.obj : ../imlib/include\image.hpp
src\wat\debug\objects.obj : ../imlib/include\timage.hpp
src\wat\debug\extend.obj : src\extend.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\extend.c -fo=src\wat\debug\extend.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\extend.obj : inc\loader2.hpp
src\wat\debug\extend.obj : ../imlib/include\input.hpp
src\wat\debug\extend.obj : inc\objects.hpp
src\wat\debug\extend.obj : ../imlib/include\fonts.hpp
src\wat\debug\extend.obj : ../imlib/include\video.hpp
src\wat\debug\extend.obj : ../imlib/include\jwindow.hpp
src\wat\debug\extend.obj : inc\crc.hpp
src\wat\debug\extend.obj : inc\light.hpp
src\wat\debug\extend.obj : inc\view.hpp
src\wat\debug\extend.obj : ../imlib/include\mouse.hpp
src\wat\debug\extend.obj : ../imlib/include\sprite.hpp
src\wat\debug\extend.obj : ../imlib/include\keys.hpp
src\wat\debug\extend.obj : ../imlib/include\event.hpp
src\wat\debug\extend.obj : inc\ability.hpp
src\wat\debug\extend.obj : ../imlib/include\timing.hpp
src\wat\debug\extend.obj : inc\lisp_opt.hpp
src\wat\debug\extend.obj : inc\lisp.hpp
src\wat\debug\extend.obj : inc\particle.hpp
src\wat\debug\extend.obj : ../imlib/include\sound.hpp
src\wat\debug\extend.obj : inc\cache.hpp
src\wat\debug\extend.obj : inc\points.hpp
src\wat\debug\extend.obj : inc\items.hpp
src\wat\debug\extend.obj : inc\seq.hpp
src\wat\debug\extend.obj : inc\chars.hpp
src\wat\debug\extend.obj : inc\config.hpp
src\wat\debug\extend.obj : ../imlib/include\filter.hpp
src\wat\debug\extend.obj : ../imlib/include\specs.hpp
src\wat\debug\extend.obj : ../imlib/include\palette.hpp
src\wat\debug\extend.obj : ../imlib/include\linked.hpp
src\wat\debug\extend.obj : ../imlib/include\image.hpp
src\wat\debug\extend.obj : ../imlib/include\timage.hpp
src\wat\debug\extend.obj : ../imlib/include\supmorph.hpp
src\wat\debug\extend.obj : inc\morpher.hpp
src\wat\debug\extend.obj : ../imlib/include\system.h
src\wat\debug\extend.obj : ../imlib/include\macs.hpp
src\wat\debug\extend.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\extend.obj : inc\extend.hpp
src\wat\debug\console.obj : src\console.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\console.c -fo=src\wat\debug\console.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\console.obj : ../imlib/include\timage.hpp
src\wat\debug\console.obj : ../imlib/include\fonts.hpp
src\wat\debug\console.obj : ../imlib/include\filter.hpp
src\wat\debug\console.obj : ../imlib/include\mouse.hpp
src\wat\debug\console.obj : ../imlib/include\macs.hpp
src\wat\debug\console.obj : ../imlib/include\sprite.hpp
src\wat\debug\console.obj : ../imlib/include\keys.hpp
src\wat\debug\console.obj : ../imlib/include\event.hpp
src\wat\debug\console.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\console.obj : ../imlib/include\specs.hpp
src\wat\debug\console.obj : ../imlib/include\palette.hpp
src\wat\debug\console.obj : ../imlib/include\image.hpp
src\wat\debug\console.obj : ../imlib/include\system.h
src\wat\debug\console.obj : ../imlib/include\video.hpp
src\wat\debug\console.obj : ../imlib/include\jwindow.hpp
src\wat\debug\console.obj : inc\console.hpp
src\wat\debug\console.obj : ../imlib/include\linked.hpp
src\wat\debug\ability.obj : src\ability.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\ability.c -fo=src\wat\debug\ability.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\ability.obj : ../imlib/include\mouse.hpp
src\wat\debug\ability.obj : ../imlib/include\sprite.hpp
src\wat\debug\ability.obj : ../imlib/include\keys.hpp
src\wat\debug\ability.obj : ../imlib/include\event.hpp
src\wat\debug\ability.obj : ../imlib/include\timing.hpp
src\wat\debug\ability.obj : inc\lisp_opt.hpp
src\wat\debug\ability.obj : inc\lisp.hpp
src\wat\debug\ability.obj : inc\particle.hpp
src\wat\debug\ability.obj : ../imlib/include\sound.hpp
src\wat\debug\ability.obj : inc\cache.hpp
src\wat\debug\ability.obj : ../imlib/include\filter.hpp
src\wat\debug\ability.obj : ../imlib/include\macs.hpp
src\wat\debug\ability.obj : ../imlib/include\timage.hpp
src\wat\debug\ability.obj : inc\points.hpp
src\wat\debug\ability.obj : inc\items.hpp
src\wat\debug\ability.obj : ../imlib/include\system.h
src\wat\debug\ability.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\ability.obj : ../imlib/include\specs.hpp
src\wat\debug\ability.obj : ../imlib/include\palette.hpp
src\wat\debug\ability.obj : ../imlib/include\linked.hpp
src\wat\debug\ability.obj : ../imlib/include\image.hpp
src\wat\debug\ability.obj : inc\seq.hpp
src\wat\debug\ability.obj : inc\chars.hpp
src\wat\debug\ability.obj : inc\ability.hpp
src\wat\debug\items.obj : src\items.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\items.c -fo=src\wat\debug\items.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\items.obj : inc\console.hpp
src\wat\debug\items.obj : inc\director.hpp
src\wat\debug\items.obj : inc\id.hpp
src\wat\debug\items.obj : inc\extend.hpp
src\wat\debug\items.obj : inc\crc.hpp
src\wat\debug\items.obj : inc\light.hpp
src\wat\debug\items.obj : inc\view.hpp
src\wat\debug\items.obj : inc\config.hpp
src\wat\debug\items.obj : ../imlib/include\supmorph.hpp
src\wat\debug\items.obj : inc\morpher.hpp
src\wat\debug\items.obj : inc\ability.hpp
src\wat\debug\items.obj : inc\particle.hpp
src\wat\debug\items.obj : inc\cache.hpp
src\wat\debug\items.obj : inc\seq.hpp
src\wat\debug\items.obj : inc\chars.hpp
src\wat\debug\items.obj : ../imlib/include\input.hpp
src\wat\debug\items.obj : inc\objects.hpp
src\wat\debug\items.obj : inc\level.hpp
src\wat\debug\items.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\items.obj : ../imlib/include\image24.hpp
src\wat\debug\items.obj : ../imlib/include\loader.hpp
src\wat\debug\items.obj : ../imlib/include\mdlread.hpp
src\wat\debug\items.obj : ../imlib/include\sound.hpp
src\wat\debug\items.obj : ../imlib/include\fonts.hpp
src\wat\debug\items.obj : ../imlib/include\mouse.hpp
src\wat\debug\items.obj : ../imlib/include\sprite.hpp
src\wat\debug\items.obj : ../imlib/include\keys.hpp
src\wat\debug\items.obj : ../imlib/include\event.hpp
src\wat\debug\items.obj : ../imlib/include\video.hpp
src\wat\debug\items.obj : ../imlib/include\jwindow.hpp
src\wat\debug\items.obj : inc\loader2.hpp
src\wat\debug\items.obj : inc\game.hpp
src\wat\debug\items.obj : inc\dev.hpp
src\wat\debug\items.obj : ../imlib/include\timing.hpp
src\wat\debug\items.obj : inc\lisp_opt.hpp
src\wat\debug\items.obj : inc\lisp.hpp
src\wat\debug\items.obj : ../imlib/include\filter.hpp
src\wat\debug\items.obj : ../imlib/include\macs.hpp
src\wat\debug\items.obj : ../imlib/include\timage.hpp
src\wat\debug\items.obj : inc\points.hpp
src\wat\debug\items.obj : ../imlib/include\system.h
src\wat\debug\items.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\items.obj : ../imlib/include\specs.hpp
src\wat\debug\items.obj : ../imlib/include\palette.hpp
src\wat\debug\items.obj : ../imlib/include\linked.hpp
src\wat\debug\items.obj : ../imlib/include\image.hpp
src\wat\debug\items.obj : inc\items.hpp
src\wat\debug\dev.obj : src\dev.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\dev.c -fo=src\wat\debug\dev.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\dev.obj : inc\chat.hpp
src\wat\debug\dev.obj : inc\compiled.hpp
src\wat\debug\dev.obj : inc\sbar.hpp
src\wat\debug\dev.obj : inc\profile.hpp
src\wat\debug\dev.obj : inc\demo.hpp
src\wat\debug\dev.obj : inc\fakelib.hpp
src\wat\debug\dev.obj : inc\stack.hpp
src\wat\debug\dev.obj : inc\lisp_gc.hpp
src\wat\debug\dev.obj : ../imlib/include\pcxread.hpp
src\wat\debug\dev.obj : ../imlib/include\visobj.hpp
src\wat\debug\dev.obj : ../imlib/include\tools.hpp
src\wat\debug\dev.obj : ../imlib/include\filesel.hpp
src\wat\debug\dev.obj : ../imlib/include\pmenu.hpp
src\wat\debug\dev.obj : inc\property.hpp
src\wat\debug\dev.obj : ../imlib/include\dprint.hpp
src\wat\debug\dev.obj : ../imlib/include\scroller.hpp
src\wat\debug\dev.obj : inc\devsel.hpp
src\wat\debug\dev.obj : inc\console.hpp
src\wat\debug\dev.obj : inc\director.hpp
src\wat\debug\dev.obj : inc\id.hpp
src\wat\debug\dev.obj : inc\extend.hpp
src\wat\debug\dev.obj : inc\crc.hpp
src\wat\debug\dev.obj : inc\light.hpp
src\wat\debug\dev.obj : inc\view.hpp
src\wat\debug\dev.obj : inc\config.hpp
src\wat\debug\dev.obj : ../imlib/include\supmorph.hpp
src\wat\debug\dev.obj : inc\morpher.hpp
src\wat\debug\dev.obj : inc\ability.hpp
src\wat\debug\dev.obj : inc\particle.hpp
src\wat\debug\dev.obj : inc\cache.hpp
src\wat\debug\dev.obj : inc\seq.hpp
src\wat\debug\dev.obj : inc\chars.hpp
src\wat\debug\dev.obj : ../imlib/include\input.hpp
src\wat\debug\dev.obj : inc\objects.hpp
src\wat\debug\dev.obj : inc\level.hpp
src\wat\debug\dev.obj : inc\points.hpp
src\wat\debug\dev.obj : inc\items.hpp
src\wat\debug\dev.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\dev.obj : ../imlib/include\image24.hpp
src\wat\debug\dev.obj : ../imlib/include\loader.hpp
src\wat\debug\dev.obj : ../imlib/include\mdlread.hpp
src\wat\debug\dev.obj : ../imlib/include\sound.hpp
src\wat\debug\dev.obj : ../imlib/include\timing.hpp
src\wat\debug\dev.obj : inc\lisp_opt.hpp
src\wat\debug\dev.obj : inc\lisp.hpp
src\wat\debug\dev.obj : ../imlib/include\timage.hpp
src\wat\debug\dev.obj : ../imlib/include\fonts.hpp
src\wat\debug\dev.obj : ../imlib/include\filter.hpp
src\wat\debug\dev.obj : ../imlib/include\mouse.hpp
src\wat\debug\dev.obj : ../imlib/include\macs.hpp
src\wat\debug\dev.obj : ../imlib/include\sprite.hpp
src\wat\debug\dev.obj : ../imlib/include\keys.hpp
src\wat\debug\dev.obj : ../imlib/include\event.hpp
src\wat\debug\dev.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\dev.obj : ../imlib/include\specs.hpp
src\wat\debug\dev.obj : ../imlib/include\palette.hpp
src\wat\debug\dev.obj : ../imlib/include\linked.hpp
src\wat\debug\dev.obj : ../imlib/include\image.hpp
src\wat\debug\dev.obj : ../imlib/include\system.h
src\wat\debug\dev.obj : ../imlib/include\video.hpp
src\wat\debug\dev.obj : ../imlib/include\jwindow.hpp
src\wat\debug\dev.obj : inc\loader2.hpp
src\wat\debug\dev.obj : inc\game.hpp
src\wat\debug\dev.obj : inc\dev.hpp
src\wat\debug\chars.obj : src\chars.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\chars.c -fo=src\wat\debug\chars.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\chars.obj : inc\fakelib.hpp
src\wat\debug\chars.obj : inc\stack.hpp
src\wat\debug\chars.obj : inc\lisp_gc.hpp
src\wat\debug\chars.obj : ../imlib/include\dprint.hpp
src\wat\debug\chars.obj : inc\clisp.hpp
src\wat\debug\chars.obj : inc\intsect.hpp
src\wat\debug\chars.obj : inc\director.hpp
src\wat\debug\chars.obj : inc\id.hpp
src\wat\debug\chars.obj : inc\extend.hpp
src\wat\debug\chars.obj : inc\crc.hpp
src\wat\debug\chars.obj : inc\light.hpp
src\wat\debug\chars.obj : inc\view.hpp
src\wat\debug\chars.obj : inc\config.hpp
src\wat\debug\chars.obj : ../imlib/include\supmorph.hpp
src\wat\debug\chars.obj : inc\morpher.hpp
src\wat\debug\chars.obj : ../imlib/include\input.hpp
src\wat\debug\chars.obj : inc\objects.hpp
src\wat\debug\chars.obj : inc\level.hpp
src\wat\debug\chars.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\chars.obj : ../imlib/include\image24.hpp
src\wat\debug\chars.obj : ../imlib/include\loader.hpp
src\wat\debug\chars.obj : ../imlib/include\mdlread.hpp
src\wat\debug\chars.obj : ../imlib/include\fonts.hpp
src\wat\debug\chars.obj : ../imlib/include\video.hpp
src\wat\debug\chars.obj : ../imlib/include\jwindow.hpp
src\wat\debug\chars.obj : inc\loader2.hpp
src\wat\debug\chars.obj : inc\game.hpp
src\wat\debug\chars.obj : ../imlib/include\mouse.hpp
src\wat\debug\chars.obj : ../imlib/include\sprite.hpp
src\wat\debug\chars.obj : ../imlib/include\keys.hpp
src\wat\debug\chars.obj : ../imlib/include\event.hpp
src\wat\debug\chars.obj : inc\ability.hpp
src\wat\debug\chars.obj : ../imlib/include\timing.hpp
src\wat\debug\chars.obj : inc\lisp_opt.hpp
src\wat\debug\chars.obj : inc\lisp.hpp
src\wat\debug\chars.obj : inc\particle.hpp
src\wat\debug\chars.obj : ../imlib/include\sound.hpp
src\wat\debug\chars.obj : inc\cache.hpp
src\wat\debug\chars.obj : ../imlib/include\filter.hpp
src\wat\debug\chars.obj : ../imlib/include\macs.hpp
src\wat\debug\chars.obj : ../imlib/include\timage.hpp
src\wat\debug\chars.obj : inc\points.hpp
src\wat\debug\chars.obj : inc\items.hpp
src\wat\debug\chars.obj : ../imlib/include\system.h
src\wat\debug\chars.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\chars.obj : ../imlib/include\specs.hpp
src\wat\debug\chars.obj : ../imlib/include\palette.hpp
src\wat\debug\chars.obj : ../imlib/include\linked.hpp
src\wat\debug\chars.obj : ../imlib/include\image.hpp
src\wat\debug\chars.obj : inc\seq.hpp
src\wat\debug\chars.obj : inc\chars.hpp
src\wat\debug\level.obj : src\level.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\level.c -fo=src\wat\debug\level.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\level.obj : inc\fakelib.hpp
src\wat\debug\level.obj : inc\stack.hpp
src\wat\debug\level.obj : inc\lisp_gc.hpp
src\wat\debug\level.obj : src/net/inc\sock.hpp
src\wat\debug\level.obj : src/net/inc\indian.hpp
src\wat\debug\level.obj : inc\netface.hpp
src\wat\debug\level.obj : inc\nfserver.hpp
src\wat\debug\level.obj : inc\cop.hpp
src\wat\debug\level.obj : inc\sbar.hpp
src\wat\debug\level.obj : inc\profile.hpp
src\wat\debug\level.obj : ../imlib/include\pcxread.hpp
src\wat\debug\level.obj : inc\demo.hpp
src\wat\debug\level.obj : inc\console.hpp
src\wat\debug\level.obj : inc\dev.hpp
src\wat\debug\level.obj : ../imlib/include\visobj.hpp
src\wat\debug\level.obj : ../imlib/include\status.hpp
src\wat\debug\level.obj : inc\clisp.hpp
src\wat\debug\level.obj : ../imlib/include\jrand.hpp
src\wat\debug\level.obj : ../imlib/include\dprint.hpp
src\wat\debug\level.obj : inc\intsect.hpp
src\wat\debug\level.obj : inc\director.hpp
src\wat\debug\level.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\level.obj : ../imlib/include\image24.hpp
src\wat\debug\level.obj : ../imlib/include\loader.hpp
src\wat\debug\level.obj : ../imlib/include\mdlread.hpp
src\wat\debug\level.obj : inc\game.hpp
src\wat\debug\level.obj : inc\id.hpp
src\wat\debug\level.obj : inc\extend.hpp
src\wat\debug\level.obj : inc\view.hpp
src\wat\debug\level.obj : inc\loader2.hpp
src\wat\debug\level.obj : ../imlib/include\supmorph.hpp
src\wat\debug\level.obj : inc\morpher.hpp
src\wat\debug\level.obj : inc\ability.hpp
src\wat\debug\level.obj : ../imlib/include\timing.hpp
src\wat\debug\level.obj : inc\lisp_opt.hpp
src\wat\debug\level.obj : inc\lisp.hpp
src\wat\debug\level.obj : inc\particle.hpp
src\wat\debug\level.obj : ../imlib/include\sound.hpp
src\wat\debug\level.obj : inc\cache.hpp
src\wat\debug\level.obj : inc\points.hpp
src\wat\debug\level.obj : inc\items.hpp
src\wat\debug\level.obj : inc\seq.hpp
src\wat\debug\level.obj : inc\chars.hpp
src\wat\debug\level.obj : ../imlib/include\timage.hpp
src\wat\debug\level.obj : ../imlib/include\fonts.hpp
src\wat\debug\level.obj : ../imlib/include\filter.hpp
src\wat\debug\level.obj : ../imlib/include\mouse.hpp
src\wat\debug\level.obj : ../imlib/include\sprite.hpp
src\wat\debug\level.obj : ../imlib/include\keys.hpp
src\wat\debug\level.obj : ../imlib/include\event.hpp
src\wat\debug\level.obj : ../imlib/include\video.hpp
src\wat\debug\level.obj : ../imlib/include\jwindow.hpp
src\wat\debug\level.obj : ../imlib/include\input.hpp
src\wat\debug\level.obj : inc\objects.hpp
src\wat\debug\level.obj : inc\level.hpp
src\wat\debug\level.obj : ../imlib/include\macs.hpp
src\wat\debug\level.obj : inc\crc.hpp
src\wat\debug\level.obj : inc\config.hpp
src\wat\debug\level.obj : ../imlib/include\system.h
src\wat\debug\level.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\level.obj : ../imlib/include\specs.hpp
src\wat\debug\level.obj : ../imlib/include\palette.hpp
src\wat\debug\level.obj : ../imlib/include\linked.hpp
src\wat\debug\level.obj : ../imlib/include\image.hpp
src\wat\debug\level.obj : inc\light.hpp
src\wat\debug\smallfnt.obj : src\smallfnt.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\smallfnt.c -fo=src\wat\debug\smallfnt.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\smallfnt.obj : src\smallfnt.c
src\wat\debug\automap.obj : src\automap.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\automap.c -fo=src\wat\debug\automap.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\automap.obj : inc\director.hpp
src\wat\debug\automap.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\automap.obj : ../imlib/include\image24.hpp
src\wat\debug\automap.obj : ../imlib/include\loader.hpp
src\wat\debug\automap.obj : ../imlib/include\mdlread.hpp
src\wat\debug\automap.obj : inc\game.hpp
src\wat\debug\automap.obj : inc\id.hpp
src\wat\debug\automap.obj : inc\extend.hpp
src\wat\debug\automap.obj : inc\crc.hpp
src\wat\debug\automap.obj : inc\light.hpp
src\wat\debug\automap.obj : inc\view.hpp
src\wat\debug\automap.obj : inc\loader2.hpp
src\wat\debug\automap.obj : inc\config.hpp
src\wat\debug\automap.obj : ../imlib/include\supmorph.hpp
src\wat\debug\automap.obj : inc\morpher.hpp
src\wat\debug\automap.obj : inc\ability.hpp
src\wat\debug\automap.obj : ../imlib/include\timing.hpp
src\wat\debug\automap.obj : inc\lisp_opt.hpp
src\wat\debug\automap.obj : inc\lisp.hpp
src\wat\debug\automap.obj : inc\particle.hpp
src\wat\debug\automap.obj : ../imlib/include\sound.hpp
src\wat\debug\automap.obj : inc\cache.hpp
src\wat\debug\automap.obj : inc\points.hpp
src\wat\debug\automap.obj : inc\items.hpp
src\wat\debug\automap.obj : inc\seq.hpp
src\wat\debug\automap.obj : inc\chars.hpp
src\wat\debug\automap.obj : ../imlib/include\input.hpp
src\wat\debug\automap.obj : inc\objects.hpp
src\wat\debug\automap.obj : inc\level.hpp
src\wat\debug\automap.obj : ../imlib/include\timage.hpp
src\wat\debug\automap.obj : ../imlib/include\fonts.hpp
src\wat\debug\automap.obj : ../imlib/include\filter.hpp
src\wat\debug\automap.obj : ../imlib/include\mouse.hpp
src\wat\debug\automap.obj : ../imlib/include\macs.hpp
src\wat\debug\automap.obj : ../imlib/include\sprite.hpp
src\wat\debug\automap.obj : ../imlib/include\keys.hpp
src\wat\debug\automap.obj : ../imlib/include\event.hpp
src\wat\debug\automap.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\automap.obj : ../imlib/include\specs.hpp
src\wat\debug\automap.obj : ../imlib/include\palette.hpp
src\wat\debug\automap.obj : ../imlib/include\linked.hpp
src\wat\debug\automap.obj : ../imlib/include\image.hpp
src\wat\debug\automap.obj : ../imlib/include\system.h
src\wat\debug\automap.obj : ../imlib/include\video.hpp
src\wat\debug\automap.obj : ../imlib/include\jwindow.hpp
src\wat\debug\automap.obj : inc\automap.hpp
src\wat\debug\help.obj : src\help.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\help.c -fo=src\wat\debug\help.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\help.obj : inc\netcfg.hpp
src\wat\debug\help.obj : inc\director.hpp
src\wat\debug\help.obj : inc\id.hpp
src\wat\debug\help.obj : inc\extend.hpp
src\wat\debug\help.obj : inc\crc.hpp
src\wat\debug\help.obj : inc\light.hpp
src\wat\debug\help.obj : inc\view.hpp
src\wat\debug\help.obj : inc\config.hpp
src\wat\debug\help.obj : ../imlib/include\supmorph.hpp
src\wat\debug\help.obj : inc\morpher.hpp
src\wat\debug\help.obj : inc\ability.hpp
src\wat\debug\help.obj : inc\particle.hpp
src\wat\debug\help.obj : inc\cache.hpp
src\wat\debug\help.obj : inc\seq.hpp
src\wat\debug\help.obj : inc\chars.hpp
src\wat\debug\help.obj : ../imlib/include\input.hpp
src\wat\debug\help.obj : inc\objects.hpp
src\wat\debug\help.obj : inc\level.hpp
src\wat\debug\help.obj : inc\points.hpp
src\wat\debug\help.obj : inc\items.hpp
src\wat\debug\help.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\help.obj : ../imlib/include\image24.hpp
src\wat\debug\help.obj : ../imlib/include\loader.hpp
src\wat\debug\help.obj : ../imlib/include\mdlread.hpp
src\wat\debug\help.obj : ../imlib/include\sound.hpp
src\wat\debug\help.obj : ../imlib/include\timing.hpp
src\wat\debug\help.obj : inc\lisp_opt.hpp
src\wat\debug\help.obj : inc\lisp.hpp
src\wat\debug\help.obj : ../imlib/include\timage.hpp
src\wat\debug\help.obj : ../imlib/include\fonts.hpp
src\wat\debug\help.obj : ../imlib/include\filter.hpp
src\wat\debug\help.obj : ../imlib/include\video.hpp
src\wat\debug\help.obj : ../imlib/include\jwindow.hpp
src\wat\debug\help.obj : inc\loader2.hpp
src\wat\debug\help.obj : inc\game.hpp
src\wat\debug\help.obj : ../imlib/include\mouse.hpp
src\wat\debug\help.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\help.obj : ../imlib/include\specs.hpp
src\wat\debug\help.obj : ../imlib/include\palette.hpp
src\wat\debug\help.obj : ../imlib/include\linked.hpp
src\wat\debug\help.obj : ../imlib/include\image.hpp
src\wat\debug\help.obj : ../imlib/include\system.h
src\wat\debug\help.obj : ../imlib/include\macs.hpp
src\wat\debug\help.obj : ../imlib/include\sprite.hpp
src\wat\debug\help.obj : ../imlib/include\keys.hpp
src\wat\debug\help.obj : ../imlib/include\event.hpp
src\wat\debug\help.obj : inc\help.hpp
src\wat\debug\intsect.obj : src\intsect.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\intsect.c -fo=src\wat\debug\intsect.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\intsect.obj : ../imlib/include\system.h
src\wat\debug\intsect.obj : ../imlib/include\macs.hpp
src\wat\debug\loader2.obj : src\loader2.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\loader2.c -fo=src\wat\debug\loader2.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\loader2.obj : inc\specache.hpp
src\wat\debug\loader2.obj : src/net/inc\sock.hpp
src\wat\debug\loader2.obj : src/net/inc\indian.hpp
src\wat\debug\loader2.obj : inc\netface.hpp
src\wat\debug\loader2.obj : inc\nfserver.hpp
src\wat\debug\loader2.obj : inc\loadgame.hpp
src\wat\debug\loader2.obj : inc\help.hpp
src\wat\debug\loader2.obj : inc\sbar.hpp
src\wat\debug\loader2.obj : inc\compiled.hpp
src\wat\debug\loader2.obj : inc\clisp.hpp
src\wat\debug\loader2.obj : ../imlib/include\dprint.hpp
src\wat\debug\loader2.obj : ../imlib/include\morph.hpp
src\wat\debug\loader2.obj : inc\console.hpp
src\wat\debug\loader2.obj : inc\director.hpp
src\wat\debug\loader2.obj : inc\id.hpp
src\wat\debug\loader2.obj : inc\extend.hpp
src\wat\debug\loader2.obj : inc\crc.hpp
src\wat\debug\loader2.obj : inc\light.hpp
src\wat\debug\loader2.obj : inc\view.hpp
src\wat\debug\loader2.obj : inc\config.hpp
src\wat\debug\loader2.obj : ../imlib/include\supmorph.hpp
src\wat\debug\loader2.obj : inc\morpher.hpp
src\wat\debug\loader2.obj : ../imlib/include\input.hpp
src\wat\debug\loader2.obj : inc\objects.hpp
src\wat\debug\loader2.obj : inc\level.hpp
src\wat\debug\loader2.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\loader2.obj : ../imlib/include\image24.hpp
src\wat\debug\loader2.obj : ../imlib/include\loader.hpp
src\wat\debug\loader2.obj : ../imlib/include\mdlread.hpp
src\wat\debug\loader2.obj : inc\game.hpp
src\wat\debug\loader2.obj : inc\dev.hpp
src\wat\debug\loader2.obj : inc\menu.hpp
src\wat\debug\loader2.obj : ../imlib/include\jrand.hpp
src\wat\debug\loader2.obj : inc\parse.hpp
src\wat\debug\loader2.obj : inc\ability.hpp
src\wat\debug\loader2.obj : inc\particle.hpp
src\wat\debug\loader2.obj : inc\cache.hpp
src\wat\debug\loader2.obj : inc\points.hpp
src\wat\debug\loader2.obj : inc\items.hpp
src\wat\debug\loader2.obj : inc\seq.hpp
src\wat\debug\loader2.obj : inc\chars.hpp
src\wat\debug\loader2.obj : ../imlib/include\sound.hpp
src\wat\debug\loader2.obj : inc\lisp_opt.hpp
src\wat\debug\loader2.obj : inc\lisp.hpp
src\wat\debug\loader2.obj : ../imlib/include\timage.hpp
src\wat\debug\loader2.obj : ../imlib/include\fonts.hpp
src\wat\debug\loader2.obj : ../imlib/include\filter.hpp
src\wat\debug\loader2.obj : ../imlib/include\mouse.hpp
src\wat\debug\loader2.obj : ../imlib/include\macs.hpp
src\wat\debug\loader2.obj : ../imlib/include\sprite.hpp
src\wat\debug\loader2.obj : ../imlib/include\keys.hpp
src\wat\debug\loader2.obj : ../imlib/include\event.hpp
src\wat\debug\loader2.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\loader2.obj : ../imlib/include\specs.hpp
src\wat\debug\loader2.obj : ../imlib/include\palette.hpp
src\wat\debug\loader2.obj : ../imlib/include\linked.hpp
src\wat\debug\loader2.obj : ../imlib/include\image.hpp
src\wat\debug\loader2.obj : ../imlib/include\system.h
src\wat\debug\loader2.obj : ../imlib/include\video.hpp
src\wat\debug\loader2.obj : ../imlib/include\jwindow.hpp
src\wat\debug\loader2.obj : inc\loader2.hpp
src\wat\debug\loader2.obj : ../imlib/include\timing.hpp
src\wat\debug\seq.obj : src\seq.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\seq.c -fo=src\wat\debug\seq.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\seq.obj : inc\parse.hpp
src\wat\debug\seq.obj : ../imlib/include\timing.hpp
src\wat\debug\seq.obj : inc\lisp_opt.hpp
src\wat\debug\seq.obj : inc\lisp.hpp
src\wat\debug\seq.obj : inc\particle.hpp
src\wat\debug\seq.obj : ../imlib/include\sound.hpp
src\wat\debug\seq.obj : inc\cache.hpp
src\wat\debug\seq.obj : ../imlib/include\filter.hpp
src\wat\debug\seq.obj : ../imlib/include\macs.hpp
src\wat\debug\seq.obj : ../imlib/include\timage.hpp
src\wat\debug\seq.obj : inc\points.hpp
src\wat\debug\seq.obj : inc\items.hpp
src\wat\debug\seq.obj : ../imlib/include\system.h
src\wat\debug\seq.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\seq.obj : ../imlib/include\specs.hpp
src\wat\debug\seq.obj : ../imlib/include\palette.hpp
src\wat\debug\seq.obj : ../imlib/include\linked.hpp
src\wat\debug\seq.obj : ../imlib/include\image.hpp
src\wat\debug\seq.obj : inc\seq.hpp
src\wat\debug\points.obj : src\points.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\points.c -fo=src\wat\debug\points.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\points.obj : inc\console.hpp
src\wat\debug\points.obj : inc\director.hpp
src\wat\debug\points.obj : inc\id.hpp
src\wat\debug\points.obj : inc\extend.hpp
src\wat\debug\points.obj : inc\crc.hpp
src\wat\debug\points.obj : inc\light.hpp
src\wat\debug\points.obj : inc\view.hpp
src\wat\debug\points.obj : inc\config.hpp
src\wat\debug\points.obj : ../imlib/include\supmorph.hpp
src\wat\debug\points.obj : inc\morpher.hpp
src\wat\debug\points.obj : inc\ability.hpp
src\wat\debug\points.obj : inc\particle.hpp
src\wat\debug\points.obj : inc\cache.hpp
src\wat\debug\points.obj : inc\seq.hpp
src\wat\debug\points.obj : inc\chars.hpp
src\wat\debug\points.obj : ../imlib/include\input.hpp
src\wat\debug\points.obj : inc\objects.hpp
src\wat\debug\points.obj : inc\level.hpp
src\wat\debug\points.obj : inc\items.hpp
src\wat\debug\points.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\points.obj : ../imlib/include\image24.hpp
src\wat\debug\points.obj : ../imlib/include\loader.hpp
src\wat\debug\points.obj : ../imlib/include\mdlread.hpp
src\wat\debug\points.obj : ../imlib/include\sound.hpp
src\wat\debug\points.obj : ../imlib/include\timing.hpp
src\wat\debug\points.obj : inc\lisp_opt.hpp
src\wat\debug\points.obj : inc\lisp.hpp
src\wat\debug\points.obj : ../imlib/include\timage.hpp
src\wat\debug\points.obj : ../imlib/include\fonts.hpp
src\wat\debug\points.obj : ../imlib/include\filter.hpp
src\wat\debug\points.obj : ../imlib/include\mouse.hpp
src\wat\debug\points.obj : ../imlib/include\macs.hpp
src\wat\debug\points.obj : ../imlib/include\sprite.hpp
src\wat\debug\points.obj : ../imlib/include\keys.hpp
src\wat\debug\points.obj : ../imlib/include\event.hpp
src\wat\debug\points.obj : ../imlib/include\palette.hpp
src\wat\debug\points.obj : ../imlib/include\image.hpp
src\wat\debug\points.obj : ../imlib/include\video.hpp
src\wat\debug\points.obj : ../imlib/include\jwindow.hpp
src\wat\debug\points.obj : inc\loader2.hpp
src\wat\debug\points.obj : inc\game.hpp
src\wat\debug\points.obj : inc\dev.hpp
src\wat\debug\points.obj : ../imlib/include\system.h
src\wat\debug\points.obj : ../imlib/include\linked.hpp
src\wat\debug\points.obj : ../imlib/include\specs.hpp
src\wat\debug\points.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\points.obj : inc\points.hpp
src\wat\debug\fnt6x13.obj : src\fnt6x13.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\fnt6x13.c -fo=src\wat\debug\fnt6x13.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\fnt6x13.obj : src\fnt6x13.c
src\wat\debug\morpher.obj : src\morpher.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\morpher.c -fo=src\wat\debug\morpher.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\morpher.obj : inc\director.hpp
src\wat\debug\morpher.obj : inc\id.hpp
src\wat\debug\morpher.obj : inc\extend.hpp
src\wat\debug\morpher.obj : inc\crc.hpp
src\wat\debug\morpher.obj : inc\light.hpp
src\wat\debug\morpher.obj : inc\view.hpp
src\wat\debug\morpher.obj : inc\ability.hpp
src\wat\debug\morpher.obj : inc\particle.hpp
src\wat\debug\morpher.obj : inc\cache.hpp
src\wat\debug\morpher.obj : inc\seq.hpp
src\wat\debug\morpher.obj : inc\chars.hpp
src\wat\debug\morpher.obj : ../imlib/include\input.hpp
src\wat\debug\morpher.obj : inc\objects.hpp
src\wat\debug\morpher.obj : inc\level.hpp
src\wat\debug\morpher.obj : inc\points.hpp
src\wat\debug\morpher.obj : inc\items.hpp
src\wat\debug\morpher.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\morpher.obj : ../imlib/include\image24.hpp
src\wat\debug\morpher.obj : ../imlib/include\loader.hpp
src\wat\debug\morpher.obj : ../imlib/include\mdlread.hpp
src\wat\debug\morpher.obj : ../imlib/include\sound.hpp
src\wat\debug\morpher.obj : ../imlib/include\timing.hpp
src\wat\debug\morpher.obj : inc\lisp_opt.hpp
src\wat\debug\morpher.obj : inc\lisp.hpp
src\wat\debug\morpher.obj : ../imlib/include\fonts.hpp
src\wat\debug\morpher.obj : ../imlib/include\mouse.hpp
src\wat\debug\morpher.obj : ../imlib/include\sprite.hpp
src\wat\debug\morpher.obj : ../imlib/include\keys.hpp
src\wat\debug\morpher.obj : ../imlib/include\event.hpp
src\wat\debug\morpher.obj : ../imlib/include\video.hpp
src\wat\debug\morpher.obj : ../imlib/include\jwindow.hpp
src\wat\debug\morpher.obj : inc\loader2.hpp
src\wat\debug\morpher.obj : inc\game.hpp
src\wat\debug\morpher.obj : inc\config.hpp
src\wat\debug\morpher.obj : ../imlib/include\filter.hpp
src\wat\debug\morpher.obj : ../imlib/include\macs.hpp
src\wat\debug\morpher.obj : ../imlib/include\system.h
src\wat\debug\morpher.obj : ../imlib/include\specs.hpp
src\wat\debug\morpher.obj : ../imlib/include\palette.hpp
src\wat\debug\morpher.obj : ../imlib/include\linked.hpp
src\wat\debug\morpher.obj : ../imlib/include\image.hpp
src\wat\debug\morpher.obj : ../imlib/include\timage.hpp
src\wat\debug\morpher.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\morpher.obj : ../imlib/include\supmorph.hpp
src\wat\debug\morpher.obj : inc\morpher.hpp
src\wat\debug\menu.obj : src\menu.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\menu.c -fo=src\wat\debug\menu.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\menu.obj : src/net/inc\sock.hpp
src\wat\debug\menu.obj : inc\netcfg.hpp
src\wat\debug\menu.obj : ../imlib/include\scroller.hpp
src\wat\debug\menu.obj : inc\loadgame.hpp
src\wat\debug\menu.obj : inc\demo.hpp
src\wat\debug\menu.obj : ../imlib/include\dprint.hpp
src\wat\debug\menu.obj : inc\gamma.hpp
src\wat\debug\menu.obj : inc\clisp.hpp
src\wat\debug\menu.obj : inc\console.hpp
src\wat\debug\menu.obj : inc\dev.hpp
src\wat\debug\menu.obj : inc\property.hpp
src\wat\debug\menu.obj : inc\gui.hpp
src\wat\debug\menu.obj : ../imlib/include\pmenu.hpp
src\wat\debug\menu.obj : inc\director.hpp
src\wat\debug\menu.obj : inc\id.hpp
src\wat\debug\menu.obj : inc\extend.hpp
src\wat\debug\menu.obj : inc\crc.hpp
src\wat\debug\menu.obj : inc\light.hpp
src\wat\debug\menu.obj : inc\view.hpp
src\wat\debug\menu.obj : inc\config.hpp
src\wat\debug\menu.obj : ../imlib/include\supmorph.hpp
src\wat\debug\menu.obj : inc\morpher.hpp
src\wat\debug\menu.obj : inc\ability.hpp
src\wat\debug\menu.obj : inc\particle.hpp
src\wat\debug\menu.obj : inc\cache.hpp
src\wat\debug\menu.obj : inc\seq.hpp
src\wat\debug\menu.obj : inc\chars.hpp
src\wat\debug\menu.obj : ../imlib/include\input.hpp
src\wat\debug\menu.obj : inc\objects.hpp
src\wat\debug\menu.obj : inc\level.hpp
src\wat\debug\menu.obj : inc\points.hpp
src\wat\debug\menu.obj : inc\items.hpp
src\wat\debug\menu.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\menu.obj : ../imlib/include\image24.hpp
src\wat\debug\menu.obj : ../imlib/include\loader.hpp
src\wat\debug\menu.obj : ../imlib/include\mdlread.hpp
src\wat\debug\menu.obj : ../imlib/include\sound.hpp
src\wat\debug\menu.obj : ../imlib/include\mouse.hpp
src\wat\debug\menu.obj : ../imlib/include\sprite.hpp
src\wat\debug\menu.obj : ../imlib/include\keys.hpp
src\wat\debug\menu.obj : ../imlib/include\event.hpp
src\wat\debug\menu.obj : ../imlib/include\video.hpp
src\wat\debug\menu.obj : ../imlib/include\jwindow.hpp
src\wat\debug\menu.obj : inc\loader2.hpp
src\wat\debug\menu.obj : inc\game.hpp
src\wat\debug\menu.obj : ../imlib/include\timing.hpp
src\wat\debug\menu.obj : inc\lisp_opt.hpp
src\wat\debug\menu.obj : inc\lisp.hpp
src\wat\debug\menu.obj : ../imlib/include\filter.hpp
src\wat\debug\menu.obj : ../imlib/include\macs.hpp
src\wat\debug\menu.obj : ../imlib/include\timage.hpp
src\wat\debug\menu.obj : ../imlib/include\system.h
src\wat\debug\menu.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\menu.obj : ../imlib/include\specs.hpp
src\wat\debug\menu.obj : ../imlib/include\palette.hpp
src\wat\debug\menu.obj : ../imlib/include\linked.hpp
src\wat\debug\menu.obj : ../imlib/include\image.hpp
src\wat\debug\menu.obj : ../imlib/include\fonts.hpp
src\wat\debug\menu.obj : inc\menu.hpp
src\wat\debug\director.obj : src\director.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\director.c -fo=src\wat\debug\director.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\director.obj : inc\id.hpp
src\wat\debug\director.obj : inc\extend.hpp
src\wat\debug\director.obj : inc\crc.hpp
src\wat\debug\director.obj : inc\light.hpp
src\wat\debug\director.obj : inc\view.hpp
src\wat\debug\director.obj : inc\config.hpp
src\wat\debug\director.obj : ../imlib/include\supmorph.hpp
src\wat\debug\director.obj : inc\morpher.hpp
src\wat\debug\director.obj : inc\ability.hpp
src\wat\debug\director.obj : inc\particle.hpp
src\wat\debug\director.obj : inc\cache.hpp
src\wat\debug\director.obj : inc\seq.hpp
src\wat\debug\director.obj : inc\chars.hpp
src\wat\debug\director.obj : ../imlib/include\input.hpp
src\wat\debug\director.obj : inc\objects.hpp
src\wat\debug\director.obj : inc\level.hpp
src\wat\debug\director.obj : inc\points.hpp
src\wat\debug\director.obj : inc\items.hpp
src\wat\debug\director.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\director.obj : ../imlib/include\image24.hpp
src\wat\debug\director.obj : ../imlib/include\loader.hpp
src\wat\debug\director.obj : ../imlib/include\mdlread.hpp
src\wat\debug\director.obj : ../imlib/include\sound.hpp
src\wat\debug\director.obj : inc\lisp_opt.hpp
src\wat\debug\director.obj : inc\lisp.hpp
src\wat\debug\director.obj : ../imlib/include\timage.hpp
src\wat\debug\director.obj : ../imlib/include\fonts.hpp
src\wat\debug\director.obj : ../imlib/include\filter.hpp
src\wat\debug\director.obj : ../imlib/include\mouse.hpp
src\wat\debug\director.obj : ../imlib/include\macs.hpp
src\wat\debug\director.obj : ../imlib/include\sprite.hpp
src\wat\debug\director.obj : ../imlib/include\keys.hpp
src\wat\debug\director.obj : ../imlib/include\event.hpp
src\wat\debug\director.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\director.obj : ../imlib/include\specs.hpp
src\wat\debug\director.obj : ../imlib/include\palette.hpp
src\wat\debug\director.obj : ../imlib/include\linked.hpp
src\wat\debug\director.obj : ../imlib/include\image.hpp
src\wat\debug\director.obj : ../imlib/include\system.h
src\wat\debug\director.obj : ../imlib/include\video.hpp
src\wat\debug\director.obj : ../imlib/include\jwindow.hpp
src\wat\debug\director.obj : inc\loader2.hpp
src\wat\debug\director.obj : inc\game.hpp
src\wat\debug\director.obj : ../imlib/include\timing.hpp
src\wat\debug\director.obj : inc\director.hpp
src\wat\debug\view.obj : src\view.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\view.c -fo=src\wat\debug\view.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\view.obj : inc\chat.hpp
src\wat\debug\view.obj : src/net/inc\sock.hpp
src\wat\debug\view.obj : src/net/inc\indian.hpp
src\wat\debug\view.obj : inc\netface.hpp
src\wat\debug\view.obj : inc\nfserver.hpp
src\wat\debug\view.obj : inc\sbar.hpp
src\wat\debug\view.obj : inc\demo.hpp
src\wat\debug\view.obj : inc\clisp.hpp
src\wat\debug\view.obj : inc\transp.hpp
src\wat\debug\view.obj : ../imlib/include\dprint.hpp
src\wat\debug\view.obj : ../imlib/include\jrand.hpp
src\wat\debug\view.obj : inc\console.hpp
src\wat\debug\view.obj : inc\director.hpp
src\wat\debug\view.obj : inc\extend.hpp
src\wat\debug\view.obj : ../imlib/include\supmorph.hpp
src\wat\debug\view.obj : inc\morpher.hpp
src\wat\debug\view.obj : inc\ability.hpp
src\wat\debug\view.obj : inc\particle.hpp
src\wat\debug\view.obj : inc\cache.hpp
src\wat\debug\view.obj : inc\seq.hpp
src\wat\debug\view.obj : inc\chars.hpp
src\wat\debug\view.obj : inc\objects.hpp
src\wat\debug\view.obj : inc\level.hpp
src\wat\debug\view.obj : inc\points.hpp
src\wat\debug\view.obj : inc\items.hpp
src\wat\debug\view.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\view.obj : ../imlib/include\image24.hpp
src\wat\debug\view.obj : ../imlib/include\loader.hpp
src\wat\debug\view.obj : ../imlib/include\mdlread.hpp
src\wat\debug\view.obj : ../imlib/include\sound.hpp
src\wat\debug\view.obj : inc\loader2.hpp
src\wat\debug\view.obj : inc\game.hpp
src\wat\debug\view.obj : inc\dev.hpp
src\wat\debug\view.obj : inc\id.hpp
src\wat\debug\view.obj : ../imlib/include\input.hpp
src\wat\debug\view.obj : ../imlib/include\scroller.hpp
src\wat\debug\view.obj : ../imlib/include\timing.hpp
src\wat\debug\view.obj : inc\lisp_opt.hpp
src\wat\debug\view.obj : inc\lisp.hpp
src\wat\debug\view.obj : ../imlib/include\timage.hpp
src\wat\debug\view.obj : ../imlib/include\fonts.hpp
src\wat\debug\view.obj : ../imlib/include\filter.hpp
src\wat\debug\view.obj : ../imlib/include\mouse.hpp
src\wat\debug\view.obj : ../imlib/include\sprite.hpp
src\wat\debug\view.obj : ../imlib/include\keys.hpp
src\wat\debug\view.obj : ../imlib/include\event.hpp
src\wat\debug\view.obj : ../imlib/include\video.hpp
src\wat\debug\view.obj : ../imlib/include\jwindow.hpp
src\wat\debug\view.obj : ../imlib/include\macs.hpp
src\wat\debug\view.obj : inc\crc.hpp
src\wat\debug\view.obj : inc\config.hpp
src\wat\debug\view.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\view.obj : ../imlib/include\specs.hpp
src\wat\debug\view.obj : ../imlib/include\palette.hpp
src\wat\debug\view.obj : ../imlib/include\linked.hpp
src\wat\debug\view.obj : ../imlib/include\image.hpp
src\wat\debug\view.obj : inc\light.hpp
src\wat\debug\view.obj : inc\view.hpp
src\wat\debug\view.obj : ../imlib/include\system.h
src\wat\debug\config.obj : src\config.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\config.c -fo=src\wat\debug\config.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\config.obj : inc\director.hpp
src\wat\debug\config.obj : inc\id.hpp
src\wat\debug\config.obj : inc\extend.hpp
src\wat\debug\config.obj : inc\crc.hpp
src\wat\debug\config.obj : inc\light.hpp
src\wat\debug\config.obj : inc\view.hpp
src\wat\debug\config.obj : ../imlib/include\supmorph.hpp
src\wat\debug\config.obj : inc\morpher.hpp
src\wat\debug\config.obj : inc\ability.hpp
src\wat\debug\config.obj : inc\particle.hpp
src\wat\debug\config.obj : inc\cache.hpp
src\wat\debug\config.obj : inc\seq.hpp
src\wat\debug\config.obj : inc\chars.hpp
src\wat\debug\config.obj : ../imlib/include\input.hpp
src\wat\debug\config.obj : inc\objects.hpp
src\wat\debug\config.obj : inc\level.hpp
src\wat\debug\config.obj : inc\points.hpp
src\wat\debug\config.obj : inc\items.hpp
src\wat\debug\config.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\config.obj : ../imlib/include\image24.hpp
src\wat\debug\config.obj : ../imlib/include\loader.hpp
src\wat\debug\config.obj : ../imlib/include\mdlread.hpp
src\wat\debug\config.obj : ../imlib/include\sound.hpp
src\wat\debug\config.obj : inc\loader2.hpp
src\wat\debug\config.obj : inc\game.hpp
src\wat\debug\config.obj : inc\config.hpp
src\wat\debug\config.obj : ../imlib/include\timage.hpp
src\wat\debug\config.obj : ../imlib/include\fonts.hpp
src\wat\debug\config.obj : ../imlib/include\filter.hpp
src\wat\debug\config.obj : ../imlib/include\mouse.hpp
src\wat\debug\config.obj : ../imlib/include\macs.hpp
src\wat\debug\config.obj : ../imlib/include\sprite.hpp
src\wat\debug\config.obj : ../imlib/include\event.hpp
src\wat\debug\config.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\config.obj : ../imlib/include\specs.hpp
src\wat\debug\config.obj : ../imlib/include\palette.hpp
src\wat\debug\config.obj : ../imlib/include\linked.hpp
src\wat\debug\config.obj : ../imlib/include\image.hpp
src\wat\debug\config.obj : ../imlib/include\system.h
src\wat\debug\config.obj : ../imlib/include\video.hpp
src\wat\debug\config.obj : ../imlib/include\jwindow.hpp
src\wat\debug\config.obj : ../imlib/include\joy.hpp
src\wat\debug\config.obj : ../imlib/include\timing.hpp
src\wat\debug\config.obj : inc\lisp_opt.hpp
src\wat\debug\config.obj : inc\lisp.hpp
src\wat\debug\config.obj : ../imlib/include\keys.hpp
src\wat\debug\game.obj : src\game.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\game.c -fo=src\wat\debug\game.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\game.obj : src/net/unix\tcpip.hpp
src\wat\debug\game.obj : inc\netcfg.hpp
src\wat\debug\game.obj : inc\chat.hpp
src\wat\debug\game.obj : ../imlib/include\pmenu.hpp
src\wat\debug\game.obj : inc\compiled.hpp
src\wat\debug\game.obj : inc\profile.hpp
src\wat\debug\game.obj : inc\sbar.hpp
src\wat\debug\game.obj : inc\demo.hpp
src\wat\debug\game.obj : inc\fakelib.hpp
src\wat\debug\game.obj : inc\stack.hpp
src\wat\debug\game.obj : inc\lisp_gc.hpp
src\wat\debug\game.obj : inc\gamma.hpp
src\wat\debug\game.obj : inc\menu.hpp
src\wat\debug\game.obj : ../imlib/include\visobj.hpp
src\wat\debug\game.obj : ../imlib/include\status.hpp
src\wat\debug\game.obj : ../imlib/include\guistat.hpp
src\wat\debug\game.obj : inc\clisp.hpp
src\wat\debug\game.obj : inc\transp.hpp
src\wat\debug\game.obj : src/net/inc\sock.hpp
src\wat\debug\game.obj : src/net/inc\indian.hpp
src\wat\debug\game.obj : inc\netface.hpp
src\wat\debug\game.obj : inc\nfserver.hpp
src\wat\debug\game.obj : ../imlib/include\dprint.hpp
src\wat\debug\game.obj : ../imlib/include\scroller.hpp
src\wat\debug\game.obj : ../imlib/include\jrand.hpp
src\wat\debug\game.obj : inc\help.hpp
src\wat\debug\game.obj : inc\automap.hpp
src\wat\debug\game.obj : ../imlib/include\joy.hpp
src\wat\debug\game.obj : inc\console.hpp
src\wat\debug\game.obj : inc\dev.hpp
src\wat\debug\game.obj : inc\director.hpp
src\wat\debug\game.obj : inc\id.hpp
src\wat\debug\game.obj : inc\extend.hpp
src\wat\debug\game.obj : inc\crc.hpp
src\wat\debug\game.obj : inc\light.hpp
src\wat\debug\game.obj : inc\view.hpp
src\wat\debug\game.obj : inc\config.hpp
src\wat\debug\game.obj : ../imlib/include\supmorph.hpp
src\wat\debug\game.obj : inc\morpher.hpp
src\wat\debug\game.obj : inc\ability.hpp
src\wat\debug\game.obj : inc\particle.hpp
src\wat\debug\game.obj : inc\cache.hpp
src\wat\debug\game.obj : inc\seq.hpp
src\wat\debug\game.obj : inc\chars.hpp
src\wat\debug\game.obj : ../imlib/include\input.hpp
src\wat\debug\game.obj : inc\objects.hpp
src\wat\debug\game.obj : inc\level.hpp
src\wat\debug\game.obj : inc\points.hpp
src\wat\debug\game.obj : inc\items.hpp
src\wat\debug\game.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\game.obj : ../imlib/include\image24.hpp
src\wat\debug\game.obj : ../imlib/include\loader.hpp
src\wat\debug\game.obj : ../imlib/include\mdlread.hpp
src\wat\debug\game.obj : ../imlib/include\sound.hpp
src\wat\debug\game.obj : ../imlib/include\timing.hpp
src\wat\debug\game.obj : inc\lisp_opt.hpp
src\wat\debug\game.obj : inc\lisp.hpp
src\wat\debug\game.obj : ../imlib/include\timage.hpp
src\wat\debug\game.obj : ../imlib/include\fonts.hpp
src\wat\debug\game.obj : ../imlib/include\filter.hpp
src\wat\debug\game.obj : ../imlib/include\mouse.hpp
src\wat\debug\game.obj : ../imlib/include\macs.hpp
src\wat\debug\game.obj : ../imlib/include\sprite.hpp
src\wat\debug\game.obj : ../imlib/include\keys.hpp
src\wat\debug\game.obj : ../imlib/include\event.hpp
src\wat\debug\game.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\game.obj : ../imlib/include\specs.hpp
src\wat\debug\game.obj : ../imlib/include\palette.hpp
src\wat\debug\game.obj : ../imlib/include\linked.hpp
src\wat\debug\game.obj : ../imlib/include\image.hpp
src\wat\debug\game.obj : ../imlib/include\system.h
src\wat\debug\game.obj : ../imlib/include\video.hpp
src\wat\debug\game.obj : ../imlib/include\jwindow.hpp
src\wat\debug\game.obj : inc\loader2.hpp
src\wat\debug\game.obj : inc\game.hpp
src\wat\debug\light.obj : src\light.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\light.c -fo=src\wat\debug\light.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\light.obj : inc\console.hpp
src\wat\debug\light.obj : inc\director.hpp
src\wat\debug\light.obj : inc\id.hpp
src\wat\debug\light.obj : inc\extend.hpp
src\wat\debug\light.obj : inc\view.hpp
src\wat\debug\light.obj : ../imlib/include\supmorph.hpp
src\wat\debug\light.obj : inc\morpher.hpp
src\wat\debug\light.obj : inc\ability.hpp
src\wat\debug\light.obj : inc\particle.hpp
src\wat\debug\light.obj : inc\cache.hpp
src\wat\debug\light.obj : inc\seq.hpp
src\wat\debug\light.obj : inc\chars.hpp
src\wat\debug\light.obj : ../imlib/include\input.hpp
src\wat\debug\light.obj : inc\objects.hpp
src\wat\debug\light.obj : inc\level.hpp
src\wat\debug\light.obj : inc\points.hpp
src\wat\debug\light.obj : inc\items.hpp
src\wat\debug\light.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\light.obj : ../imlib/include\image24.hpp
src\wat\debug\light.obj : ../imlib/include\loader.hpp
src\wat\debug\light.obj : ../imlib/include\mdlread.hpp
src\wat\debug\light.obj : ../imlib/include\sound.hpp
src\wat\debug\light.obj : inc\lisp_opt.hpp
src\wat\debug\light.obj : inc\lisp.hpp
src\wat\debug\light.obj : inc\loader2.hpp
src\wat\debug\light.obj : inc\game.hpp
src\wat\debug\light.obj : inc\dev.hpp
src\wat\debug\light.obj : ../imlib/include\timage.hpp
src\wat\debug\light.obj : ../imlib/include\fonts.hpp
src\wat\debug\light.obj : ../imlib/include\mouse.hpp
src\wat\debug\light.obj : ../imlib/include\sprite.hpp
src\wat\debug\light.obj : ../imlib/include\keys.hpp
src\wat\debug\light.obj : ../imlib/include\event.hpp
src\wat\debug\light.obj : ../imlib/include\jwindow.hpp
src\wat\debug\light.obj : ../imlib/include\visobj.hpp
src\wat\debug\light.obj : ../imlib/include\status.hpp
src\wat\debug\light.obj : ../imlib/include\filter.hpp
src\wat\debug\light.obj : ../imlib/include\dprint.hpp
src\wat\debug\light.obj : ../imlib/include\timing.hpp
src\wat\debug\light.obj : ../imlib/include\video.hpp
src\wat\debug\light.obj : ../imlib/include\macs.hpp
src\wat\debug\light.obj : inc\crc.hpp
src\wat\debug\light.obj : inc\config.hpp
src\wat\debug\light.obj : ../imlib/include\system.h
src\wat\debug\light.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\light.obj : ../imlib/include\specs.hpp
src\wat\debug\light.obj : ../imlib/include\palette.hpp
src\wat\debug\light.obj : ../imlib/include\linked.hpp
src\wat\debug\light.obj : ../imlib/include\image.hpp
src\wat\debug\light.obj : inc\light.hpp
src\wat\debug\devsel.obj : src\devsel.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\devsel.c -fo=src\wat\debug\devsel.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\devsel.obj : inc\director.hpp
src\wat\debug\devsel.obj : inc\id.hpp
src\wat\debug\devsel.obj : inc\extend.hpp
src\wat\debug\devsel.obj : inc\crc.hpp
src\wat\debug\devsel.obj : inc\light.hpp
src\wat\debug\devsel.obj : inc\view.hpp
src\wat\debug\devsel.obj : inc\config.hpp
src\wat\debug\devsel.obj : ../imlib/include\supmorph.hpp
src\wat\debug\devsel.obj : inc\morpher.hpp
src\wat\debug\devsel.obj : inc\ability.hpp
src\wat\debug\devsel.obj : inc\seq.hpp
src\wat\debug\devsel.obj : inc\chars.hpp
src\wat\debug\devsel.obj : inc\objects.hpp
src\wat\debug\devsel.obj : inc\level.hpp
src\wat\debug\devsel.obj : ../imlib/include\monoprnt.hpp
src\wat\debug\devsel.obj : ../imlib/include\image24.hpp
src\wat\debug\devsel.obj : ../imlib/include\loader.hpp
src\wat\debug\devsel.obj : ../imlib/include\mdlread.hpp
src\wat\debug\devsel.obj : inc\loader2.hpp
src\wat\debug\devsel.obj : inc\game.hpp
src\wat\debug\devsel.obj : ../imlib/include\timing.hpp
src\wat\debug\devsel.obj : inc\lisp_opt.hpp
src\wat\debug\devsel.obj : inc\lisp.hpp
src\wat\debug\devsel.obj : inc\particle.hpp
src\wat\debug\devsel.obj : ../imlib/include\sound.hpp
src\wat\debug\devsel.obj : inc\points.hpp
src\wat\debug\devsel.obj : inc\items.hpp
src\wat\debug\devsel.obj : inc\cache.hpp
src\wat\debug\devsel.obj : ../imlib/include\timage.hpp
src\wat\debug\devsel.obj : ../imlib/include\fonts.hpp
src\wat\debug\devsel.obj : ../imlib/include\filter.hpp
src\wat\debug\devsel.obj : ../imlib/include\mouse.hpp
src\wat\debug\devsel.obj : ../imlib/include\macs.hpp
src\wat\debug\devsel.obj : ../imlib/include\sprite.hpp
src\wat\debug\devsel.obj : ../imlib/include\keys.hpp
src\wat\debug\devsel.obj : ../imlib/include\event.hpp
src\wat\debug\devsel.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\devsel.obj : ../imlib/include\specs.hpp
src\wat\debug\devsel.obj : ../imlib/include\palette.hpp
src\wat\debug\devsel.obj : ../imlib/include\linked.hpp
src\wat\debug\devsel.obj : ../imlib/include\image.hpp
src\wat\debug\devsel.obj : ../imlib/include\system.h
src\wat\debug\devsel.obj : ../imlib/include\video.hpp
src\wat\debug\devsel.obj : ../imlib/include\jwindow.hpp
src\wat\debug\devsel.obj : ../imlib/include\input.hpp
src\wat\debug\devsel.obj : ../imlib/include\scroller.hpp
src\wat\debug\devsel.obj : inc\devsel.hpp
src\wat\debug\crc.obj : src\crc.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\crc.c -fo=src\wat\debug\crc.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\crc.obj : ../imlib/include\macs.hpp
src\wat\debug\crc.obj : ../imlib/include\system.h
src\wat\debug\crc.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\crc.obj : ../imlib/include\linked.hpp
src\wat\debug\crc.obj : ../imlib/include\specs.hpp
src\wat\debug\crc.obj : inc\crc.hpp
src\wat\debug\gamma.obj : src\gamma.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\gamma.c -fo=src\wat\debug\gamma.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\gamma.obj : inc\loader2.hpp
src\wat\debug\gamma.obj : ../imlib/include\dprint.hpp
src\wat\debug\gamma.obj : inc\language.hpp
src\wat\debug\gamma.obj : inc\particle.hpp
src\wat\debug\gamma.obj : ../imlib/include\sound.hpp
src\wat\debug\gamma.obj : inc\points.hpp
src\wat\debug\gamma.obj : inc\items.hpp
src\wat\debug\gamma.obj : inc\cache.hpp
src\wat\debug\gamma.obj : inc\id.hpp
src\wat\debug\gamma.obj : ../imlib/include\input.hpp
src\wat\debug\gamma.obj : ../imlib/include\scroller.hpp
src\wat\debug\gamma.obj : ../imlib/include\timing.hpp
src\wat\debug\gamma.obj : inc\lisp_opt.hpp
src\wat\debug\gamma.obj : inc\lisp.hpp
src\wat\debug\gamma.obj : ../imlib/include\timage.hpp
src\wat\debug\gamma.obj : ../imlib/include\fonts.hpp
src\wat\debug\gamma.obj : ../imlib/include\filter.hpp
src\wat\debug\gamma.obj : ../imlib/include\mouse.hpp
src\wat\debug\gamma.obj : ../imlib/include\macs.hpp
src\wat\debug\gamma.obj : ../imlib/include\sprite.hpp
src\wat\debug\gamma.obj : ../imlib/include\keys.hpp
src\wat\debug\gamma.obj : ../imlib/include\event.hpp
src\wat\debug\gamma.obj : ../imlib/include\jmalloc.hpp
src\wat\debug\gamma.obj : ../imlib/include\specs.hpp
src\wat\debug\gamma.obj : ../imlib/include\palette.hpp
src\wat\debug\gamma.obj : ../imlib/include\linked.hpp
src\wat\debug\gamma.obj : ../imlib/include\image.hpp
src\wat\debug\gamma.obj : ../imlib/include\system.h
src\wat\debug\gamma.obj : ../imlib/include\video.hpp
src\wat\debug\gamma.obj : ../imlib/include\jwindow.hpp
src\wat\debug\language.obj : src\language.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\language.c -fo=src\wat\debug\language.obj /zq /d2 -DMANAGE_MEM 

src\wat\debug\language.obj : ../imlib/include\timing.hpp
src\wat\debug\language.obj : inc\lisp_opt.hpp
src\wat\debug\language.obj : inc\lisp.hpp

WATCOM_gameo_opt_o_files = &
	src\net\dos4gw\wat\opt\ipx.obj &
	src\wat\opt\specache.obj &
	..\imlib\wat\opt\sprite.obj &
	src\wat\opt\netcfg.obj &
	src\wat\opt\text_gui.obj &
	src\wat\opt\innet.obj &
	src\net\unix\wat\opt\gserver.obj &
	src\net\unix\wat\opt\gclient.obj &
	src\net\unix\wat\opt\fileman.obj &
	src\net\wat\opt\sock.obj &
	src\wat\opt\chat.obj &
	src\wat\opt\endgame.obj &
	src\wat\opt\setup.obj &
	src\wat\opt\version.obj &
	src\wat\opt\loadgame.obj &
	src\wat\opt\profile.obj &
	src\wat\opt\cop.obj &
	src\wat\opt\statbar.obj &
	src\wat\opt\compiled.obj &
	src\wat\opt\ant.obj &
	src\wat\opt\sensor.obj &
	src\wat\opt\lisp_opt.obj &
	src\wat\opt\demo.obj &
	src\wat\opt\lcache.obj &
	src\wat\opt\lisp_gc.obj &
	src\wat\opt\nfclient.obj &
	src\wat\opt\username.obj &
	src\wat\opt\clisp.obj &
	src\wat\opt\gui.obj &
	src\wat\opt\transp.obj &
	src\wat\opt\collide.obj &
	src\wat\opt\trig.obj &
	src\wat\opt\property.obj &
	src\wat\opt\lisp.obj &
	src\wat\opt\cache.obj &
	src\wat\opt\particle.obj &
	src\wat\opt\objects.obj &
	src\wat\opt\extend.obj &
	src\wat\opt\console.obj &
	src\wat\opt\ability.obj &
	src\wat\opt\items.obj &
	src\wat\opt\dev.obj &
	src\wat\opt\chars.obj &
	src\wat\opt\level.obj &
	src\wat\opt\smallfnt.obj &
	src\wat\opt\automap.obj &
	src\wat\opt\help.obj &
	src\wat\opt\intsect.obj &
	src\wat\opt\loader2.obj &
	src\wat\opt\seq.obj &
	src\wat\opt\points.obj &
	src\wat\opt\fnt6x13.obj &
	src\wat\opt\morpher.obj &
	src\wat\opt\menu.obj &
	src\wat\opt\director.obj &
	src\wat\opt\view.obj &
	src\wat\opt\config.obj &
	src\wat\opt\game.obj &
	src\wat\opt\light.obj &
	src\wat\opt\devsel.obj &
	src\wat\opt\crc.obj &
	src\wat\opt\gamma.obj &
	src\wat\opt\language.obj

gameo.exe : $(WATCOM_gameo_opt_o_files)
	wlink @gameo.lnk

src\net\dos4gw\wat\opt\ipx.obj : src\net\dos4gw\ipx.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\dos4gw\ipx.c -fo=src\net\dos4gw\wat\opt\ipx.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\net\dos4gw\wat\opt\ipx.obj : src\net\dos4gw\ipx.c
src\wat\opt\specache.obj : src\specache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\specache.c -fo=src\wat\opt\specache.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\specache.obj : ../imlib/include\system.h
src\wat\opt\specache.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\specache.obj : ../imlib/include\linked.hpp
src\wat\opt\specache.obj : ../imlib/include\specs.hpp
src\wat\opt\specache.obj : inc\specache.hpp
..\imlib\wat\opt\sprite.obj : ..\imlib\sprite.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 ..\imlib\sprite.c -fo=..\imlib\wat\opt\sprite.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

..\imlib\wat\opt\sprite.obj : ../imlib/include\sprite.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\emm.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\ppmread.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\gifread.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\glread.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\video.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\image.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\jmalloc.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\specs.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\linked.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\palette.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\mdlread.hpp
..\imlib\wat\opt\sprite.obj : ../imlib/include\system.h
..\imlib\wat\opt\sprite.obj : ../imlib/include\macs.hpp
src\wat\opt\netcfg.obj : src\netcfg.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\netcfg.c -fo=src\wat\opt\netcfg.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\netcfg.obj : inc\crc.hpp
src\wat\opt\netcfg.obj : inc\config.hpp
src\wat\opt\netcfg.obj : inc\light.hpp
src\wat\opt\netcfg.obj : src/net/inc\sock.hpp
src\wat\opt\netcfg.obj : ../imlib/include\timing.hpp
src\wat\opt\netcfg.obj : inc\lisp_opt.hpp
src\wat\opt\netcfg.obj : inc\lisp.hpp
src\wat\opt\netcfg.obj : inc\particle.hpp
src\wat\opt\netcfg.obj : ../imlib/include\sound.hpp
src\wat\opt\netcfg.obj : inc\points.hpp
src\wat\opt\netcfg.obj : inc\items.hpp
src\wat\opt\netcfg.obj : inc\cache.hpp
src\wat\opt\netcfg.obj : ../imlib/include\input.hpp
src\wat\opt\netcfg.obj : ../imlib/include\timage.hpp
src\wat\opt\netcfg.obj : ../imlib/include\fonts.hpp
src\wat\opt\netcfg.obj : ../imlib/include\filter.hpp
src\wat\opt\netcfg.obj : ../imlib/include\mouse.hpp
src\wat\opt\netcfg.obj : ../imlib/include\macs.hpp
src\wat\opt\netcfg.obj : ../imlib/include\sprite.hpp
src\wat\opt\netcfg.obj : ../imlib/include\keys.hpp
src\wat\opt\netcfg.obj : ../imlib/include\event.hpp
src\wat\opt\netcfg.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\netcfg.obj : ../imlib/include\specs.hpp
src\wat\opt\netcfg.obj : ../imlib/include\palette.hpp
src\wat\opt\netcfg.obj : ../imlib/include\linked.hpp
src\wat\opt\netcfg.obj : ../imlib/include\image.hpp
src\wat\opt\netcfg.obj : ../imlib/include\system.h
src\wat\opt\netcfg.obj : ../imlib/include\video.hpp
src\wat\opt\netcfg.obj : ../imlib/include\jwindow.hpp
src\wat\opt\netcfg.obj : inc\netcfg.hpp
src\wat\opt\text_gui.obj : src\text_gui.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\text_gui.c -fo=src\wat\opt\text_gui.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\text_gui.obj : inc\fakelib.hpp
src\wat\opt\text_gui.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\text_gui.obj : inc\stack.hpp
src\wat\opt\text_gui.obj : inc\lisp_gc.hpp
src\wat\opt\text_gui.obj : ../imlib/include\timing.hpp
src\wat\opt\text_gui.obj : inc\lisp_opt.hpp
src\wat\opt\text_gui.obj : inc\lisp.hpp
src\wat\opt\innet.obj : src\innet.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\innet.c -fo=src\wat\opt\innet.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\innet.obj : inc\netcfg.hpp
src\wat\opt\innet.obj : ../imlib/include\dprint.hpp
src\wat\opt\innet.obj : src/net/unix\gclient.hpp
src\wat\opt\innet.obj : src/net/unix\ghandler.hpp
src\wat\opt\innet.obj : src/net/unix\gserver.hpp
src\wat\opt\innet.obj : src/net/inc\indian.hpp
src\wat\opt\innet.obj : inc\netface.hpp
src\wat\opt\innet.obj : src/net/inc\sock.hpp
src\wat\opt\innet.obj : src/net/unix\fileman.hpp
src\wat\opt\innet.obj : inc\director.hpp
src\wat\opt\innet.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\innet.obj : ../imlib/include\image24.hpp
src\wat\opt\innet.obj : ../imlib/include\loader.hpp
src\wat\opt\innet.obj : ../imlib/include\mdlread.hpp
src\wat\opt\innet.obj : inc\game.hpp
src\wat\opt\innet.obj : inc\id.hpp
src\wat\opt\innet.obj : inc\extend.hpp
src\wat\opt\innet.obj : inc\crc.hpp
src\wat\opt\innet.obj : inc\light.hpp
src\wat\opt\innet.obj : inc\view.hpp
src\wat\opt\innet.obj : inc\loader2.hpp
src\wat\opt\innet.obj : inc\config.hpp
src\wat\opt\innet.obj : ../imlib/include\supmorph.hpp
src\wat\opt\innet.obj : inc\morpher.hpp
src\wat\opt\innet.obj : inc\ability.hpp
src\wat\opt\innet.obj : ../imlib/include\timing.hpp
src\wat\opt\innet.obj : inc\lisp_opt.hpp
src\wat\opt\innet.obj : inc\lisp.hpp
src\wat\opt\innet.obj : inc\particle.hpp
src\wat\opt\innet.obj : ../imlib/include\sound.hpp
src\wat\opt\innet.obj : inc\cache.hpp
src\wat\opt\innet.obj : inc\points.hpp
src\wat\opt\innet.obj : inc\items.hpp
src\wat\opt\innet.obj : inc\seq.hpp
src\wat\opt\innet.obj : inc\chars.hpp
src\wat\opt\innet.obj : ../imlib/include\input.hpp
src\wat\opt\innet.obj : inc\objects.hpp
src\wat\opt\innet.obj : inc\level.hpp
src\wat\opt\innet.obj : ../imlib/include\timage.hpp
src\wat\opt\innet.obj : ../imlib/include\fonts.hpp
src\wat\opt\innet.obj : ../imlib/include\filter.hpp
src\wat\opt\innet.obj : ../imlib/include\mouse.hpp
src\wat\opt\innet.obj : ../imlib/include\macs.hpp
src\wat\opt\innet.obj : ../imlib/include\sprite.hpp
src\wat\opt\innet.obj : ../imlib/include\keys.hpp
src\wat\opt\innet.obj : ../imlib/include\event.hpp
src\wat\opt\innet.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\innet.obj : ../imlib/include\specs.hpp
src\wat\opt\innet.obj : ../imlib/include\palette.hpp
src\wat\opt\innet.obj : ../imlib/include\linked.hpp
src\wat\opt\innet.obj : ../imlib/include\image.hpp
src\wat\opt\innet.obj : ../imlib/include\system.h
src\wat\opt\innet.obj : ../imlib/include\video.hpp
src\wat\opt\innet.obj : ../imlib/include\jwindow.hpp
src\wat\opt\innet.obj : inc\demo.hpp
src\net\unix\wat\opt\gserver.obj : src\net\unix\gserver.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\gserver.c -fo=src\net\unix\wat\opt\gserver.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\net\unix\wat\opt\gserver.obj : ../imlib/include\input.hpp
src\net\unix\wat\opt\gserver.obj : inc\id.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\timage.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\fonts.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\filter.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\mouse.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\sprite.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\keys.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\event.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\jmalloc.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\specs.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\palette.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\linked.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\image.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\video.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\jwindow.hpp
src\net\unix\wat\opt\gserver.obj : inc\netcfg.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\timing.hpp
src\net\unix\wat\opt\gserver.obj : src/net/inc\indian.hpp
src\net\unix\wat\opt\gserver.obj : inc\netface.hpp
src\net\unix\wat\opt\gserver.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\opt\gserver.obj : src/net/inc\sock.hpp
src\net\unix\wat\opt\gserver.obj : src/net/unix\gserver.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\macs.hpp
src\net\unix\wat\opt\gserver.obj : ../imlib/include\system.h
src\net\unix\wat\opt\gclient.obj : src\net\unix\gclient.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\gclient.c -fo=src\net\unix\wat\opt\gclient.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\net\unix\wat\opt\gclient.obj : ../imlib/include\timing.hpp
src\net\unix\wat\opt\gclient.obj : src/net/unix\undrv.hpp
src\net\unix\wat\opt\gclient.obj : src/net/inc\indian.hpp
src\net\unix\wat\opt\gclient.obj : inc\netface.hpp
src\net\unix\wat\opt\gclient.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\opt\gclient.obj : src/net/inc\sock.hpp
src\net\unix\wat\opt\gclient.obj : src/net/unix\gclient.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\timage.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\fonts.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\filter.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\mouse.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\macs.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\sprite.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\keys.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\event.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\jmalloc.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\specs.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\palette.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\linked.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\image.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\system.h
src\net\unix\wat\opt\gclient.obj : ../imlib/include\video.hpp
src\net\unix\wat\opt\gclient.obj : ../imlib/include\jwindow.hpp
src\net\unix\wat\opt\gclient.obj : inc\netcfg.hpp
src\net\unix\wat\opt\fileman.obj : src\net\unix\fileman.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\unix\fileman.c -fo=src\net\unix\wat\opt\fileman.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\net\unix\wat\opt\fileman.obj : src/net/unix\ghandler.hpp
src\net\unix\wat\opt\fileman.obj : src/net/inc\indian.hpp
src\net\unix\wat\opt\fileman.obj : inc\netface.hpp
src\net\unix\wat\opt\fileman.obj : src/net/inc\sock.hpp
src\net\unix\wat\opt\fileman.obj : src/net/unix\fileman.hpp
src\net\unix\wat\opt\fileman.obj : ../imlib/include\system.h
src\net\unix\wat\opt\fileman.obj : ../imlib/include\macs.hpp
src\net\wat\opt\sock.obj : src\net\sock.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\net\sock.c -fo=src\net\wat\opt\sock.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\net\wat\opt\sock.obj : src/net/inc\sock.hpp
src\wat\opt\chat.obj : src\chat.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\chat.c -fo=src\wat\opt\chat.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\chat.obj : ../imlib/include\timage.hpp
src\wat\opt\chat.obj : ../imlib/include\fonts.hpp
src\wat\opt\chat.obj : ../imlib/include\filter.hpp
src\wat\opt\chat.obj : ../imlib/include\mouse.hpp
src\wat\opt\chat.obj : ../imlib/include\macs.hpp
src\wat\opt\chat.obj : ../imlib/include\sprite.hpp
src\wat\opt\chat.obj : ../imlib/include\keys.hpp
src\wat\opt\chat.obj : ../imlib/include\event.hpp
src\wat\opt\chat.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\chat.obj : ../imlib/include\specs.hpp
src\wat\opt\chat.obj : ../imlib/include\palette.hpp
src\wat\opt\chat.obj : ../imlib/include\linked.hpp
src\wat\opt\chat.obj : ../imlib/include\image.hpp
src\wat\opt\chat.obj : ../imlib/include\system.h
src\wat\opt\chat.obj : ../imlib/include\video.hpp
src\wat\opt\chat.obj : ../imlib/include\jwindow.hpp
src\wat\opt\chat.obj : inc\console.hpp
src\wat\opt\chat.obj : inc\chat.hpp
src\wat\opt\endgame.obj : src\endgame.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\endgame.c -fo=src\wat\opt\endgame.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\endgame.obj : inc\fakelib.hpp
src\wat\opt\endgame.obj : inc\stack.hpp
src\wat\opt\endgame.obj : inc\lisp_gc.hpp
src\wat\opt\endgame.obj : ../imlib/include\jrand.hpp
src\wat\opt\endgame.obj : ../imlib/include\dprint.hpp
src\wat\opt\endgame.obj : inc\clisp.hpp
src\wat\opt\endgame.obj : inc\console.hpp
src\wat\opt\endgame.obj : inc\dev.hpp
src\wat\opt\endgame.obj : inc\property.hpp
src\wat\opt\endgame.obj : inc\gui.hpp
src\wat\opt\endgame.obj : ../imlib/include\pmenu.hpp
src\wat\opt\endgame.obj : inc\director.hpp
src\wat\opt\endgame.obj : inc\id.hpp
src\wat\opt\endgame.obj : inc\extend.hpp
src\wat\opt\endgame.obj : inc\crc.hpp
src\wat\opt\endgame.obj : inc\light.hpp
src\wat\opt\endgame.obj : inc\view.hpp
src\wat\opt\endgame.obj : inc\config.hpp
src\wat\opt\endgame.obj : ../imlib/include\supmorph.hpp
src\wat\opt\endgame.obj : inc\morpher.hpp
src\wat\opt\endgame.obj : inc\ability.hpp
src\wat\opt\endgame.obj : inc\particle.hpp
src\wat\opt\endgame.obj : inc\cache.hpp
src\wat\opt\endgame.obj : inc\seq.hpp
src\wat\opt\endgame.obj : inc\chars.hpp
src\wat\opt\endgame.obj : ../imlib/include\input.hpp
src\wat\opt\endgame.obj : inc\objects.hpp
src\wat\opt\endgame.obj : inc\level.hpp
src\wat\opt\endgame.obj : inc\points.hpp
src\wat\opt\endgame.obj : inc\items.hpp
src\wat\opt\endgame.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\endgame.obj : ../imlib/include\image24.hpp
src\wat\opt\endgame.obj : ../imlib/include\loader.hpp
src\wat\opt\endgame.obj : ../imlib/include\mdlread.hpp
src\wat\opt\endgame.obj : ../imlib/include\sound.hpp
src\wat\opt\endgame.obj : ../imlib/include\mouse.hpp
src\wat\opt\endgame.obj : ../imlib/include\sprite.hpp
src\wat\opt\endgame.obj : ../imlib/include\keys.hpp
src\wat\opt\endgame.obj : ../imlib/include\event.hpp
src\wat\opt\endgame.obj : ../imlib/include\video.hpp
src\wat\opt\endgame.obj : ../imlib/include\jwindow.hpp
src\wat\opt\endgame.obj : inc\loader2.hpp
src\wat\opt\endgame.obj : inc\game.hpp
src\wat\opt\endgame.obj : ../imlib/include\timing.hpp
src\wat\opt\endgame.obj : inc\lisp_opt.hpp
src\wat\opt\endgame.obj : inc\lisp.hpp
src\wat\opt\endgame.obj : ../imlib/include\filter.hpp
src\wat\opt\endgame.obj : ../imlib/include\macs.hpp
src\wat\opt\endgame.obj : ../imlib/include\timage.hpp
src\wat\opt\endgame.obj : ../imlib/include\system.h
src\wat\opt\endgame.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\endgame.obj : ../imlib/include\specs.hpp
src\wat\opt\endgame.obj : ../imlib/include\palette.hpp
src\wat\opt\endgame.obj : ../imlib/include\linked.hpp
src\wat\opt\endgame.obj : ../imlib/include\image.hpp
src\wat\opt\endgame.obj : ../imlib/include\fonts.hpp
src\wat\opt\endgame.obj : inc\menu.hpp
src\wat\opt\setup.obj : src\setup.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\setup.c -fo=src\wat\opt\setup.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\setup.obj : inc\particle.hpp
src\wat\opt\setup.obj : inc\points.hpp
src\wat\opt\setup.obj : inc\items.hpp
src\wat\opt\setup.obj : inc\cache.hpp
src\wat\opt\setup.obj : ../imlib/include\dprint.hpp
src\wat\opt\setup.obj : inc\fakelib.hpp
src\wat\opt\setup.obj : inc\stack.hpp
src\wat\opt\setup.obj : inc\lisp_gc.hpp
src\wat\opt\setup.obj : inc\lisp_opt.hpp
src\wat\opt\setup.obj : inc\lisp.hpp
src\wat\opt\setup.obj : ../imlib/include\scroller.hpp
src\wat\opt\setup.obj : ../imlib/include\input.hpp
src\wat\opt\setup.obj : ../imlib/include\timing.hpp
src\wat\opt\setup.obj : ../imlib/include\visobj.hpp
src\wat\opt\setup.obj : ../imlib/include\status.hpp
src\wat\opt\setup.obj : ../imlib/include\guistat.hpp
src\wat\opt\setup.obj : ../imlib/include\sound.hpp
src\wat\opt\setup.obj : ../imlib/include\timage.hpp
src\wat\opt\setup.obj : ../imlib/include\fonts.hpp
src\wat\opt\setup.obj : ../imlib/include\filter.hpp
src\wat\opt\setup.obj : ../imlib/include\mouse.hpp
src\wat\opt\setup.obj : ../imlib/include\macs.hpp
src\wat\opt\setup.obj : ../imlib/include\sprite.hpp
src\wat\opt\setup.obj : ../imlib/include\keys.hpp
src\wat\opt\setup.obj : ../imlib/include\event.hpp
src\wat\opt\setup.obj : ../imlib/include\palette.hpp
src\wat\opt\setup.obj : ../imlib/include\image.hpp
src\wat\opt\setup.obj : ../imlib/include\video.hpp
src\wat\opt\setup.obj : ../imlib/include\jwindow.hpp
src\wat\opt\setup.obj : inc\id.hpp
src\wat\opt\setup.obj : ../imlib/include\system.h
src\wat\opt\setup.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\setup.obj : ../imlib/include\linked.hpp
src\wat\opt\setup.obj : ../imlib/include\specs.hpp
src\wat\opt\version.obj : src\version.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\version.c -fo=src\wat\opt\version.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\version.obj : ../imlib/include\system.h
src\wat\opt\version.obj : ../imlib/include\macs.hpp
src\wat\opt\version.obj : ../imlib/include\dprint.hpp
src\wat\opt\loadgame.obj : src\loadgame.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\loadgame.c -fo=src\wat\opt\loadgame.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\loadgame.obj : inc\director.hpp
src\wat\opt\loadgame.obj : inc\extend.hpp
src\wat\opt\loadgame.obj : inc\crc.hpp
src\wat\opt\loadgame.obj : inc\light.hpp
src\wat\opt\loadgame.obj : inc\view.hpp
src\wat\opt\loadgame.obj : inc\config.hpp
src\wat\opt\loadgame.obj : ../imlib/include\supmorph.hpp
src\wat\opt\loadgame.obj : inc\morpher.hpp
src\wat\opt\loadgame.obj : inc\ability.hpp
src\wat\opt\loadgame.obj : inc\seq.hpp
src\wat\opt\loadgame.obj : inc\chars.hpp
src\wat\opt\loadgame.obj : inc\objects.hpp
src\wat\opt\loadgame.obj : inc\level.hpp
src\wat\opt\loadgame.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\loadgame.obj : ../imlib/include\image24.hpp
src\wat\opt\loadgame.obj : ../imlib/include\loader.hpp
src\wat\opt\loadgame.obj : ../imlib/include\mdlread.hpp
src\wat\opt\loadgame.obj : inc\loader2.hpp
src\wat\opt\loadgame.obj : inc\game.hpp
src\wat\opt\loadgame.obj : inc\demo.hpp
src\wat\opt\loadgame.obj : inc\gui.hpp
src\wat\opt\loadgame.obj : inc\particle.hpp
src\wat\opt\loadgame.obj : ../imlib/include\sound.hpp
src\wat\opt\loadgame.obj : inc\points.hpp
src\wat\opt\loadgame.obj : inc\items.hpp
src\wat\opt\loadgame.obj : inc\cache.hpp
src\wat\opt\loadgame.obj : ../imlib/include\dprint.hpp
src\wat\opt\loadgame.obj : ../imlib/include\timing.hpp
src\wat\opt\loadgame.obj : inc\lisp_opt.hpp
src\wat\opt\loadgame.obj : inc\lisp.hpp
src\wat\opt\loadgame.obj : ../imlib/include\input.hpp
src\wat\opt\loadgame.obj : inc\id.hpp
src\wat\opt\loadgame.obj : ../imlib/include\timage.hpp
src\wat\opt\loadgame.obj : ../imlib/include\fonts.hpp
src\wat\opt\loadgame.obj : ../imlib/include\filter.hpp
src\wat\opt\loadgame.obj : ../imlib/include\mouse.hpp
src\wat\opt\loadgame.obj : ../imlib/include\macs.hpp
src\wat\opt\loadgame.obj : ../imlib/include\sprite.hpp
src\wat\opt\loadgame.obj : ../imlib/include\keys.hpp
src\wat\opt\loadgame.obj : ../imlib/include\event.hpp
src\wat\opt\loadgame.obj : ../imlib/include\palette.hpp
src\wat\opt\loadgame.obj : ../imlib/include\image.hpp
src\wat\opt\loadgame.obj : ../imlib/include\video.hpp
src\wat\opt\loadgame.obj : ../imlib/include\jwindow.hpp
src\wat\opt\loadgame.obj : ../imlib/include\system.h
src\wat\opt\loadgame.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\loadgame.obj : ../imlib/include\linked.hpp
src\wat\opt\loadgame.obj : ../imlib/include\specs.hpp
src\wat\opt\profile.obj : src\profile.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\profile.c -fo=src\wat\opt\profile.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\profile.obj : inc\extend.hpp
src\wat\opt\profile.obj : inc\crc.hpp
src\wat\opt\profile.obj : inc\light.hpp
src\wat\opt\profile.obj : inc\view.hpp
src\wat\opt\profile.obj : inc\loader2.hpp
src\wat\opt\profile.obj : inc\config.hpp
src\wat\opt\profile.obj : ../imlib/include\supmorph.hpp
src\wat\opt\profile.obj : inc\morpher.hpp
src\wat\opt\profile.obj : inc\ability.hpp
src\wat\opt\profile.obj : ../imlib/include\timing.hpp
src\wat\opt\profile.obj : inc\lisp_opt.hpp
src\wat\opt\profile.obj : inc\lisp.hpp
src\wat\opt\profile.obj : inc\particle.hpp
src\wat\opt\profile.obj : ../imlib/include\sound.hpp
src\wat\opt\profile.obj : inc\cache.hpp
src\wat\opt\profile.obj : inc\points.hpp
src\wat\opt\profile.obj : inc\items.hpp
src\wat\opt\profile.obj : inc\seq.hpp
src\wat\opt\profile.obj : inc\chars.hpp
src\wat\opt\profile.obj : ../imlib/include\input.hpp
src\wat\opt\profile.obj : inc\objects.hpp
src\wat\opt\profile.obj : inc\property.hpp
src\wat\opt\profile.obj : ../imlib/include\timage.hpp
src\wat\opt\profile.obj : ../imlib/include\fonts.hpp
src\wat\opt\profile.obj : ../imlib/include\filter.hpp
src\wat\opt\profile.obj : ../imlib/include\video.hpp
src\wat\opt\profile.obj : ../imlib/include\jwindow.hpp
src\wat\opt\profile.obj : ../imlib/include\mouse.hpp
src\wat\opt\profile.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\profile.obj : ../imlib/include\specs.hpp
src\wat\opt\profile.obj : ../imlib/include\palette.hpp
src\wat\opt\profile.obj : ../imlib/include\linked.hpp
src\wat\opt\profile.obj : ../imlib/include\image.hpp
src\wat\opt\profile.obj : ../imlib/include\system.h
src\wat\opt\profile.obj : ../imlib/include\macs.hpp
src\wat\opt\profile.obj : ../imlib/include\sprite.hpp
src\wat\opt\profile.obj : ../imlib/include\keys.hpp
src\wat\opt\profile.obj : ../imlib/include\event.hpp
src\wat\opt\profile.obj : inc\profile.hpp
src\wat\opt\cop.obj : src\cop.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\cop.c -fo=src\wat\opt\cop.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\cop.obj : inc\ant.hpp
src\wat\opt\cop.obj : inc\clisp.hpp
src\wat\opt\cop.obj : ../imlib/include\jrand.hpp
src\wat\opt\cop.obj : inc\director.hpp
src\wat\opt\cop.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\cop.obj : ../imlib/include\image24.hpp
src\wat\opt\cop.obj : ../imlib/include\loader.hpp
src\wat\opt\cop.obj : ../imlib/include\mdlread.hpp
src\wat\opt\cop.obj : inc\game.hpp
src\wat\opt\cop.obj : inc\id.hpp
src\wat\opt\cop.obj : inc\level.hpp
src\wat\opt\cop.obj : inc\extend.hpp
src\wat\opt\cop.obj : inc\crc.hpp
src\wat\opt\cop.obj : inc\light.hpp
src\wat\opt\cop.obj : inc\view.hpp
src\wat\opt\cop.obj : inc\loader2.hpp
src\wat\opt\cop.obj : inc\config.hpp
src\wat\opt\cop.obj : ../imlib/include\supmorph.hpp
src\wat\opt\cop.obj : inc\morpher.hpp
src\wat\opt\cop.obj : inc\ability.hpp
src\wat\opt\cop.obj : inc\particle.hpp
src\wat\opt\cop.obj : ../imlib/include\sound.hpp
src\wat\opt\cop.obj : inc\cache.hpp
src\wat\opt\cop.obj : inc\points.hpp
src\wat\opt\cop.obj : inc\items.hpp
src\wat\opt\cop.obj : inc\seq.hpp
src\wat\opt\cop.obj : inc\chars.hpp
src\wat\opt\cop.obj : ../imlib/include\timage.hpp
src\wat\opt\cop.obj : ../imlib/include\fonts.hpp
src\wat\opt\cop.obj : ../imlib/include\filter.hpp
src\wat\opt\cop.obj : ../imlib/include\mouse.hpp
src\wat\opt\cop.obj : ../imlib/include\sprite.hpp
src\wat\opt\cop.obj : ../imlib/include\keys.hpp
src\wat\opt\cop.obj : ../imlib/include\event.hpp
src\wat\opt\cop.obj : ../imlib/include\specs.hpp
src\wat\opt\cop.obj : ../imlib/include\palette.hpp
src\wat\opt\cop.obj : ../imlib/include\linked.hpp
src\wat\opt\cop.obj : ../imlib/include\image.hpp
src\wat\opt\cop.obj : ../imlib/include\video.hpp
src\wat\opt\cop.obj : ../imlib/include\jwindow.hpp
src\wat\opt\cop.obj : ../imlib/include\input.hpp
src\wat\opt\cop.obj : inc\objects.hpp
src\wat\opt\cop.obj : ../imlib/include\system.h
src\wat\opt\cop.obj : ../imlib/include\macs.hpp
src\wat\opt\cop.obj : inc\compiled.hpp
src\wat\opt\cop.obj : inc\fakelib.hpp
src\wat\opt\cop.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\cop.obj : inc\stack.hpp
src\wat\opt\cop.obj : inc\lisp_gc.hpp
src\wat\opt\cop.obj : ../imlib/include\timing.hpp
src\wat\opt\cop.obj : inc\lisp_opt.hpp
src\wat\opt\cop.obj : inc\lisp.hpp
src\wat\opt\statbar.obj : src\statbar.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\statbar.c -fo=src\wat\opt\statbar.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\statbar.obj : inc\clisp.hpp
src\wat\opt\statbar.obj : inc\director.hpp
src\wat\opt\statbar.obj : inc\id.hpp
src\wat\opt\statbar.obj : inc\level.hpp
src\wat\opt\statbar.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\statbar.obj : ../imlib/include\image24.hpp
src\wat\opt\statbar.obj : ../imlib/include\loader.hpp
src\wat\opt\statbar.obj : ../imlib/include\mdlread.hpp
src\wat\opt\statbar.obj : inc\game.hpp
src\wat\opt\statbar.obj : inc\extend.hpp
src\wat\opt\statbar.obj : inc\loader2.hpp
src\wat\opt\statbar.obj : ../imlib/include\supmorph.hpp
src\wat\opt\statbar.obj : inc\morpher.hpp
src\wat\opt\statbar.obj : ../imlib/include\input.hpp
src\wat\opt\statbar.obj : inc\objects.hpp
src\wat\opt\statbar.obj : inc\ability.hpp
src\wat\opt\statbar.obj : inc\seq.hpp
src\wat\opt\statbar.obj : inc\chars.hpp
src\wat\opt\statbar.obj : inc\demo.hpp
src\wat\opt\statbar.obj : inc\particle.hpp
src\wat\opt\statbar.obj : ../imlib/include\sound.hpp
src\wat\opt\statbar.obj : inc\points.hpp
src\wat\opt\statbar.obj : inc\items.hpp
src\wat\opt\statbar.obj : inc\cache.hpp
src\wat\opt\statbar.obj : ../imlib/include\timing.hpp
src\wat\opt\statbar.obj : inc\lisp_opt.hpp
src\wat\opt\statbar.obj : inc\lisp.hpp
src\wat\opt\statbar.obj : ../imlib/include\timage.hpp
src\wat\opt\statbar.obj : ../imlib/include\fonts.hpp
src\wat\opt\statbar.obj : ../imlib/include\filter.hpp
src\wat\opt\statbar.obj : ../imlib/include\mouse.hpp
src\wat\opt\statbar.obj : ../imlib/include\sprite.hpp
src\wat\opt\statbar.obj : ../imlib/include\keys.hpp
src\wat\opt\statbar.obj : ../imlib/include\event.hpp
src\wat\opt\statbar.obj : ../imlib/include\video.hpp
src\wat\opt\statbar.obj : ../imlib/include\jwindow.hpp
src\wat\opt\statbar.obj : ../imlib/include\macs.hpp
src\wat\opt\statbar.obj : inc\crc.hpp
src\wat\opt\statbar.obj : inc\config.hpp
src\wat\opt\statbar.obj : inc\light.hpp
src\wat\opt\statbar.obj : inc\view.hpp
src\wat\opt\statbar.obj : ../imlib/include\system.h
src\wat\opt\statbar.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\statbar.obj : ../imlib/include\specs.hpp
src\wat\opt\statbar.obj : ../imlib/include\palette.hpp
src\wat\opt\statbar.obj : ../imlib/include\linked.hpp
src\wat\opt\statbar.obj : ../imlib/include\image.hpp
src\wat\opt\statbar.obj : inc\sbar.hpp
src\wat\opt\compiled.obj : src\compiled.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\compiled.c -fo=src\wat\opt\compiled.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\compiled.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\compiled.obj : ../imlib/include\system.h
src\wat\opt\compiled.obj : ../imlib/include\macs.hpp
src\wat\opt\compiled.obj : ../imlib/include\timing.hpp
src\wat\opt\compiled.obj : inc\lisp_opt.hpp
src\wat\opt\compiled.obj : inc\lisp.hpp
src\wat\opt\ant.obj : src\ant.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\ant.c -fo=src\wat\opt\ant.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\ant.obj : inc\console.hpp
src\wat\opt\ant.obj : inc\dev.hpp
src\wat\opt\ant.obj : inc\clisp.hpp
src\wat\opt\ant.obj : ../imlib/include\jrand.hpp
src\wat\opt\ant.obj : inc\director.hpp
src\wat\opt\ant.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\ant.obj : ../imlib/include\image24.hpp
src\wat\opt\ant.obj : ../imlib/include\loader.hpp
src\wat\opt\ant.obj : ../imlib/include\mdlread.hpp
src\wat\opt\ant.obj : inc\game.hpp
src\wat\opt\ant.obj : inc\id.hpp
src\wat\opt\ant.obj : inc\level.hpp
src\wat\opt\ant.obj : inc\extend.hpp
src\wat\opt\ant.obj : inc\crc.hpp
src\wat\opt\ant.obj : inc\light.hpp
src\wat\opt\ant.obj : inc\view.hpp
src\wat\opt\ant.obj : inc\loader2.hpp
src\wat\opt\ant.obj : inc\config.hpp
src\wat\opt\ant.obj : ../imlib/include\supmorph.hpp
src\wat\opt\ant.obj : inc\morpher.hpp
src\wat\opt\ant.obj : inc\ability.hpp
src\wat\opt\ant.obj : inc\particle.hpp
src\wat\opt\ant.obj : ../imlib/include\sound.hpp
src\wat\opt\ant.obj : inc\cache.hpp
src\wat\opt\ant.obj : inc\points.hpp
src\wat\opt\ant.obj : inc\items.hpp
src\wat\opt\ant.obj : inc\seq.hpp
src\wat\opt\ant.obj : inc\chars.hpp
src\wat\opt\ant.obj : ../imlib/include\timage.hpp
src\wat\opt\ant.obj : ../imlib/include\fonts.hpp
src\wat\opt\ant.obj : ../imlib/include\filter.hpp
src\wat\opt\ant.obj : ../imlib/include\mouse.hpp
src\wat\opt\ant.obj : ../imlib/include\sprite.hpp
src\wat\opt\ant.obj : ../imlib/include\keys.hpp
src\wat\opt\ant.obj : ../imlib/include\event.hpp
src\wat\opt\ant.obj : ../imlib/include\specs.hpp
src\wat\opt\ant.obj : ../imlib/include\palette.hpp
src\wat\opt\ant.obj : ../imlib/include\linked.hpp
src\wat\opt\ant.obj : ../imlib/include\image.hpp
src\wat\opt\ant.obj : ../imlib/include\video.hpp
src\wat\opt\ant.obj : ../imlib/include\jwindow.hpp
src\wat\opt\ant.obj : ../imlib/include\input.hpp
src\wat\opt\ant.obj : inc\objects.hpp
src\wat\opt\ant.obj : ../imlib/include\system.h
src\wat\opt\ant.obj : ../imlib/include\macs.hpp
src\wat\opt\ant.obj : inc\compiled.hpp
src\wat\opt\ant.obj : inc\fakelib.hpp
src\wat\opt\ant.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\ant.obj : inc\stack.hpp
src\wat\opt\ant.obj : inc\lisp_gc.hpp
src\wat\opt\ant.obj : ../imlib/include\timing.hpp
src\wat\opt\ant.obj : inc\lisp_opt.hpp
src\wat\opt\ant.obj : inc\lisp.hpp
src\wat\opt\ant.obj : inc\ant.hpp
src\wat\opt\sensor.obj : src\sensor.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\sensor.c -fo=src\wat\opt\sensor.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\sensor.obj : inc\clisp.hpp
src\wat\opt\sensor.obj : ../imlib/include\jrand.hpp
src\wat\opt\sensor.obj : inc\director.hpp
src\wat\opt\sensor.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\sensor.obj : ../imlib/include\image24.hpp
src\wat\opt\sensor.obj : ../imlib/include\loader.hpp
src\wat\opt\sensor.obj : ../imlib/include\mdlread.hpp
src\wat\opt\sensor.obj : inc\game.hpp
src\wat\opt\sensor.obj : inc\id.hpp
src\wat\opt\sensor.obj : inc\level.hpp
src\wat\opt\sensor.obj : inc\extend.hpp
src\wat\opt\sensor.obj : inc\crc.hpp
src\wat\opt\sensor.obj : inc\light.hpp
src\wat\opt\sensor.obj : inc\view.hpp
src\wat\opt\sensor.obj : inc\loader2.hpp
src\wat\opt\sensor.obj : inc\config.hpp
src\wat\opt\sensor.obj : ../imlib/include\supmorph.hpp
src\wat\opt\sensor.obj : inc\morpher.hpp
src\wat\opt\sensor.obj : inc\ability.hpp
src\wat\opt\sensor.obj : inc\particle.hpp
src\wat\opt\sensor.obj : ../imlib/include\sound.hpp
src\wat\opt\sensor.obj : inc\cache.hpp
src\wat\opt\sensor.obj : inc\points.hpp
src\wat\opt\sensor.obj : inc\items.hpp
src\wat\opt\sensor.obj : inc\seq.hpp
src\wat\opt\sensor.obj : inc\chars.hpp
src\wat\opt\sensor.obj : ../imlib/include\timage.hpp
src\wat\opt\sensor.obj : ../imlib/include\fonts.hpp
src\wat\opt\sensor.obj : ../imlib/include\filter.hpp
src\wat\opt\sensor.obj : ../imlib/include\mouse.hpp
src\wat\opt\sensor.obj : ../imlib/include\sprite.hpp
src\wat\opt\sensor.obj : ../imlib/include\keys.hpp
src\wat\opt\sensor.obj : ../imlib/include\event.hpp
src\wat\opt\sensor.obj : ../imlib/include\specs.hpp
src\wat\opt\sensor.obj : ../imlib/include\palette.hpp
src\wat\opt\sensor.obj : ../imlib/include\linked.hpp
src\wat\opt\sensor.obj : ../imlib/include\image.hpp
src\wat\opt\sensor.obj : ../imlib/include\video.hpp
src\wat\opt\sensor.obj : ../imlib/include\jwindow.hpp
src\wat\opt\sensor.obj : ../imlib/include\input.hpp
src\wat\opt\sensor.obj : inc\objects.hpp
src\wat\opt\sensor.obj : ../imlib/include\system.h
src\wat\opt\sensor.obj : ../imlib/include\macs.hpp
src\wat\opt\sensor.obj : inc\compiled.hpp
src\wat\opt\sensor.obj : inc\fakelib.hpp
src\wat\opt\sensor.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\sensor.obj : inc\stack.hpp
src\wat\opt\sensor.obj : inc\lisp_gc.hpp
src\wat\opt\sensor.obj : ../imlib/include\timing.hpp
src\wat\opt\sensor.obj : inc\lisp_opt.hpp
src\wat\opt\sensor.obj : inc\lisp.hpp
src\wat\opt\lisp_opt.obj : src\lisp_opt.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp_opt.c -fo=src\wat\opt\lisp_opt.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\lisp_opt.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\lisp_opt.obj : inc\stack.hpp
src\wat\opt\lisp_opt.obj : inc\lisp_gc.hpp
src\wat\opt\lisp_opt.obj : ../imlib/include\timing.hpp
src\wat\opt\lisp_opt.obj : inc\lisp_opt.hpp
src\wat\opt\lisp_opt.obj : inc\lisp.hpp
src\wat\opt\lisp_opt.obj : ../imlib/include\system.h
src\wat\opt\lisp_opt.obj : ../imlib/include\macs.hpp
src\wat\opt\lisp_opt.obj : inc\fakelib.hpp
src\wat\opt\demo.obj : src\demo.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\demo.c -fo=src\wat\opt\demo.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\demo.obj : src/net/inc\indian.hpp
src\wat\opt\demo.obj : inc\netface.hpp
src\wat\opt\demo.obj : inc\clisp.hpp
src\wat\opt\demo.obj : ../imlib/include\jrand.hpp
src\wat\opt\demo.obj : inc\console.hpp
src\wat\opt\demo.obj : inc\dev.hpp
src\wat\opt\demo.obj : ../imlib/include\dprint.hpp
src\wat\opt\demo.obj : inc\director.hpp
src\wat\opt\demo.obj : inc\id.hpp
src\wat\opt\demo.obj : inc\extend.hpp
src\wat\opt\demo.obj : inc\crc.hpp
src\wat\opt\demo.obj : inc\light.hpp
src\wat\opt\demo.obj : inc\view.hpp
src\wat\opt\demo.obj : inc\config.hpp
src\wat\opt\demo.obj : ../imlib/include\supmorph.hpp
src\wat\opt\demo.obj : inc\morpher.hpp
src\wat\opt\demo.obj : inc\ability.hpp
src\wat\opt\demo.obj : inc\particle.hpp
src\wat\opt\demo.obj : inc\cache.hpp
src\wat\opt\demo.obj : inc\seq.hpp
src\wat\opt\demo.obj : inc\chars.hpp
src\wat\opt\demo.obj : ../imlib/include\input.hpp
src\wat\opt\demo.obj : inc\objects.hpp
src\wat\opt\demo.obj : inc\level.hpp
src\wat\opt\demo.obj : inc\points.hpp
src\wat\opt\demo.obj : inc\items.hpp
src\wat\opt\demo.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\demo.obj : ../imlib/include\image24.hpp
src\wat\opt\demo.obj : ../imlib/include\loader.hpp
src\wat\opt\demo.obj : ../imlib/include\mdlread.hpp
src\wat\opt\demo.obj : ../imlib/include\sound.hpp
src\wat\opt\demo.obj : ../imlib/include\timing.hpp
src\wat\opt\demo.obj : inc\lisp_opt.hpp
src\wat\opt\demo.obj : inc\lisp.hpp
src\wat\opt\demo.obj : inc\loader2.hpp
src\wat\opt\demo.obj : inc\game.hpp
src\wat\opt\demo.obj : ../imlib/include\timage.hpp
src\wat\opt\demo.obj : ../imlib/include\fonts.hpp
src\wat\opt\demo.obj : ../imlib/include\filter.hpp
src\wat\opt\demo.obj : ../imlib/include\mouse.hpp
src\wat\opt\demo.obj : ../imlib/include\macs.hpp
src\wat\opt\demo.obj : ../imlib/include\sprite.hpp
src\wat\opt\demo.obj : ../imlib/include\keys.hpp
src\wat\opt\demo.obj : ../imlib/include\event.hpp
src\wat\opt\demo.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\demo.obj : ../imlib/include\specs.hpp
src\wat\opt\demo.obj : ../imlib/include\palette.hpp
src\wat\opt\demo.obj : ../imlib/include\linked.hpp
src\wat\opt\demo.obj : ../imlib/include\image.hpp
src\wat\opt\demo.obj : ../imlib/include\system.h
src\wat\opt\demo.obj : ../imlib/include\video.hpp
src\wat\opt\demo.obj : ../imlib/include\jwindow.hpp
src\wat\opt\demo.obj : inc\demo.hpp
src\wat\opt\lcache.obj : src\lcache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lcache.c -fo=src\wat\opt\lcache.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\lcache.obj : inc\bus_type.hpp
src\wat\opt\lcache.obj : ../imlib/include\system.h
src\wat\opt\lcache.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\lcache.obj : ../imlib/include\linked.hpp
src\wat\opt\lcache.obj : ../imlib/include\specs.hpp
src\wat\opt\lcache.obj : ../imlib/include\timing.hpp
src\wat\opt\lcache.obj : inc\lisp_opt.hpp
src\wat\opt\lcache.obj : inc\lisp.hpp
src\wat\opt\lisp_gc.obj : src\lisp_gc.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp_gc.c -fo=src\wat\opt\lisp_gc.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\lisp_gc.obj : inc\stack.hpp
src\wat\opt\lisp_gc.obj : ../imlib/include\system.h
src\wat\opt\lisp_gc.obj : ../imlib/include\macs.hpp
src\wat\opt\lisp_gc.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\lisp_gc.obj : inc\fakelib.hpp
src\wat\opt\lisp_gc.obj : ../imlib/include\timing.hpp
src\wat\opt\lisp_gc.obj : inc\lisp_opt.hpp
src\wat\opt\lisp_gc.obj : inc\lisp.hpp
src\wat\opt\nfclient.obj : src\nfclient.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\nfclient.c -fo=src\wat\opt\nfclient.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\nfclient.obj : src/net/unix\ghandler.hpp
src\wat\opt\nfclient.obj : src/net/unix\gserver.hpp
src\wat\opt\nfclient.obj : ../imlib/include\timing.hpp
src\wat\opt\nfclient.obj : inc\lisp_opt.hpp
src\wat\opt\nfclient.obj : inc\lisp.hpp
src\wat\opt\nfclient.obj : inc\particle.hpp
src\wat\opt\nfclient.obj : ../imlib/include\sound.hpp
src\wat\opt\nfclient.obj : ../imlib/include\filter.hpp
src\wat\opt\nfclient.obj : ../imlib/include\timage.hpp
src\wat\opt\nfclient.obj : inc\points.hpp
src\wat\opt\nfclient.obj : ../imlib/include\palette.hpp
src\wat\opt\nfclient.obj : ../imlib/include\image.hpp
src\wat\opt\nfclient.obj : inc\items.hpp
src\wat\opt\nfclient.obj : inc\cache.hpp
src\wat\opt\nfclient.obj : ../imlib/include\macs.hpp
src\wat\opt\nfclient.obj : inc\crc.hpp
src\wat\opt\nfclient.obj : ../imlib/include\dprint.hpp
src\wat\opt\nfclient.obj : src/net/inc\sock.hpp
src\wat\opt\nfclient.obj : inc\nfserver.hpp
src\wat\opt\nfclient.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\nfclient.obj : ../imlib/include\linked.hpp
src\wat\opt\nfclient.obj : ../imlib/include\specs.hpp
src\wat\opt\nfclient.obj : src/net/inc\indian.hpp
src\wat\opt\nfclient.obj : inc\netface.hpp
src\wat\opt\nfclient.obj : ../imlib/include\system.h
src\wat\opt\username.obj : src\username.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\username.c -fo=src\wat\opt\username.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\username.obj : src\username.c
src\wat\opt\clisp.obj : src\clisp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\clisp.c -fo=src\wat\opt\clisp.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\clisp.obj : inc\netcfg.hpp
src\wat\opt\clisp.obj : ../imlib/include\jdir.hpp
src\wat\opt\clisp.obj : inc\text_gui.hpp
src\wat\opt\clisp.obj : inc\chat.hpp
src\wat\opt\clisp.obj : inc\demo.hpp
src\wat\opt\clisp.obj : ../imlib/include\joy.hpp
src\wat\opt\clisp.obj : src/net/inc\sock.hpp
src\wat\opt\clisp.obj : src/net/inc\indian.hpp
src\wat\opt\clisp.obj : inc\netface.hpp
src\wat\opt\clisp.obj : inc\nfserver.hpp
src\wat\opt\clisp.obj : inc\loadgame.hpp
src\wat\opt\clisp.obj : inc\cop.hpp
src\wat\opt\clisp.obj : inc\fakelib.hpp
src\wat\opt\clisp.obj : inc\stack.hpp
src\wat\opt\clisp.obj : inc\lisp_gc.hpp
src\wat\opt\clisp.obj : inc\clisp.hpp
src\wat\opt\clisp.obj : ../imlib/include\dprint.hpp
src\wat\opt\clisp.obj : inc\menu.hpp
src\wat\opt\clisp.obj : ../imlib/include\pcxread.hpp
src\wat\opt\clisp.obj : inc\console.hpp
src\wat\opt\clisp.obj : inc\dev.hpp
src\wat\opt\clisp.obj : ../imlib/include\jrand.hpp
src\wat\opt\clisp.obj : inc\director.hpp
src\wat\opt\clisp.obj : inc\id.hpp
src\wat\opt\clisp.obj : inc\extend.hpp
src\wat\opt\clisp.obj : inc\crc.hpp
src\wat\opt\clisp.obj : inc\light.hpp
src\wat\opt\clisp.obj : inc\view.hpp
src\wat\opt\clisp.obj : inc\config.hpp
src\wat\opt\clisp.obj : ../imlib/include\supmorph.hpp
src\wat\opt\clisp.obj : inc\morpher.hpp
src\wat\opt\clisp.obj : inc\ability.hpp
src\wat\opt\clisp.obj : inc\particle.hpp
src\wat\opt\clisp.obj : inc\cache.hpp
src\wat\opt\clisp.obj : inc\seq.hpp
src\wat\opt\clisp.obj : inc\chars.hpp
src\wat\opt\clisp.obj : ../imlib/include\input.hpp
src\wat\opt\clisp.obj : inc\objects.hpp
src\wat\opt\clisp.obj : inc\level.hpp
src\wat\opt\clisp.obj : inc\points.hpp
src\wat\opt\clisp.obj : inc\items.hpp
src\wat\opt\clisp.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\clisp.obj : ../imlib/include\image24.hpp
src\wat\opt\clisp.obj : ../imlib/include\loader.hpp
src\wat\opt\clisp.obj : ../imlib/include\mdlread.hpp
src\wat\opt\clisp.obj : ../imlib/include\sound.hpp
src\wat\opt\clisp.obj : ../imlib/include\timage.hpp
src\wat\opt\clisp.obj : ../imlib/include\fonts.hpp
src\wat\opt\clisp.obj : ../imlib/include\filter.hpp
src\wat\opt\clisp.obj : ../imlib/include\mouse.hpp
src\wat\opt\clisp.obj : ../imlib/include\macs.hpp
src\wat\opt\clisp.obj : ../imlib/include\sprite.hpp
src\wat\opt\clisp.obj : ../imlib/include\keys.hpp
src\wat\opt\clisp.obj : ../imlib/include\event.hpp
src\wat\opt\clisp.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\clisp.obj : ../imlib/include\specs.hpp
src\wat\opt\clisp.obj : ../imlib/include\palette.hpp
src\wat\opt\clisp.obj : ../imlib/include\linked.hpp
src\wat\opt\clisp.obj : ../imlib/include\image.hpp
src\wat\opt\clisp.obj : ../imlib/include\system.h
src\wat\opt\clisp.obj : ../imlib/include\video.hpp
src\wat\opt\clisp.obj : ../imlib/include\jwindow.hpp
src\wat\opt\clisp.obj : inc\loader2.hpp
src\wat\opt\clisp.obj : inc\game.hpp
src\wat\opt\clisp.obj : ../imlib/include\timing.hpp
src\wat\opt\clisp.obj : inc\lisp_opt.hpp
src\wat\opt\clisp.obj : inc\lisp.hpp
src\wat\opt\clisp.obj : inc\ant.hpp
src\wat\opt\gui.obj : src\gui.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\gui.c -fo=src\wat\opt\gui.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\gui.obj : inc\loader2.hpp
src\wat\opt\gui.obj : ../imlib/include\fonts.hpp
src\wat\opt\gui.obj : ../imlib/include\mouse.hpp
src\wat\opt\gui.obj : ../imlib/include\sprite.hpp
src\wat\opt\gui.obj : ../imlib/include\keys.hpp
src\wat\opt\gui.obj : ../imlib/include\event.hpp
src\wat\opt\gui.obj : ../imlib/include\video.hpp
src\wat\opt\gui.obj : ../imlib/include\jwindow.hpp
src\wat\opt\gui.obj : inc\gui.hpp
src\wat\opt\gui.obj : ../imlib/include\timing.hpp
src\wat\opt\gui.obj : inc\lisp_opt.hpp
src\wat\opt\gui.obj : inc\lisp.hpp
src\wat\opt\gui.obj : inc\particle.hpp
src\wat\opt\gui.obj : ../imlib/include\sound.hpp
src\wat\opt\gui.obj : ../imlib/include\filter.hpp
src\wat\opt\gui.obj : ../imlib/include\macs.hpp
src\wat\opt\gui.obj : ../imlib/include\timage.hpp
src\wat\opt\gui.obj : inc\points.hpp
src\wat\opt\gui.obj : ../imlib/include\palette.hpp
src\wat\opt\gui.obj : ../imlib/include\image.hpp
src\wat\opt\gui.obj : inc\items.hpp
src\wat\opt\gui.obj : ../imlib/include\system.h
src\wat\opt\gui.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\gui.obj : ../imlib/include\linked.hpp
src\wat\opt\gui.obj : ../imlib/include\specs.hpp
src\wat\opt\gui.obj : inc\cache.hpp
src\wat\opt\transp.obj : src\transp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\transp.c -fo=src\wat\opt\transp.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\transp.obj : ../imlib/include\macs.hpp
src\wat\opt\transp.obj : ../imlib/include\system.h
src\wat\opt\transp.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\transp.obj : ../imlib/include\specs.hpp
src\wat\opt\transp.obj : ../imlib/include\palette.hpp
src\wat\opt\transp.obj : ../imlib/include\linked.hpp
src\wat\opt\transp.obj : ../imlib/include\image.hpp
src\wat\opt\transp.obj : inc\transp.hpp
src\wat\opt\collide.obj : src\collide.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\collide.c -fo=src\wat\opt\collide.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\collide.obj : inc\intsect.hpp
src\wat\opt\collide.obj : inc\id.hpp
src\wat\opt\collide.obj : inc\extend.hpp
src\wat\opt\collide.obj : inc\crc.hpp
src\wat\opt\collide.obj : inc\light.hpp
src\wat\opt\collide.obj : inc\view.hpp
src\wat\opt\collide.obj : inc\loader2.hpp
src\wat\opt\collide.obj : inc\config.hpp
src\wat\opt\collide.obj : ../imlib/include\supmorph.hpp
src\wat\opt\collide.obj : inc\morpher.hpp
src\wat\opt\collide.obj : inc\ability.hpp
src\wat\opt\collide.obj : ../imlib/include\timing.hpp
src\wat\opt\collide.obj : inc\lisp_opt.hpp
src\wat\opt\collide.obj : inc\lisp.hpp
src\wat\opt\collide.obj : inc\particle.hpp
src\wat\opt\collide.obj : ../imlib/include\sound.hpp
src\wat\opt\collide.obj : inc\cache.hpp
src\wat\opt\collide.obj : inc\points.hpp
src\wat\opt\collide.obj : inc\items.hpp
src\wat\opt\collide.obj : inc\seq.hpp
src\wat\opt\collide.obj : inc\chars.hpp
src\wat\opt\collide.obj : ../imlib/include\timage.hpp
src\wat\opt\collide.obj : ../imlib/include\fonts.hpp
src\wat\opt\collide.obj : ../imlib/include\filter.hpp
src\wat\opt\collide.obj : ../imlib/include\mouse.hpp
src\wat\opt\collide.obj : ../imlib/include\sprite.hpp
src\wat\opt\collide.obj : ../imlib/include\keys.hpp
src\wat\opt\collide.obj : ../imlib/include\event.hpp
src\wat\opt\collide.obj : ../imlib/include\palette.hpp
src\wat\opt\collide.obj : ../imlib/include\image.hpp
src\wat\opt\collide.obj : ../imlib/include\video.hpp
src\wat\opt\collide.obj : ../imlib/include\jwindow.hpp
src\wat\opt\collide.obj : ../imlib/include\input.hpp
src\wat\opt\collide.obj : inc\objects.hpp
src\wat\opt\collide.obj : ../imlib/include\macs.hpp
src\wat\opt\collide.obj : ../imlib/include\system.h
src\wat\opt\collide.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\collide.obj : ../imlib/include\linked.hpp
src\wat\opt\collide.obj : ../imlib/include\specs.hpp
src\wat\opt\collide.obj : inc\level.hpp
src\wat\opt\trig.obj : src\trig.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\trig.c -fo=src\wat\opt\trig.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\trig.obj : src\trig.c
src\wat\opt\property.obj : src\property.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\property.c -fo=src\wat\opt\property.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\property.obj : ../imlib/include\dprint.hpp
src\wat\opt\property.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\property.obj : inc\property.hpp
src\wat\opt\lisp.obj : src\lisp.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\lisp.c -fo=src\wat\opt\lisp.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\lisp.obj : inc\console.hpp
src\wat\opt\lisp.obj : inc\director.hpp
src\wat\opt\lisp.obj : inc\id.hpp
src\wat\opt\lisp.obj : inc\extend.hpp
src\wat\opt\lisp.obj : inc\crc.hpp
src\wat\opt\lisp.obj : inc\light.hpp
src\wat\opt\lisp.obj : inc\view.hpp
src\wat\opt\lisp.obj : inc\config.hpp
src\wat\opt\lisp.obj : ../imlib/include\supmorph.hpp
src\wat\opt\lisp.obj : inc\morpher.hpp
src\wat\opt\lisp.obj : inc\ability.hpp
src\wat\opt\lisp.obj : inc\seq.hpp
src\wat\opt\lisp.obj : inc\chars.hpp
src\wat\opt\lisp.obj : ../imlib/include\input.hpp
src\wat\opt\lisp.obj : inc\objects.hpp
src\wat\opt\lisp.obj : inc\level.hpp
src\wat\opt\lisp.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\lisp.obj : ../imlib/include\image24.hpp
src\wat\opt\lisp.obj : ../imlib/include\loader.hpp
src\wat\opt\lisp.obj : ../imlib/include\mdlread.hpp
src\wat\opt\lisp.obj : inc\loader2.hpp
src\wat\opt\lisp.obj : inc\game.hpp
src\wat\opt\lisp.obj : inc\dev.hpp
src\wat\opt\lisp.obj : inc\particle.hpp
src\wat\opt\lisp.obj : ../imlib/include\sound.hpp
src\wat\opt\lisp.obj : inc\points.hpp
src\wat\opt\lisp.obj : inc\items.hpp
src\wat\opt\lisp.obj : inc\cache.hpp
src\wat\opt\lisp.obj : ../imlib/include\dprint.hpp
src\wat\opt\lisp.obj : ../imlib/include\timage.hpp
src\wat\opt\lisp.obj : ../imlib/include\fonts.hpp
src\wat\opt\lisp.obj : ../imlib/include\filter.hpp
src\wat\opt\lisp.obj : ../imlib/include\mouse.hpp
src\wat\opt\lisp.obj : ../imlib/include\macs.hpp
src\wat\opt\lisp.obj : ../imlib/include\sprite.hpp
src\wat\opt\lisp.obj : ../imlib/include\keys.hpp
src\wat\opt\lisp.obj : ../imlib/include\event.hpp
src\wat\opt\lisp.obj : ../imlib/include\specs.hpp
src\wat\opt\lisp.obj : ../imlib/include\palette.hpp
src\wat\opt\lisp.obj : ../imlib/include\linked.hpp
src\wat\opt\lisp.obj : ../imlib/include\image.hpp
src\wat\opt\lisp.obj : ../imlib/include\system.h
src\wat\opt\lisp.obj : ../imlib/include\video.hpp
src\wat\opt\lisp.obj : ../imlib/include\jwindow.hpp
src\wat\opt\lisp.obj : ../imlib/include\visobj.hpp
src\wat\opt\lisp.obj : ../imlib/include\status.hpp
src\wat\opt\lisp.obj : inc\fakelib.hpp
src\wat\opt\lisp.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\lisp.obj : inc\stack.hpp
src\wat\opt\lisp.obj : inc\lisp_gc.hpp
src\wat\opt\lisp.obj : ../imlib/include\timing.hpp
src\wat\opt\lisp.obj : inc\lisp_opt.hpp
src\wat\opt\lisp.obj : inc\lisp.hpp
src\wat\opt\lisp.obj : inc\bus_type.hpp
src\wat\opt\cache.obj : src\cache.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\cache.c -fo=src\wat\opt\cache.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\cache.obj : inc\specache.hpp
src\wat\opt\cache.obj : inc\fakelib.hpp
src\wat\opt\cache.obj : inc\stack.hpp
src\wat\opt\cache.obj : inc\lisp_gc.hpp
src\wat\opt\cache.obj : inc\director.hpp
src\wat\opt\cache.obj : inc\id.hpp
src\wat\opt\cache.obj : inc\extend.hpp
src\wat\opt\cache.obj : inc\crc.hpp
src\wat\opt\cache.obj : inc\light.hpp
src\wat\opt\cache.obj : inc\view.hpp
src\wat\opt\cache.obj : inc\config.hpp
src\wat\opt\cache.obj : ../imlib/include\supmorph.hpp
src\wat\opt\cache.obj : inc\morpher.hpp
src\wat\opt\cache.obj : inc\ability.hpp
src\wat\opt\cache.obj : inc\seq.hpp
src\wat\opt\cache.obj : inc\chars.hpp
src\wat\opt\cache.obj : ../imlib/include\input.hpp
src\wat\opt\cache.obj : inc\objects.hpp
src\wat\opt\cache.obj : inc\level.hpp
src\wat\opt\cache.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\cache.obj : ../imlib/include\image24.hpp
src\wat\opt\cache.obj : ../imlib/include\loader.hpp
src\wat\opt\cache.obj : ../imlib/include\mdlread.hpp
src\wat\opt\cache.obj : inc\loader2.hpp
src\wat\opt\cache.obj : inc\game.hpp
src\wat\opt\cache.obj : ../imlib/include\fonts.hpp
src\wat\opt\cache.obj : ../imlib/include\mouse.hpp
src\wat\opt\cache.obj : ../imlib/include\sprite.hpp
src\wat\opt\cache.obj : ../imlib/include\keys.hpp
src\wat\opt\cache.obj : ../imlib/include\event.hpp
src\wat\opt\cache.obj : ../imlib/include\jwindow.hpp
src\wat\opt\cache.obj : ../imlib/include\visobj.hpp
src\wat\opt\cache.obj : ../imlib/include\status.hpp
src\wat\opt\cache.obj : inc\lcache.hpp
src\wat\opt\cache.obj : ../imlib/include\exitproc.hpp
src\wat\opt\cache.obj : ../imlib/include\dprint.hpp
src\wat\opt\cache.obj : ../imlib/include\video.hpp
src\wat\opt\cache.obj : ../imlib/include\timing.hpp
src\wat\opt\cache.obj : inc\lisp_opt.hpp
src\wat\opt\cache.obj : inc\lisp.hpp
src\wat\opt\cache.obj : inc\particle.hpp
src\wat\opt\cache.obj : ../imlib/include\sound.hpp
src\wat\opt\cache.obj : ../imlib/include\filter.hpp
src\wat\opt\cache.obj : ../imlib/include\macs.hpp
src\wat\opt\cache.obj : ../imlib/include\timage.hpp
src\wat\opt\cache.obj : inc\points.hpp
src\wat\opt\cache.obj : ../imlib/include\palette.hpp
src\wat\opt\cache.obj : ../imlib/include\image.hpp
src\wat\opt\cache.obj : inc\items.hpp
src\wat\opt\cache.obj : ../imlib/include\system.h
src\wat\opt\cache.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\cache.obj : ../imlib/include\linked.hpp
src\wat\opt\cache.obj : ../imlib/include\specs.hpp
src\wat\opt\cache.obj : inc\cache.hpp
src\wat\opt\particle.obj : src\particle.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\particle.c -fo=src\wat\opt\particle.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\particle.obj : ../imlib/include\jrand.hpp
src\wat\opt\particle.obj : ../imlib/include\sound.hpp
src\wat\opt\particle.obj : inc\points.hpp
src\wat\opt\particle.obj : inc\items.hpp
src\wat\opt\particle.obj : inc\cache.hpp
src\wat\opt\particle.obj : ../imlib/include\timing.hpp
src\wat\opt\particle.obj : inc\lisp_opt.hpp
src\wat\opt\particle.obj : inc\lisp.hpp
src\wat\opt\particle.obj : ../imlib/include\timage.hpp
src\wat\opt\particle.obj : ../imlib/include\fonts.hpp
src\wat\opt\particle.obj : ../imlib/include\filter.hpp
src\wat\opt\particle.obj : ../imlib/include\mouse.hpp
src\wat\opt\particle.obj : ../imlib/include\sprite.hpp
src\wat\opt\particle.obj : ../imlib/include\keys.hpp
src\wat\opt\particle.obj : ../imlib/include\event.hpp
src\wat\opt\particle.obj : ../imlib/include\video.hpp
src\wat\opt\particle.obj : ../imlib/include\jwindow.hpp
src\wat\opt\particle.obj : inc\crc.hpp
src\wat\opt\particle.obj : inc\config.hpp
src\wat\opt\particle.obj : inc\light.hpp
src\wat\opt\particle.obj : inc\view.hpp
src\wat\opt\particle.obj : ../imlib/include\palette.hpp
src\wat\opt\particle.obj : ../imlib/include\image.hpp
src\wat\opt\particle.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\particle.obj : ../imlib/include\linked.hpp
src\wat\opt\particle.obj : ../imlib/include\specs.hpp
src\wat\opt\particle.obj : inc\particle.hpp
src\wat\opt\particle.obj : ../imlib/include\system.h
src\wat\opt\particle.obj : ../imlib/include\macs.hpp
src\wat\opt\objects.obj : src\objects.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\objects.c -fo=src\wat\opt\objects.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\objects.obj : inc\profile.hpp
src\wat\opt\objects.obj : inc\fakelib.hpp
src\wat\opt\objects.obj : inc\stack.hpp
src\wat\opt\objects.obj : inc\lisp_gc.hpp
src\wat\opt\objects.obj : inc\clisp.hpp
src\wat\opt\objects.obj : ../imlib/include\dprint.hpp
src\wat\opt\objects.obj : ../imlib/include\jrand.hpp
src\wat\opt\objects.obj : inc\intsect.hpp
src\wat\opt\objects.obj : inc\director.hpp
src\wat\opt\objects.obj : inc\id.hpp
src\wat\opt\objects.obj : inc\level.hpp
src\wat\opt\objects.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\objects.obj : ../imlib/include\image24.hpp
src\wat\opt\objects.obj : ../imlib/include\loader.hpp
src\wat\opt\objects.obj : ../imlib/include\mdlread.hpp
src\wat\opt\objects.obj : inc\game.hpp
src\wat\opt\objects.obj : inc\extend.hpp
src\wat\opt\objects.obj : inc\crc.hpp
src\wat\opt\objects.obj : inc\light.hpp
src\wat\opt\objects.obj : inc\view.hpp
src\wat\opt\objects.obj : inc\loader2.hpp
src\wat\opt\objects.obj : inc\config.hpp
src\wat\opt\objects.obj : ../imlib/include\supmorph.hpp
src\wat\opt\objects.obj : inc\morpher.hpp
src\wat\opt\objects.obj : inc\ability.hpp
src\wat\opt\objects.obj : ../imlib/include\timing.hpp
src\wat\opt\objects.obj : inc\lisp_opt.hpp
src\wat\opt\objects.obj : inc\lisp.hpp
src\wat\opt\objects.obj : inc\particle.hpp
src\wat\opt\objects.obj : ../imlib/include\sound.hpp
src\wat\opt\objects.obj : inc\cache.hpp
src\wat\opt\objects.obj : inc\points.hpp
src\wat\opt\objects.obj : inc\items.hpp
src\wat\opt\objects.obj : inc\seq.hpp
src\wat\opt\objects.obj : inc\chars.hpp
src\wat\opt\objects.obj : ../imlib/include\fonts.hpp
src\wat\opt\objects.obj : ../imlib/include\mouse.hpp
src\wat\opt\objects.obj : ../imlib/include\sprite.hpp
src\wat\opt\objects.obj : ../imlib/include\keys.hpp
src\wat\opt\objects.obj : ../imlib/include\event.hpp
src\wat\opt\objects.obj : ../imlib/include\video.hpp
src\wat\opt\objects.obj : ../imlib/include\jwindow.hpp
src\wat\opt\objects.obj : ../imlib/include\input.hpp
src\wat\opt\objects.obj : inc\objects.hpp
src\wat\opt\objects.obj : ../imlib/include\filter.hpp
src\wat\opt\objects.obj : ../imlib/include\macs.hpp
src\wat\opt\objects.obj : ../imlib/include\system.h
src\wat\opt\objects.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\objects.obj : ../imlib/include\specs.hpp
src\wat\opt\objects.obj : ../imlib/include\palette.hpp
src\wat\opt\objects.obj : ../imlib/include\linked.hpp
src\wat\opt\objects.obj : ../imlib/include\image.hpp
src\wat\opt\objects.obj : ../imlib/include\timage.hpp
src\wat\opt\extend.obj : src\extend.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\extend.c -fo=src\wat\opt\extend.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\extend.obj : inc\loader2.hpp
src\wat\opt\extend.obj : ../imlib/include\input.hpp
src\wat\opt\extend.obj : inc\objects.hpp
src\wat\opt\extend.obj : ../imlib/include\fonts.hpp
src\wat\opt\extend.obj : ../imlib/include\video.hpp
src\wat\opt\extend.obj : ../imlib/include\jwindow.hpp
src\wat\opt\extend.obj : inc\crc.hpp
src\wat\opt\extend.obj : inc\light.hpp
src\wat\opt\extend.obj : inc\view.hpp
src\wat\opt\extend.obj : ../imlib/include\mouse.hpp
src\wat\opt\extend.obj : ../imlib/include\sprite.hpp
src\wat\opt\extend.obj : ../imlib/include\keys.hpp
src\wat\opt\extend.obj : ../imlib/include\event.hpp
src\wat\opt\extend.obj : inc\ability.hpp
src\wat\opt\extend.obj : ../imlib/include\timing.hpp
src\wat\opt\extend.obj : inc\lisp_opt.hpp
src\wat\opt\extend.obj : inc\lisp.hpp
src\wat\opt\extend.obj : inc\particle.hpp
src\wat\opt\extend.obj : ../imlib/include\sound.hpp
src\wat\opt\extend.obj : inc\cache.hpp
src\wat\opt\extend.obj : inc\points.hpp
src\wat\opt\extend.obj : inc\items.hpp
src\wat\opt\extend.obj : inc\seq.hpp
src\wat\opt\extend.obj : inc\chars.hpp
src\wat\opt\extend.obj : inc\config.hpp
src\wat\opt\extend.obj : ../imlib/include\filter.hpp
src\wat\opt\extend.obj : ../imlib/include\specs.hpp
src\wat\opt\extend.obj : ../imlib/include\palette.hpp
src\wat\opt\extend.obj : ../imlib/include\linked.hpp
src\wat\opt\extend.obj : ../imlib/include\image.hpp
src\wat\opt\extend.obj : ../imlib/include\timage.hpp
src\wat\opt\extend.obj : ../imlib/include\supmorph.hpp
src\wat\opt\extend.obj : inc\morpher.hpp
src\wat\opt\extend.obj : ../imlib/include\system.h
src\wat\opt\extend.obj : ../imlib/include\macs.hpp
src\wat\opt\extend.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\extend.obj : inc\extend.hpp
src\wat\opt\console.obj : src\console.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\console.c -fo=src\wat\opt\console.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\console.obj : ../imlib/include\timage.hpp
src\wat\opt\console.obj : ../imlib/include\fonts.hpp
src\wat\opt\console.obj : ../imlib/include\filter.hpp
src\wat\opt\console.obj : ../imlib/include\mouse.hpp
src\wat\opt\console.obj : ../imlib/include\macs.hpp
src\wat\opt\console.obj : ../imlib/include\sprite.hpp
src\wat\opt\console.obj : ../imlib/include\keys.hpp
src\wat\opt\console.obj : ../imlib/include\event.hpp
src\wat\opt\console.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\console.obj : ../imlib/include\specs.hpp
src\wat\opt\console.obj : ../imlib/include\palette.hpp
src\wat\opt\console.obj : ../imlib/include\image.hpp
src\wat\opt\console.obj : ../imlib/include\system.h
src\wat\opt\console.obj : ../imlib/include\video.hpp
src\wat\opt\console.obj : ../imlib/include\jwindow.hpp
src\wat\opt\console.obj : inc\console.hpp
src\wat\opt\console.obj : ../imlib/include\linked.hpp
src\wat\opt\ability.obj : src\ability.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\ability.c -fo=src\wat\opt\ability.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\ability.obj : ../imlib/include\mouse.hpp
src\wat\opt\ability.obj : ../imlib/include\sprite.hpp
src\wat\opt\ability.obj : ../imlib/include\keys.hpp
src\wat\opt\ability.obj : ../imlib/include\event.hpp
src\wat\opt\ability.obj : ../imlib/include\timing.hpp
src\wat\opt\ability.obj : inc\lisp_opt.hpp
src\wat\opt\ability.obj : inc\lisp.hpp
src\wat\opt\ability.obj : inc\particle.hpp
src\wat\opt\ability.obj : ../imlib/include\sound.hpp
src\wat\opt\ability.obj : inc\cache.hpp
src\wat\opt\ability.obj : ../imlib/include\filter.hpp
src\wat\opt\ability.obj : ../imlib/include\macs.hpp
src\wat\opt\ability.obj : ../imlib/include\timage.hpp
src\wat\opt\ability.obj : inc\points.hpp
src\wat\opt\ability.obj : inc\items.hpp
src\wat\opt\ability.obj : ../imlib/include\system.h
src\wat\opt\ability.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\ability.obj : ../imlib/include\specs.hpp
src\wat\opt\ability.obj : ../imlib/include\palette.hpp
src\wat\opt\ability.obj : ../imlib/include\linked.hpp
src\wat\opt\ability.obj : ../imlib/include\image.hpp
src\wat\opt\ability.obj : inc\seq.hpp
src\wat\opt\ability.obj : inc\chars.hpp
src\wat\opt\ability.obj : inc\ability.hpp
src\wat\opt\items.obj : src\items.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\items.c -fo=src\wat\opt\items.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\items.obj : inc\console.hpp
src\wat\opt\items.obj : inc\director.hpp
src\wat\opt\items.obj : inc\id.hpp
src\wat\opt\items.obj : inc\extend.hpp
src\wat\opt\items.obj : inc\crc.hpp
src\wat\opt\items.obj : inc\light.hpp
src\wat\opt\items.obj : inc\view.hpp
src\wat\opt\items.obj : inc\config.hpp
src\wat\opt\items.obj : ../imlib/include\supmorph.hpp
src\wat\opt\items.obj : inc\morpher.hpp
src\wat\opt\items.obj : inc\ability.hpp
src\wat\opt\items.obj : inc\particle.hpp
src\wat\opt\items.obj : inc\cache.hpp
src\wat\opt\items.obj : inc\seq.hpp
src\wat\opt\items.obj : inc\chars.hpp
src\wat\opt\items.obj : ../imlib/include\input.hpp
src\wat\opt\items.obj : inc\objects.hpp
src\wat\opt\items.obj : inc\level.hpp
src\wat\opt\items.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\items.obj : ../imlib/include\image24.hpp
src\wat\opt\items.obj : ../imlib/include\loader.hpp
src\wat\opt\items.obj : ../imlib/include\mdlread.hpp
src\wat\opt\items.obj : ../imlib/include\sound.hpp
src\wat\opt\items.obj : ../imlib/include\fonts.hpp
src\wat\opt\items.obj : ../imlib/include\mouse.hpp
src\wat\opt\items.obj : ../imlib/include\sprite.hpp
src\wat\opt\items.obj : ../imlib/include\keys.hpp
src\wat\opt\items.obj : ../imlib/include\event.hpp
src\wat\opt\items.obj : ../imlib/include\video.hpp
src\wat\opt\items.obj : ../imlib/include\jwindow.hpp
src\wat\opt\items.obj : inc\loader2.hpp
src\wat\opt\items.obj : inc\game.hpp
src\wat\opt\items.obj : inc\dev.hpp
src\wat\opt\items.obj : ../imlib/include\timing.hpp
src\wat\opt\items.obj : inc\lisp_opt.hpp
src\wat\opt\items.obj : inc\lisp.hpp
src\wat\opt\items.obj : ../imlib/include\filter.hpp
src\wat\opt\items.obj : ../imlib/include\macs.hpp
src\wat\opt\items.obj : ../imlib/include\timage.hpp
src\wat\opt\items.obj : inc\points.hpp
src\wat\opt\items.obj : ../imlib/include\system.h
src\wat\opt\items.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\items.obj : ../imlib/include\specs.hpp
src\wat\opt\items.obj : ../imlib/include\palette.hpp
src\wat\opt\items.obj : ../imlib/include\linked.hpp
src\wat\opt\items.obj : ../imlib/include\image.hpp
src\wat\opt\items.obj : inc\items.hpp
src\wat\opt\dev.obj : src\dev.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\dev.c -fo=src\wat\opt\dev.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\dev.obj : inc\chat.hpp
src\wat\opt\dev.obj : inc\compiled.hpp
src\wat\opt\dev.obj : inc\sbar.hpp
src\wat\opt\dev.obj : inc\profile.hpp
src\wat\opt\dev.obj : inc\demo.hpp
src\wat\opt\dev.obj : inc\fakelib.hpp
src\wat\opt\dev.obj : inc\stack.hpp
src\wat\opt\dev.obj : inc\lisp_gc.hpp
src\wat\opt\dev.obj : ../imlib/include\pcxread.hpp
src\wat\opt\dev.obj : ../imlib/include\visobj.hpp
src\wat\opt\dev.obj : ../imlib/include\tools.hpp
src\wat\opt\dev.obj : ../imlib/include\filesel.hpp
src\wat\opt\dev.obj : ../imlib/include\pmenu.hpp
src\wat\opt\dev.obj : inc\property.hpp
src\wat\opt\dev.obj : ../imlib/include\dprint.hpp
src\wat\opt\dev.obj : ../imlib/include\scroller.hpp
src\wat\opt\dev.obj : inc\devsel.hpp
src\wat\opt\dev.obj : inc\console.hpp
src\wat\opt\dev.obj : inc\director.hpp
src\wat\opt\dev.obj : inc\id.hpp
src\wat\opt\dev.obj : inc\extend.hpp
src\wat\opt\dev.obj : inc\crc.hpp
src\wat\opt\dev.obj : inc\light.hpp
src\wat\opt\dev.obj : inc\view.hpp
src\wat\opt\dev.obj : inc\config.hpp
src\wat\opt\dev.obj : ../imlib/include\supmorph.hpp
src\wat\opt\dev.obj : inc\morpher.hpp
src\wat\opt\dev.obj : inc\ability.hpp
src\wat\opt\dev.obj : inc\particle.hpp
src\wat\opt\dev.obj : inc\cache.hpp
src\wat\opt\dev.obj : inc\seq.hpp
src\wat\opt\dev.obj : inc\chars.hpp
src\wat\opt\dev.obj : ../imlib/include\input.hpp
src\wat\opt\dev.obj : inc\objects.hpp
src\wat\opt\dev.obj : inc\level.hpp
src\wat\opt\dev.obj : inc\points.hpp
src\wat\opt\dev.obj : inc\items.hpp
src\wat\opt\dev.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\dev.obj : ../imlib/include\image24.hpp
src\wat\opt\dev.obj : ../imlib/include\loader.hpp
src\wat\opt\dev.obj : ../imlib/include\mdlread.hpp
src\wat\opt\dev.obj : ../imlib/include\sound.hpp
src\wat\opt\dev.obj : ../imlib/include\timing.hpp
src\wat\opt\dev.obj : inc\lisp_opt.hpp
src\wat\opt\dev.obj : inc\lisp.hpp
src\wat\opt\dev.obj : ../imlib/include\timage.hpp
src\wat\opt\dev.obj : ../imlib/include\fonts.hpp
src\wat\opt\dev.obj : ../imlib/include\filter.hpp
src\wat\opt\dev.obj : ../imlib/include\mouse.hpp
src\wat\opt\dev.obj : ../imlib/include\macs.hpp
src\wat\opt\dev.obj : ../imlib/include\sprite.hpp
src\wat\opt\dev.obj : ../imlib/include\keys.hpp
src\wat\opt\dev.obj : ../imlib/include\event.hpp
src\wat\opt\dev.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\dev.obj : ../imlib/include\specs.hpp
src\wat\opt\dev.obj : ../imlib/include\palette.hpp
src\wat\opt\dev.obj : ../imlib/include\linked.hpp
src\wat\opt\dev.obj : ../imlib/include\image.hpp
src\wat\opt\dev.obj : ../imlib/include\system.h
src\wat\opt\dev.obj : ../imlib/include\video.hpp
src\wat\opt\dev.obj : ../imlib/include\jwindow.hpp
src\wat\opt\dev.obj : inc\loader2.hpp
src\wat\opt\dev.obj : inc\game.hpp
src\wat\opt\dev.obj : inc\dev.hpp
src\wat\opt\chars.obj : src\chars.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\chars.c -fo=src\wat\opt\chars.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\chars.obj : inc\fakelib.hpp
src\wat\opt\chars.obj : inc\stack.hpp
src\wat\opt\chars.obj : inc\lisp_gc.hpp
src\wat\opt\chars.obj : ../imlib/include\dprint.hpp
src\wat\opt\chars.obj : inc\clisp.hpp
src\wat\opt\chars.obj : inc\intsect.hpp
src\wat\opt\chars.obj : inc\director.hpp
src\wat\opt\chars.obj : inc\id.hpp
src\wat\opt\chars.obj : inc\extend.hpp
src\wat\opt\chars.obj : inc\crc.hpp
src\wat\opt\chars.obj : inc\light.hpp
src\wat\opt\chars.obj : inc\view.hpp
src\wat\opt\chars.obj : inc\config.hpp
src\wat\opt\chars.obj : ../imlib/include\supmorph.hpp
src\wat\opt\chars.obj : inc\morpher.hpp
src\wat\opt\chars.obj : ../imlib/include\input.hpp
src\wat\opt\chars.obj : inc\objects.hpp
src\wat\opt\chars.obj : inc\level.hpp
src\wat\opt\chars.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\chars.obj : ../imlib/include\image24.hpp
src\wat\opt\chars.obj : ../imlib/include\loader.hpp
src\wat\opt\chars.obj : ../imlib/include\mdlread.hpp
src\wat\opt\chars.obj : ../imlib/include\fonts.hpp
src\wat\opt\chars.obj : ../imlib/include\video.hpp
src\wat\opt\chars.obj : ../imlib/include\jwindow.hpp
src\wat\opt\chars.obj : inc\loader2.hpp
src\wat\opt\chars.obj : inc\game.hpp
src\wat\opt\chars.obj : ../imlib/include\mouse.hpp
src\wat\opt\chars.obj : ../imlib/include\sprite.hpp
src\wat\opt\chars.obj : ../imlib/include\keys.hpp
src\wat\opt\chars.obj : ../imlib/include\event.hpp
src\wat\opt\chars.obj : inc\ability.hpp
src\wat\opt\chars.obj : ../imlib/include\timing.hpp
src\wat\opt\chars.obj : inc\lisp_opt.hpp
src\wat\opt\chars.obj : inc\lisp.hpp
src\wat\opt\chars.obj : inc\particle.hpp
src\wat\opt\chars.obj : ../imlib/include\sound.hpp
src\wat\opt\chars.obj : inc\cache.hpp
src\wat\opt\chars.obj : ../imlib/include\filter.hpp
src\wat\opt\chars.obj : ../imlib/include\macs.hpp
src\wat\opt\chars.obj : ../imlib/include\timage.hpp
src\wat\opt\chars.obj : inc\points.hpp
src\wat\opt\chars.obj : inc\items.hpp
src\wat\opt\chars.obj : ../imlib/include\system.h
src\wat\opt\chars.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\chars.obj : ../imlib/include\specs.hpp
src\wat\opt\chars.obj : ../imlib/include\palette.hpp
src\wat\opt\chars.obj : ../imlib/include\linked.hpp
src\wat\opt\chars.obj : ../imlib/include\image.hpp
src\wat\opt\chars.obj : inc\seq.hpp
src\wat\opt\chars.obj : inc\chars.hpp
src\wat\opt\level.obj : src\level.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\level.c -fo=src\wat\opt\level.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\level.obj : inc\fakelib.hpp
src\wat\opt\level.obj : inc\stack.hpp
src\wat\opt\level.obj : inc\lisp_gc.hpp
src\wat\opt\level.obj : src/net/inc\sock.hpp
src\wat\opt\level.obj : src/net/inc\indian.hpp
src\wat\opt\level.obj : inc\netface.hpp
src\wat\opt\level.obj : inc\nfserver.hpp
src\wat\opt\level.obj : inc\cop.hpp
src\wat\opt\level.obj : inc\sbar.hpp
src\wat\opt\level.obj : inc\profile.hpp
src\wat\opt\level.obj : ../imlib/include\pcxread.hpp
src\wat\opt\level.obj : inc\demo.hpp
src\wat\opt\level.obj : inc\console.hpp
src\wat\opt\level.obj : inc\dev.hpp
src\wat\opt\level.obj : ../imlib/include\visobj.hpp
src\wat\opt\level.obj : ../imlib/include\status.hpp
src\wat\opt\level.obj : inc\clisp.hpp
src\wat\opt\level.obj : ../imlib/include\jrand.hpp
src\wat\opt\level.obj : ../imlib/include\dprint.hpp
src\wat\opt\level.obj : inc\intsect.hpp
src\wat\opt\level.obj : inc\director.hpp
src\wat\opt\level.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\level.obj : ../imlib/include\image24.hpp
src\wat\opt\level.obj : ../imlib/include\loader.hpp
src\wat\opt\level.obj : ../imlib/include\mdlread.hpp
src\wat\opt\level.obj : inc\game.hpp
src\wat\opt\level.obj : inc\id.hpp
src\wat\opt\level.obj : inc\extend.hpp
src\wat\opt\level.obj : inc\view.hpp
src\wat\opt\level.obj : inc\loader2.hpp
src\wat\opt\level.obj : ../imlib/include\supmorph.hpp
src\wat\opt\level.obj : inc\morpher.hpp
src\wat\opt\level.obj : inc\ability.hpp
src\wat\opt\level.obj : ../imlib/include\timing.hpp
src\wat\opt\level.obj : inc\lisp_opt.hpp
src\wat\opt\level.obj : inc\lisp.hpp
src\wat\opt\level.obj : inc\particle.hpp
src\wat\opt\level.obj : ../imlib/include\sound.hpp
src\wat\opt\level.obj : inc\cache.hpp
src\wat\opt\level.obj : inc\points.hpp
src\wat\opt\level.obj : inc\items.hpp
src\wat\opt\level.obj : inc\seq.hpp
src\wat\opt\level.obj : inc\chars.hpp
src\wat\opt\level.obj : ../imlib/include\timage.hpp
src\wat\opt\level.obj : ../imlib/include\fonts.hpp
src\wat\opt\level.obj : ../imlib/include\filter.hpp
src\wat\opt\level.obj : ../imlib/include\mouse.hpp
src\wat\opt\level.obj : ../imlib/include\sprite.hpp
src\wat\opt\level.obj : ../imlib/include\keys.hpp
src\wat\opt\level.obj : ../imlib/include\event.hpp
src\wat\opt\level.obj : ../imlib/include\video.hpp
src\wat\opt\level.obj : ../imlib/include\jwindow.hpp
src\wat\opt\level.obj : ../imlib/include\input.hpp
src\wat\opt\level.obj : inc\objects.hpp
src\wat\opt\level.obj : inc\level.hpp
src\wat\opt\level.obj : ../imlib/include\macs.hpp
src\wat\opt\level.obj : inc\crc.hpp
src\wat\opt\level.obj : inc\config.hpp
src\wat\opt\level.obj : ../imlib/include\system.h
src\wat\opt\level.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\level.obj : ../imlib/include\specs.hpp
src\wat\opt\level.obj : ../imlib/include\palette.hpp
src\wat\opt\level.obj : ../imlib/include\linked.hpp
src\wat\opt\level.obj : ../imlib/include\image.hpp
src\wat\opt\level.obj : inc\light.hpp
src\wat\opt\smallfnt.obj : src\smallfnt.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\smallfnt.c -fo=src\wat\opt\smallfnt.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\smallfnt.obj : src\smallfnt.c
src\wat\opt\automap.obj : src\automap.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\automap.c -fo=src\wat\opt\automap.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\automap.obj : inc\director.hpp
src\wat\opt\automap.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\automap.obj : ../imlib/include\image24.hpp
src\wat\opt\automap.obj : ../imlib/include\loader.hpp
src\wat\opt\automap.obj : ../imlib/include\mdlread.hpp
src\wat\opt\automap.obj : inc\game.hpp
src\wat\opt\automap.obj : inc\id.hpp
src\wat\opt\automap.obj : inc\extend.hpp
src\wat\opt\automap.obj : inc\crc.hpp
src\wat\opt\automap.obj : inc\light.hpp
src\wat\opt\automap.obj : inc\view.hpp
src\wat\opt\automap.obj : inc\loader2.hpp
src\wat\opt\automap.obj : inc\config.hpp
src\wat\opt\automap.obj : ../imlib/include\supmorph.hpp
src\wat\opt\automap.obj : inc\morpher.hpp
src\wat\opt\automap.obj : inc\ability.hpp
src\wat\opt\automap.obj : ../imlib/include\timing.hpp
src\wat\opt\automap.obj : inc\lisp_opt.hpp
src\wat\opt\automap.obj : inc\lisp.hpp
src\wat\opt\automap.obj : inc\particle.hpp
src\wat\opt\automap.obj : ../imlib/include\sound.hpp
src\wat\opt\automap.obj : inc\cache.hpp
src\wat\opt\automap.obj : inc\points.hpp
src\wat\opt\automap.obj : inc\items.hpp
src\wat\opt\automap.obj : inc\seq.hpp
src\wat\opt\automap.obj : inc\chars.hpp
src\wat\opt\automap.obj : ../imlib/include\input.hpp
src\wat\opt\automap.obj : inc\objects.hpp
src\wat\opt\automap.obj : inc\level.hpp
src\wat\opt\automap.obj : ../imlib/include\timage.hpp
src\wat\opt\automap.obj : ../imlib/include\fonts.hpp
src\wat\opt\automap.obj : ../imlib/include\filter.hpp
src\wat\opt\automap.obj : ../imlib/include\mouse.hpp
src\wat\opt\automap.obj : ../imlib/include\macs.hpp
src\wat\opt\automap.obj : ../imlib/include\sprite.hpp
src\wat\opt\automap.obj : ../imlib/include\keys.hpp
src\wat\opt\automap.obj : ../imlib/include\event.hpp
src\wat\opt\automap.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\automap.obj : ../imlib/include\specs.hpp
src\wat\opt\automap.obj : ../imlib/include\palette.hpp
src\wat\opt\automap.obj : ../imlib/include\linked.hpp
src\wat\opt\automap.obj : ../imlib/include\image.hpp
src\wat\opt\automap.obj : ../imlib/include\system.h
src\wat\opt\automap.obj : ../imlib/include\video.hpp
src\wat\opt\automap.obj : ../imlib/include\jwindow.hpp
src\wat\opt\automap.obj : inc\automap.hpp
src\wat\opt\help.obj : src\help.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\help.c -fo=src\wat\opt\help.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\help.obj : inc\netcfg.hpp
src\wat\opt\help.obj : inc\director.hpp
src\wat\opt\help.obj : inc\id.hpp
src\wat\opt\help.obj : inc\extend.hpp
src\wat\opt\help.obj : inc\crc.hpp
src\wat\opt\help.obj : inc\light.hpp
src\wat\opt\help.obj : inc\view.hpp
src\wat\opt\help.obj : inc\config.hpp
src\wat\opt\help.obj : ../imlib/include\supmorph.hpp
src\wat\opt\help.obj : inc\morpher.hpp
src\wat\opt\help.obj : inc\ability.hpp
src\wat\opt\help.obj : inc\particle.hpp
src\wat\opt\help.obj : inc\cache.hpp
src\wat\opt\help.obj : inc\seq.hpp
src\wat\opt\help.obj : inc\chars.hpp
src\wat\opt\help.obj : ../imlib/include\input.hpp
src\wat\opt\help.obj : inc\objects.hpp
src\wat\opt\help.obj : inc\level.hpp
src\wat\opt\help.obj : inc\points.hpp
src\wat\opt\help.obj : inc\items.hpp
src\wat\opt\help.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\help.obj : ../imlib/include\image24.hpp
src\wat\opt\help.obj : ../imlib/include\loader.hpp
src\wat\opt\help.obj : ../imlib/include\mdlread.hpp
src\wat\opt\help.obj : ../imlib/include\sound.hpp
src\wat\opt\help.obj : ../imlib/include\timing.hpp
src\wat\opt\help.obj : inc\lisp_opt.hpp
src\wat\opt\help.obj : inc\lisp.hpp
src\wat\opt\help.obj : ../imlib/include\timage.hpp
src\wat\opt\help.obj : ../imlib/include\fonts.hpp
src\wat\opt\help.obj : ../imlib/include\filter.hpp
src\wat\opt\help.obj : ../imlib/include\video.hpp
src\wat\opt\help.obj : ../imlib/include\jwindow.hpp
src\wat\opt\help.obj : inc\loader2.hpp
src\wat\opt\help.obj : inc\game.hpp
src\wat\opt\help.obj : ../imlib/include\mouse.hpp
src\wat\opt\help.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\help.obj : ../imlib/include\specs.hpp
src\wat\opt\help.obj : ../imlib/include\palette.hpp
src\wat\opt\help.obj : ../imlib/include\linked.hpp
src\wat\opt\help.obj : ../imlib/include\image.hpp
src\wat\opt\help.obj : ../imlib/include\system.h
src\wat\opt\help.obj : ../imlib/include\macs.hpp
src\wat\opt\help.obj : ../imlib/include\sprite.hpp
src\wat\opt\help.obj : ../imlib/include\keys.hpp
src\wat\opt\help.obj : ../imlib/include\event.hpp
src\wat\opt\help.obj : inc\help.hpp
src\wat\opt\intsect.obj : src\intsect.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\intsect.c -fo=src\wat\opt\intsect.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\intsect.obj : ../imlib/include\system.h
src\wat\opt\intsect.obj : ../imlib/include\macs.hpp
src\wat\opt\loader2.obj : src\loader2.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\loader2.c -fo=src\wat\opt\loader2.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\loader2.obj : inc\specache.hpp
src\wat\opt\loader2.obj : src/net/inc\sock.hpp
src\wat\opt\loader2.obj : src/net/inc\indian.hpp
src\wat\opt\loader2.obj : inc\netface.hpp
src\wat\opt\loader2.obj : inc\nfserver.hpp
src\wat\opt\loader2.obj : inc\loadgame.hpp
src\wat\opt\loader2.obj : inc\help.hpp
src\wat\opt\loader2.obj : inc\sbar.hpp
src\wat\opt\loader2.obj : inc\compiled.hpp
src\wat\opt\loader2.obj : inc\clisp.hpp
src\wat\opt\loader2.obj : ../imlib/include\dprint.hpp
src\wat\opt\loader2.obj : ../imlib/include\morph.hpp
src\wat\opt\loader2.obj : inc\console.hpp
src\wat\opt\loader2.obj : inc\director.hpp
src\wat\opt\loader2.obj : inc\id.hpp
src\wat\opt\loader2.obj : inc\extend.hpp
src\wat\opt\loader2.obj : inc\crc.hpp
src\wat\opt\loader2.obj : inc\light.hpp
src\wat\opt\loader2.obj : inc\view.hpp
src\wat\opt\loader2.obj : inc\config.hpp
src\wat\opt\loader2.obj : ../imlib/include\supmorph.hpp
src\wat\opt\loader2.obj : inc\morpher.hpp
src\wat\opt\loader2.obj : ../imlib/include\input.hpp
src\wat\opt\loader2.obj : inc\objects.hpp
src\wat\opt\loader2.obj : inc\level.hpp
src\wat\opt\loader2.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\loader2.obj : ../imlib/include\image24.hpp
src\wat\opt\loader2.obj : ../imlib/include\loader.hpp
src\wat\opt\loader2.obj : ../imlib/include\mdlread.hpp
src\wat\opt\loader2.obj : inc\game.hpp
src\wat\opt\loader2.obj : inc\dev.hpp
src\wat\opt\loader2.obj : inc\menu.hpp
src\wat\opt\loader2.obj : ../imlib/include\jrand.hpp
src\wat\opt\loader2.obj : inc\parse.hpp
src\wat\opt\loader2.obj : inc\ability.hpp
src\wat\opt\loader2.obj : inc\particle.hpp
src\wat\opt\loader2.obj : inc\cache.hpp
src\wat\opt\loader2.obj : inc\points.hpp
src\wat\opt\loader2.obj : inc\items.hpp
src\wat\opt\loader2.obj : inc\seq.hpp
src\wat\opt\loader2.obj : inc\chars.hpp
src\wat\opt\loader2.obj : ../imlib/include\sound.hpp
src\wat\opt\loader2.obj : inc\lisp_opt.hpp
src\wat\opt\loader2.obj : inc\lisp.hpp
src\wat\opt\loader2.obj : ../imlib/include\timage.hpp
src\wat\opt\loader2.obj : ../imlib/include\fonts.hpp
src\wat\opt\loader2.obj : ../imlib/include\filter.hpp
src\wat\opt\loader2.obj : ../imlib/include\mouse.hpp
src\wat\opt\loader2.obj : ../imlib/include\macs.hpp
src\wat\opt\loader2.obj : ../imlib/include\sprite.hpp
src\wat\opt\loader2.obj : ../imlib/include\keys.hpp
src\wat\opt\loader2.obj : ../imlib/include\event.hpp
src\wat\opt\loader2.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\loader2.obj : ../imlib/include\specs.hpp
src\wat\opt\loader2.obj : ../imlib/include\palette.hpp
src\wat\opt\loader2.obj : ../imlib/include\linked.hpp
src\wat\opt\loader2.obj : ../imlib/include\image.hpp
src\wat\opt\loader2.obj : ../imlib/include\system.h
src\wat\opt\loader2.obj : ../imlib/include\video.hpp
src\wat\opt\loader2.obj : ../imlib/include\jwindow.hpp
src\wat\opt\loader2.obj : inc\loader2.hpp
src\wat\opt\loader2.obj : ../imlib/include\timing.hpp
src\wat\opt\seq.obj : src\seq.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\seq.c -fo=src\wat\opt\seq.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\seq.obj : inc\parse.hpp
src\wat\opt\seq.obj : ../imlib/include\timing.hpp
src\wat\opt\seq.obj : inc\lisp_opt.hpp
src\wat\opt\seq.obj : inc\lisp.hpp
src\wat\opt\seq.obj : inc\particle.hpp
src\wat\opt\seq.obj : ../imlib/include\sound.hpp
src\wat\opt\seq.obj : inc\cache.hpp
src\wat\opt\seq.obj : ../imlib/include\filter.hpp
src\wat\opt\seq.obj : ../imlib/include\macs.hpp
src\wat\opt\seq.obj : ../imlib/include\timage.hpp
src\wat\opt\seq.obj : inc\points.hpp
src\wat\opt\seq.obj : inc\items.hpp
src\wat\opt\seq.obj : ../imlib/include\system.h
src\wat\opt\seq.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\seq.obj : ../imlib/include\specs.hpp
src\wat\opt\seq.obj : ../imlib/include\palette.hpp
src\wat\opt\seq.obj : ../imlib/include\linked.hpp
src\wat\opt\seq.obj : ../imlib/include\image.hpp
src\wat\opt\seq.obj : inc\seq.hpp
src\wat\opt\points.obj : src\points.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\points.c -fo=src\wat\opt\points.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\points.obj : inc\console.hpp
src\wat\opt\points.obj : inc\director.hpp
src\wat\opt\points.obj : inc\id.hpp
src\wat\opt\points.obj : inc\extend.hpp
src\wat\opt\points.obj : inc\crc.hpp
src\wat\opt\points.obj : inc\light.hpp
src\wat\opt\points.obj : inc\view.hpp
src\wat\opt\points.obj : inc\config.hpp
src\wat\opt\points.obj : ../imlib/include\supmorph.hpp
src\wat\opt\points.obj : inc\morpher.hpp
src\wat\opt\points.obj : inc\ability.hpp
src\wat\opt\points.obj : inc\particle.hpp
src\wat\opt\points.obj : inc\cache.hpp
src\wat\opt\points.obj : inc\seq.hpp
src\wat\opt\points.obj : inc\chars.hpp
src\wat\opt\points.obj : ../imlib/include\input.hpp
src\wat\opt\points.obj : inc\objects.hpp
src\wat\opt\points.obj : inc\level.hpp
src\wat\opt\points.obj : inc\items.hpp
src\wat\opt\points.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\points.obj : ../imlib/include\image24.hpp
src\wat\opt\points.obj : ../imlib/include\loader.hpp
src\wat\opt\points.obj : ../imlib/include\mdlread.hpp
src\wat\opt\points.obj : ../imlib/include\sound.hpp
src\wat\opt\points.obj : ../imlib/include\timing.hpp
src\wat\opt\points.obj : inc\lisp_opt.hpp
src\wat\opt\points.obj : inc\lisp.hpp
src\wat\opt\points.obj : ../imlib/include\timage.hpp
src\wat\opt\points.obj : ../imlib/include\fonts.hpp
src\wat\opt\points.obj : ../imlib/include\filter.hpp
src\wat\opt\points.obj : ../imlib/include\mouse.hpp
src\wat\opt\points.obj : ../imlib/include\macs.hpp
src\wat\opt\points.obj : ../imlib/include\sprite.hpp
src\wat\opt\points.obj : ../imlib/include\keys.hpp
src\wat\opt\points.obj : ../imlib/include\event.hpp
src\wat\opt\points.obj : ../imlib/include\palette.hpp
src\wat\opt\points.obj : ../imlib/include\image.hpp
src\wat\opt\points.obj : ../imlib/include\video.hpp
src\wat\opt\points.obj : ../imlib/include\jwindow.hpp
src\wat\opt\points.obj : inc\loader2.hpp
src\wat\opt\points.obj : inc\game.hpp
src\wat\opt\points.obj : inc\dev.hpp
src\wat\opt\points.obj : ../imlib/include\system.h
src\wat\opt\points.obj : ../imlib/include\linked.hpp
src\wat\opt\points.obj : ../imlib/include\specs.hpp
src\wat\opt\points.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\points.obj : inc\points.hpp
src\wat\opt\fnt6x13.obj : src\fnt6x13.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\fnt6x13.c -fo=src\wat\opt\fnt6x13.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\fnt6x13.obj : src\fnt6x13.c
src\wat\opt\morpher.obj : src\morpher.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\morpher.c -fo=src\wat\opt\morpher.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\morpher.obj : inc\director.hpp
src\wat\opt\morpher.obj : inc\id.hpp
src\wat\opt\morpher.obj : inc\extend.hpp
src\wat\opt\morpher.obj : inc\crc.hpp
src\wat\opt\morpher.obj : inc\light.hpp
src\wat\opt\morpher.obj : inc\view.hpp
src\wat\opt\morpher.obj : inc\ability.hpp
src\wat\opt\morpher.obj : inc\particle.hpp
src\wat\opt\morpher.obj : inc\cache.hpp
src\wat\opt\morpher.obj : inc\seq.hpp
src\wat\opt\morpher.obj : inc\chars.hpp
src\wat\opt\morpher.obj : ../imlib/include\input.hpp
src\wat\opt\morpher.obj : inc\objects.hpp
src\wat\opt\morpher.obj : inc\level.hpp
src\wat\opt\morpher.obj : inc\points.hpp
src\wat\opt\morpher.obj : inc\items.hpp
src\wat\opt\morpher.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\morpher.obj : ../imlib/include\image24.hpp
src\wat\opt\morpher.obj : ../imlib/include\loader.hpp
src\wat\opt\morpher.obj : ../imlib/include\mdlread.hpp
src\wat\opt\morpher.obj : ../imlib/include\sound.hpp
src\wat\opt\morpher.obj : ../imlib/include\timing.hpp
src\wat\opt\morpher.obj : inc\lisp_opt.hpp
src\wat\opt\morpher.obj : inc\lisp.hpp
src\wat\opt\morpher.obj : ../imlib/include\fonts.hpp
src\wat\opt\morpher.obj : ../imlib/include\mouse.hpp
src\wat\opt\morpher.obj : ../imlib/include\sprite.hpp
src\wat\opt\morpher.obj : ../imlib/include\keys.hpp
src\wat\opt\morpher.obj : ../imlib/include\event.hpp
src\wat\opt\morpher.obj : ../imlib/include\video.hpp
src\wat\opt\morpher.obj : ../imlib/include\jwindow.hpp
src\wat\opt\morpher.obj : inc\loader2.hpp
src\wat\opt\morpher.obj : inc\game.hpp
src\wat\opt\morpher.obj : inc\config.hpp
src\wat\opt\morpher.obj : ../imlib/include\filter.hpp
src\wat\opt\morpher.obj : ../imlib/include\macs.hpp
src\wat\opt\morpher.obj : ../imlib/include\system.h
src\wat\opt\morpher.obj : ../imlib/include\specs.hpp
src\wat\opt\morpher.obj : ../imlib/include\palette.hpp
src\wat\opt\morpher.obj : ../imlib/include\linked.hpp
src\wat\opt\morpher.obj : ../imlib/include\image.hpp
src\wat\opt\morpher.obj : ../imlib/include\timage.hpp
src\wat\opt\morpher.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\morpher.obj : ../imlib/include\supmorph.hpp
src\wat\opt\morpher.obj : inc\morpher.hpp
src\wat\opt\menu.obj : src\menu.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\menu.c -fo=src\wat\opt\menu.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\menu.obj : src/net/inc\sock.hpp
src\wat\opt\menu.obj : inc\netcfg.hpp
src\wat\opt\menu.obj : ../imlib/include\scroller.hpp
src\wat\opt\menu.obj : inc\loadgame.hpp
src\wat\opt\menu.obj : inc\demo.hpp
src\wat\opt\menu.obj : ../imlib/include\dprint.hpp
src\wat\opt\menu.obj : inc\gamma.hpp
src\wat\opt\menu.obj : inc\clisp.hpp
src\wat\opt\menu.obj : inc\console.hpp
src\wat\opt\menu.obj : inc\dev.hpp
src\wat\opt\menu.obj : inc\property.hpp
src\wat\opt\menu.obj : inc\gui.hpp
src\wat\opt\menu.obj : ../imlib/include\pmenu.hpp
src\wat\opt\menu.obj : inc\director.hpp
src\wat\opt\menu.obj : inc\id.hpp
src\wat\opt\menu.obj : inc\extend.hpp
src\wat\opt\menu.obj : inc\crc.hpp
src\wat\opt\menu.obj : inc\light.hpp
src\wat\opt\menu.obj : inc\view.hpp
src\wat\opt\menu.obj : inc\config.hpp
src\wat\opt\menu.obj : ../imlib/include\supmorph.hpp
src\wat\opt\menu.obj : inc\morpher.hpp
src\wat\opt\menu.obj : inc\ability.hpp
src\wat\opt\menu.obj : inc\particle.hpp
src\wat\opt\menu.obj : inc\cache.hpp
src\wat\opt\menu.obj : inc\seq.hpp
src\wat\opt\menu.obj : inc\chars.hpp
src\wat\opt\menu.obj : ../imlib/include\input.hpp
src\wat\opt\menu.obj : inc\objects.hpp
src\wat\opt\menu.obj : inc\level.hpp
src\wat\opt\menu.obj : inc\points.hpp
src\wat\opt\menu.obj : inc\items.hpp
src\wat\opt\menu.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\menu.obj : ../imlib/include\image24.hpp
src\wat\opt\menu.obj : ../imlib/include\loader.hpp
src\wat\opt\menu.obj : ../imlib/include\mdlread.hpp
src\wat\opt\menu.obj : ../imlib/include\sound.hpp
src\wat\opt\menu.obj : ../imlib/include\mouse.hpp
src\wat\opt\menu.obj : ../imlib/include\sprite.hpp
src\wat\opt\menu.obj : ../imlib/include\keys.hpp
src\wat\opt\menu.obj : ../imlib/include\event.hpp
src\wat\opt\menu.obj : ../imlib/include\video.hpp
src\wat\opt\menu.obj : ../imlib/include\jwindow.hpp
src\wat\opt\menu.obj : inc\loader2.hpp
src\wat\opt\menu.obj : inc\game.hpp
src\wat\opt\menu.obj : ../imlib/include\timing.hpp
src\wat\opt\menu.obj : inc\lisp_opt.hpp
src\wat\opt\menu.obj : inc\lisp.hpp
src\wat\opt\menu.obj : ../imlib/include\filter.hpp
src\wat\opt\menu.obj : ../imlib/include\macs.hpp
src\wat\opt\menu.obj : ../imlib/include\timage.hpp
src\wat\opt\menu.obj : ../imlib/include\system.h
src\wat\opt\menu.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\menu.obj : ../imlib/include\specs.hpp
src\wat\opt\menu.obj : ../imlib/include\palette.hpp
src\wat\opt\menu.obj : ../imlib/include\linked.hpp
src\wat\opt\menu.obj : ../imlib/include\image.hpp
src\wat\opt\menu.obj : ../imlib/include\fonts.hpp
src\wat\opt\menu.obj : inc\menu.hpp
src\wat\opt\director.obj : src\director.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\director.c -fo=src\wat\opt\director.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\director.obj : inc\id.hpp
src\wat\opt\director.obj : inc\extend.hpp
src\wat\opt\director.obj : inc\crc.hpp
src\wat\opt\director.obj : inc\light.hpp
src\wat\opt\director.obj : inc\view.hpp
src\wat\opt\director.obj : inc\config.hpp
src\wat\opt\director.obj : ../imlib/include\supmorph.hpp
src\wat\opt\director.obj : inc\morpher.hpp
src\wat\opt\director.obj : inc\ability.hpp
src\wat\opt\director.obj : inc\particle.hpp
src\wat\opt\director.obj : inc\cache.hpp
src\wat\opt\director.obj : inc\seq.hpp
src\wat\opt\director.obj : inc\chars.hpp
src\wat\opt\director.obj : ../imlib/include\input.hpp
src\wat\opt\director.obj : inc\objects.hpp
src\wat\opt\director.obj : inc\level.hpp
src\wat\opt\director.obj : inc\points.hpp
src\wat\opt\director.obj : inc\items.hpp
src\wat\opt\director.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\director.obj : ../imlib/include\image24.hpp
src\wat\opt\director.obj : ../imlib/include\loader.hpp
src\wat\opt\director.obj : ../imlib/include\mdlread.hpp
src\wat\opt\director.obj : ../imlib/include\sound.hpp
src\wat\opt\director.obj : inc\lisp_opt.hpp
src\wat\opt\director.obj : inc\lisp.hpp
src\wat\opt\director.obj : ../imlib/include\timage.hpp
src\wat\opt\director.obj : ../imlib/include\fonts.hpp
src\wat\opt\director.obj : ../imlib/include\filter.hpp
src\wat\opt\director.obj : ../imlib/include\mouse.hpp
src\wat\opt\director.obj : ../imlib/include\macs.hpp
src\wat\opt\director.obj : ../imlib/include\sprite.hpp
src\wat\opt\director.obj : ../imlib/include\keys.hpp
src\wat\opt\director.obj : ../imlib/include\event.hpp
src\wat\opt\director.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\director.obj : ../imlib/include\specs.hpp
src\wat\opt\director.obj : ../imlib/include\palette.hpp
src\wat\opt\director.obj : ../imlib/include\linked.hpp
src\wat\opt\director.obj : ../imlib/include\image.hpp
src\wat\opt\director.obj : ../imlib/include\system.h
src\wat\opt\director.obj : ../imlib/include\video.hpp
src\wat\opt\director.obj : ../imlib/include\jwindow.hpp
src\wat\opt\director.obj : inc\loader2.hpp
src\wat\opt\director.obj : inc\game.hpp
src\wat\opt\director.obj : ../imlib/include\timing.hpp
src\wat\opt\director.obj : inc\director.hpp
src\wat\opt\view.obj : src\view.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\view.c -fo=src\wat\opt\view.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\view.obj : inc\chat.hpp
src\wat\opt\view.obj : src/net/inc\sock.hpp
src\wat\opt\view.obj : src/net/inc\indian.hpp
src\wat\opt\view.obj : inc\netface.hpp
src\wat\opt\view.obj : inc\nfserver.hpp
src\wat\opt\view.obj : inc\sbar.hpp
src\wat\opt\view.obj : inc\demo.hpp
src\wat\opt\view.obj : inc\clisp.hpp
src\wat\opt\view.obj : inc\transp.hpp
src\wat\opt\view.obj : ../imlib/include\dprint.hpp
src\wat\opt\view.obj : ../imlib/include\jrand.hpp
src\wat\opt\view.obj : inc\console.hpp
src\wat\opt\view.obj : inc\director.hpp
src\wat\opt\view.obj : inc\extend.hpp
src\wat\opt\view.obj : ../imlib/include\supmorph.hpp
src\wat\opt\view.obj : inc\morpher.hpp
src\wat\opt\view.obj : inc\ability.hpp
src\wat\opt\view.obj : inc\particle.hpp
src\wat\opt\view.obj : inc\cache.hpp
src\wat\opt\view.obj : inc\seq.hpp
src\wat\opt\view.obj : inc\chars.hpp
src\wat\opt\view.obj : inc\objects.hpp
src\wat\opt\view.obj : inc\level.hpp
src\wat\opt\view.obj : inc\points.hpp
src\wat\opt\view.obj : inc\items.hpp
src\wat\opt\view.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\view.obj : ../imlib/include\image24.hpp
src\wat\opt\view.obj : ../imlib/include\loader.hpp
src\wat\opt\view.obj : ../imlib/include\mdlread.hpp
src\wat\opt\view.obj : ../imlib/include\sound.hpp
src\wat\opt\view.obj : inc\loader2.hpp
src\wat\opt\view.obj : inc\game.hpp
src\wat\opt\view.obj : inc\dev.hpp
src\wat\opt\view.obj : inc\id.hpp
src\wat\opt\view.obj : ../imlib/include\input.hpp
src\wat\opt\view.obj : ../imlib/include\scroller.hpp
src\wat\opt\view.obj : ../imlib/include\timing.hpp
src\wat\opt\view.obj : inc\lisp_opt.hpp
src\wat\opt\view.obj : inc\lisp.hpp
src\wat\opt\view.obj : ../imlib/include\timage.hpp
src\wat\opt\view.obj : ../imlib/include\fonts.hpp
src\wat\opt\view.obj : ../imlib/include\filter.hpp
src\wat\opt\view.obj : ../imlib/include\mouse.hpp
src\wat\opt\view.obj : ../imlib/include\sprite.hpp
src\wat\opt\view.obj : ../imlib/include\keys.hpp
src\wat\opt\view.obj : ../imlib/include\event.hpp
src\wat\opt\view.obj : ../imlib/include\video.hpp
src\wat\opt\view.obj : ../imlib/include\jwindow.hpp
src\wat\opt\view.obj : ../imlib/include\macs.hpp
src\wat\opt\view.obj : inc\crc.hpp
src\wat\opt\view.obj : inc\config.hpp
src\wat\opt\view.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\view.obj : ../imlib/include\specs.hpp
src\wat\opt\view.obj : ../imlib/include\palette.hpp
src\wat\opt\view.obj : ../imlib/include\linked.hpp
src\wat\opt\view.obj : ../imlib/include\image.hpp
src\wat\opt\view.obj : inc\light.hpp
src\wat\opt\view.obj : inc\view.hpp
src\wat\opt\view.obj : ../imlib/include\system.h
src\wat\opt\config.obj : src\config.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\config.c -fo=src\wat\opt\config.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\config.obj : inc\director.hpp
src\wat\opt\config.obj : inc\id.hpp
src\wat\opt\config.obj : inc\extend.hpp
src\wat\opt\config.obj : inc\crc.hpp
src\wat\opt\config.obj : inc\light.hpp
src\wat\opt\config.obj : inc\view.hpp
src\wat\opt\config.obj : ../imlib/include\supmorph.hpp
src\wat\opt\config.obj : inc\morpher.hpp
src\wat\opt\config.obj : inc\ability.hpp
src\wat\opt\config.obj : inc\particle.hpp
src\wat\opt\config.obj : inc\cache.hpp
src\wat\opt\config.obj : inc\seq.hpp
src\wat\opt\config.obj : inc\chars.hpp
src\wat\opt\config.obj : ../imlib/include\input.hpp
src\wat\opt\config.obj : inc\objects.hpp
src\wat\opt\config.obj : inc\level.hpp
src\wat\opt\config.obj : inc\points.hpp
src\wat\opt\config.obj : inc\items.hpp
src\wat\opt\config.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\config.obj : ../imlib/include\image24.hpp
src\wat\opt\config.obj : ../imlib/include\loader.hpp
src\wat\opt\config.obj : ../imlib/include\mdlread.hpp
src\wat\opt\config.obj : ../imlib/include\sound.hpp
src\wat\opt\config.obj : inc\loader2.hpp
src\wat\opt\config.obj : inc\game.hpp
src\wat\opt\config.obj : inc\config.hpp
src\wat\opt\config.obj : ../imlib/include\timage.hpp
src\wat\opt\config.obj : ../imlib/include\fonts.hpp
src\wat\opt\config.obj : ../imlib/include\filter.hpp
src\wat\opt\config.obj : ../imlib/include\mouse.hpp
src\wat\opt\config.obj : ../imlib/include\macs.hpp
src\wat\opt\config.obj : ../imlib/include\sprite.hpp
src\wat\opt\config.obj : ../imlib/include\event.hpp
src\wat\opt\config.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\config.obj : ../imlib/include\specs.hpp
src\wat\opt\config.obj : ../imlib/include\palette.hpp
src\wat\opt\config.obj : ../imlib/include\linked.hpp
src\wat\opt\config.obj : ../imlib/include\image.hpp
src\wat\opt\config.obj : ../imlib/include\system.h
src\wat\opt\config.obj : ../imlib/include\video.hpp
src\wat\opt\config.obj : ../imlib/include\jwindow.hpp
src\wat\opt\config.obj : ../imlib/include\joy.hpp
src\wat\opt\config.obj : ../imlib/include\timing.hpp
src\wat\opt\config.obj : inc\lisp_opt.hpp
src\wat\opt\config.obj : inc\lisp.hpp
src\wat\opt\config.obj : ../imlib/include\keys.hpp
src\wat\opt\game.obj : src\game.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\game.c -fo=src\wat\opt\game.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\game.obj : src/net/unix\tcpip.hpp
src\wat\opt\game.obj : inc\netcfg.hpp
src\wat\opt\game.obj : inc\chat.hpp
src\wat\opt\game.obj : ../imlib/include\pmenu.hpp
src\wat\opt\game.obj : inc\compiled.hpp
src\wat\opt\game.obj : inc\profile.hpp
src\wat\opt\game.obj : inc\sbar.hpp
src\wat\opt\game.obj : inc\demo.hpp
src\wat\opt\game.obj : inc\fakelib.hpp
src\wat\opt\game.obj : inc\stack.hpp
src\wat\opt\game.obj : inc\lisp_gc.hpp
src\wat\opt\game.obj : inc\gamma.hpp
src\wat\opt\game.obj : inc\menu.hpp
src\wat\opt\game.obj : ../imlib/include\visobj.hpp
src\wat\opt\game.obj : ../imlib/include\status.hpp
src\wat\opt\game.obj : ../imlib/include\guistat.hpp
src\wat\opt\game.obj : inc\clisp.hpp
src\wat\opt\game.obj : inc\transp.hpp
src\wat\opt\game.obj : src/net/inc\sock.hpp
src\wat\opt\game.obj : src/net/inc\indian.hpp
src\wat\opt\game.obj : inc\netface.hpp
src\wat\opt\game.obj : inc\nfserver.hpp
src\wat\opt\game.obj : ../imlib/include\dprint.hpp
src\wat\opt\game.obj : ../imlib/include\scroller.hpp
src\wat\opt\game.obj : ../imlib/include\jrand.hpp
src\wat\opt\game.obj : inc\help.hpp
src\wat\opt\game.obj : inc\automap.hpp
src\wat\opt\game.obj : ../imlib/include\joy.hpp
src\wat\opt\game.obj : inc\console.hpp
src\wat\opt\game.obj : inc\dev.hpp
src\wat\opt\game.obj : inc\director.hpp
src\wat\opt\game.obj : inc\id.hpp
src\wat\opt\game.obj : inc\extend.hpp
src\wat\opt\game.obj : inc\crc.hpp
src\wat\opt\game.obj : inc\light.hpp
src\wat\opt\game.obj : inc\view.hpp
src\wat\opt\game.obj : inc\config.hpp
src\wat\opt\game.obj : ../imlib/include\supmorph.hpp
src\wat\opt\game.obj : inc\morpher.hpp
src\wat\opt\game.obj : inc\ability.hpp
src\wat\opt\game.obj : inc\particle.hpp
src\wat\opt\game.obj : inc\cache.hpp
src\wat\opt\game.obj : inc\seq.hpp
src\wat\opt\game.obj : inc\chars.hpp
src\wat\opt\game.obj : ../imlib/include\input.hpp
src\wat\opt\game.obj : inc\objects.hpp
src\wat\opt\game.obj : inc\level.hpp
src\wat\opt\game.obj : inc\points.hpp
src\wat\opt\game.obj : inc\items.hpp
src\wat\opt\game.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\game.obj : ../imlib/include\image24.hpp
src\wat\opt\game.obj : ../imlib/include\loader.hpp
src\wat\opt\game.obj : ../imlib/include\mdlread.hpp
src\wat\opt\game.obj : ../imlib/include\sound.hpp
src\wat\opt\game.obj : ../imlib/include\timing.hpp
src\wat\opt\game.obj : inc\lisp_opt.hpp
src\wat\opt\game.obj : inc\lisp.hpp
src\wat\opt\game.obj : ../imlib/include\timage.hpp
src\wat\opt\game.obj : ../imlib/include\fonts.hpp
src\wat\opt\game.obj : ../imlib/include\filter.hpp
src\wat\opt\game.obj : ../imlib/include\mouse.hpp
src\wat\opt\game.obj : ../imlib/include\macs.hpp
src\wat\opt\game.obj : ../imlib/include\sprite.hpp
src\wat\opt\game.obj : ../imlib/include\keys.hpp
src\wat\opt\game.obj : ../imlib/include\event.hpp
src\wat\opt\game.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\game.obj : ../imlib/include\specs.hpp
src\wat\opt\game.obj : ../imlib/include\palette.hpp
src\wat\opt\game.obj : ../imlib/include\linked.hpp
src\wat\opt\game.obj : ../imlib/include\image.hpp
src\wat\opt\game.obj : ../imlib/include\system.h
src\wat\opt\game.obj : ../imlib/include\video.hpp
src\wat\opt\game.obj : ../imlib/include\jwindow.hpp
src\wat\opt\game.obj : inc\loader2.hpp
src\wat\opt\game.obj : inc\game.hpp
src\wat\opt\light.obj : src\light.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\light.c -fo=src\wat\opt\light.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\light.obj : inc\console.hpp
src\wat\opt\light.obj : inc\director.hpp
src\wat\opt\light.obj : inc\id.hpp
src\wat\opt\light.obj : inc\extend.hpp
src\wat\opt\light.obj : inc\view.hpp
src\wat\opt\light.obj : ../imlib/include\supmorph.hpp
src\wat\opt\light.obj : inc\morpher.hpp
src\wat\opt\light.obj : inc\ability.hpp
src\wat\opt\light.obj : inc\particle.hpp
src\wat\opt\light.obj : inc\cache.hpp
src\wat\opt\light.obj : inc\seq.hpp
src\wat\opt\light.obj : inc\chars.hpp
src\wat\opt\light.obj : ../imlib/include\input.hpp
src\wat\opt\light.obj : inc\objects.hpp
src\wat\opt\light.obj : inc\level.hpp
src\wat\opt\light.obj : inc\points.hpp
src\wat\opt\light.obj : inc\items.hpp
src\wat\opt\light.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\light.obj : ../imlib/include\image24.hpp
src\wat\opt\light.obj : ../imlib/include\loader.hpp
src\wat\opt\light.obj : ../imlib/include\mdlread.hpp
src\wat\opt\light.obj : ../imlib/include\sound.hpp
src\wat\opt\light.obj : inc\lisp_opt.hpp
src\wat\opt\light.obj : inc\lisp.hpp
src\wat\opt\light.obj : inc\loader2.hpp
src\wat\opt\light.obj : inc\game.hpp
src\wat\opt\light.obj : inc\dev.hpp
src\wat\opt\light.obj : ../imlib/include\timage.hpp
src\wat\opt\light.obj : ../imlib/include\fonts.hpp
src\wat\opt\light.obj : ../imlib/include\mouse.hpp
src\wat\opt\light.obj : ../imlib/include\sprite.hpp
src\wat\opt\light.obj : ../imlib/include\keys.hpp
src\wat\opt\light.obj : ../imlib/include\event.hpp
src\wat\opt\light.obj : ../imlib/include\jwindow.hpp
src\wat\opt\light.obj : ../imlib/include\visobj.hpp
src\wat\opt\light.obj : ../imlib/include\status.hpp
src\wat\opt\light.obj : ../imlib/include\filter.hpp
src\wat\opt\light.obj : ../imlib/include\dprint.hpp
src\wat\opt\light.obj : ../imlib/include\timing.hpp
src\wat\opt\light.obj : ../imlib/include\video.hpp
src\wat\opt\light.obj : ../imlib/include\macs.hpp
src\wat\opt\light.obj : inc\crc.hpp
src\wat\opt\light.obj : inc\config.hpp
src\wat\opt\light.obj : ../imlib/include\system.h
src\wat\opt\light.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\light.obj : ../imlib/include\specs.hpp
src\wat\opt\light.obj : ../imlib/include\palette.hpp
src\wat\opt\light.obj : ../imlib/include\linked.hpp
src\wat\opt\light.obj : ../imlib/include\image.hpp
src\wat\opt\light.obj : inc\light.hpp
src\wat\opt\devsel.obj : src\devsel.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\devsel.c -fo=src\wat\opt\devsel.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\devsel.obj : inc\director.hpp
src\wat\opt\devsel.obj : inc\id.hpp
src\wat\opt\devsel.obj : inc\extend.hpp
src\wat\opt\devsel.obj : inc\crc.hpp
src\wat\opt\devsel.obj : inc\light.hpp
src\wat\opt\devsel.obj : inc\view.hpp
src\wat\opt\devsel.obj : inc\config.hpp
src\wat\opt\devsel.obj : ../imlib/include\supmorph.hpp
src\wat\opt\devsel.obj : inc\morpher.hpp
src\wat\opt\devsel.obj : inc\ability.hpp
src\wat\opt\devsel.obj : inc\seq.hpp
src\wat\opt\devsel.obj : inc\chars.hpp
src\wat\opt\devsel.obj : inc\objects.hpp
src\wat\opt\devsel.obj : inc\level.hpp
src\wat\opt\devsel.obj : ../imlib/include\monoprnt.hpp
src\wat\opt\devsel.obj : ../imlib/include\image24.hpp
src\wat\opt\devsel.obj : ../imlib/include\loader.hpp
src\wat\opt\devsel.obj : ../imlib/include\mdlread.hpp
src\wat\opt\devsel.obj : inc\loader2.hpp
src\wat\opt\devsel.obj : inc\game.hpp
src\wat\opt\devsel.obj : ../imlib/include\timing.hpp
src\wat\opt\devsel.obj : inc\lisp_opt.hpp
src\wat\opt\devsel.obj : inc\lisp.hpp
src\wat\opt\devsel.obj : inc\particle.hpp
src\wat\opt\devsel.obj : ../imlib/include\sound.hpp
src\wat\opt\devsel.obj : inc\points.hpp
src\wat\opt\devsel.obj : inc\items.hpp
src\wat\opt\devsel.obj : inc\cache.hpp
src\wat\opt\devsel.obj : ../imlib/include\timage.hpp
src\wat\opt\devsel.obj : ../imlib/include\fonts.hpp
src\wat\opt\devsel.obj : ../imlib/include\filter.hpp
src\wat\opt\devsel.obj : ../imlib/include\mouse.hpp
src\wat\opt\devsel.obj : ../imlib/include\macs.hpp
src\wat\opt\devsel.obj : ../imlib/include\sprite.hpp
src\wat\opt\devsel.obj : ../imlib/include\keys.hpp
src\wat\opt\devsel.obj : ../imlib/include\event.hpp
src\wat\opt\devsel.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\devsel.obj : ../imlib/include\specs.hpp
src\wat\opt\devsel.obj : ../imlib/include\palette.hpp
src\wat\opt\devsel.obj : ../imlib/include\linked.hpp
src\wat\opt\devsel.obj : ../imlib/include\image.hpp
src\wat\opt\devsel.obj : ../imlib/include\system.h
src\wat\opt\devsel.obj : ../imlib/include\video.hpp
src\wat\opt\devsel.obj : ../imlib/include\jwindow.hpp
src\wat\opt\devsel.obj : ../imlib/include\input.hpp
src\wat\opt\devsel.obj : ../imlib/include\scroller.hpp
src\wat\opt\devsel.obj : inc\devsel.hpp
src\wat\opt\crc.obj : src\crc.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\crc.c -fo=src\wat\opt\crc.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\crc.obj : ../imlib/include\macs.hpp
src\wat\opt\crc.obj : ../imlib/include\system.h
src\wat\opt\crc.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\crc.obj : ../imlib/include\linked.hpp
src\wat\opt\crc.obj : ../imlib/include\specs.hpp
src\wat\opt\crc.obj : inc\crc.hpp
src\wat\opt\gamma.obj : src\gamma.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\gamma.c -fo=src\wat\opt\gamma.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\gamma.obj : inc\loader2.hpp
src\wat\opt\gamma.obj : ../imlib/include\dprint.hpp
src\wat\opt\gamma.obj : inc\language.hpp
src\wat\opt\gamma.obj : inc\particle.hpp
src\wat\opt\gamma.obj : ../imlib/include\sound.hpp
src\wat\opt\gamma.obj : inc\points.hpp
src\wat\opt\gamma.obj : inc\items.hpp
src\wat\opt\gamma.obj : inc\cache.hpp
src\wat\opt\gamma.obj : inc\id.hpp
src\wat\opt\gamma.obj : ../imlib/include\input.hpp
src\wat\opt\gamma.obj : ../imlib/include\scroller.hpp
src\wat\opt\gamma.obj : ../imlib/include\timing.hpp
src\wat\opt\gamma.obj : inc\lisp_opt.hpp
src\wat\opt\gamma.obj : inc\lisp.hpp
src\wat\opt\gamma.obj : ../imlib/include\timage.hpp
src\wat\opt\gamma.obj : ../imlib/include\fonts.hpp
src\wat\opt\gamma.obj : ../imlib/include\filter.hpp
src\wat\opt\gamma.obj : ../imlib/include\mouse.hpp
src\wat\opt\gamma.obj : ../imlib/include\macs.hpp
src\wat\opt\gamma.obj : ../imlib/include\sprite.hpp
src\wat\opt\gamma.obj : ../imlib/include\keys.hpp
src\wat\opt\gamma.obj : ../imlib/include\event.hpp
src\wat\opt\gamma.obj : ../imlib/include\jmalloc.hpp
src\wat\opt\gamma.obj : ../imlib/include\specs.hpp
src\wat\opt\gamma.obj : ../imlib/include\palette.hpp
src\wat\opt\gamma.obj : ../imlib/include\linked.hpp
src\wat\opt\gamma.obj : ../imlib/include\image.hpp
src\wat\opt\gamma.obj : ../imlib/include\system.h
src\wat\opt\gamma.obj : ../imlib/include\video.hpp
src\wat\opt\gamma.obj : ../imlib/include\jwindow.hpp
src\wat\opt\language.obj : src\language.c
	set include=$(%WATCOM)\h;inc;../imlib/include;src/net/inc;src/net/unix;src/net/inc
	wpp386 src\language.c -fo=src\wat\opt\language.obj /omaxne /zp1 /zq -DNO_CHECK -DMANAGE_MEM 

src\wat\opt\language.obj : ../imlib/include\timing.hpp
src\wat\opt\language.obj : inc\lisp_opt.hpp
src\wat\opt\language.obj : inc\lisp.hpp

