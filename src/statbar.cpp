/*
 *  Abuse - dark 2D side-scrolling platform game
 *  Copyright (c) 1995 Crack dot Com
 *  Copyright (c) 2005-2011 Sam Hocevar <sam@hocevar.net>
 *
 *  This software was released into the Public Domain. As with most public
 *  domain software, no warranty is made or implied by Crack dot Com, by
 *  Jonathan Clark, or by Sam Hocevar.
 */

#if defined HAVE_CONFIG_H
#   include "config.h"
#endif

#include "common.h"

#include "sbar.h"
#include "view.h"
#include "lisp.h"
#include "cache.h"
#include "demo.h"
#include "chars.h"
#include "objects.h"
#include "game.h"
#include "clisp.h"

status_bar sbar;

status_bar::status_bar()
{
  v=NULL;
  need_rf=1;
  changed_cursor=0;
  icon_in_selection=-1;  // the weapon the mouse cursor is on top of, -1 if none
  currently_selected_weapon=-1;
}

// defined in dev.c
void scale_put_trans(AImage *im, AImage *screen, int x, int y, short new_width, short new_height);
void scale_put(AImage *im, AImage *screen, int x, int y, short new_width, short new_height);

void status_bar::load()
{
  char sbname[100];
  char iname[20];
  void *l_name = LSymbol::FindOrCreate("sbar_file");
  if (symbol_value(l_name)!=l_undefined)
    strcpy(sbname,lstring_value(symbol_value(l_name)));
  else strcpy(sbname,"art/statbar.spe");

  int i;
  for (i=0; i<TOTAL_WEAPONS; i++)
  {
    sprintf(iname,"bweap%04d.pcx",i+1);
    bweap[i]=cache.reg(sbname,iname,SPEC_IMAGE);

    sprintf(iname,"dweap%04d.pcx",i+1);
    dweap[i]=cache.reg(sbname,iname,SPEC_IMAGE);
  }

  for (i=0; i<30; i++)
  {
    sprintf(iname,"bnum%02d",i);
    bnum[i]=cache.reg(sbname,iname,SPEC_IMAGE);
  }


  sbar=cache.reg(sbname,"sbar",SPEC_IMAGE);
  sbar_select=cache.reg(sbname,"sbar_select",SPEC_IMAGE);
  sbar_numpad=cache.reg(sbname,"sbar_numpad",SPEC_IMAGE);
}

void status_bar::draw_num(AImage *screen, int x, int y, int num, int *offset)
{
  if (num<0 || num>999)
  {
    printf("bad number for statbar\n");
    return ;
  }

  AImage *im=cache.img(*offset);
  int dw = im->Size().x;
  int dh = im->Size().y;

  int n=num/100;
  scale_put(cache.img(offset[n]),main_screen,x,y,dw,dh);
  num-=n*100;

  x+=dw; n=num/10;
  scale_put(cache.img(offset[n]),main_screen,x,y,dw,dh);
  num-=n*10;

  x+=dw;
  scale_put(cache.img(offset[num]),main_screen,x,y,dw,dh);
}

void status_bar::redraw(AImage *screen)
{
  need_rf=0;
  if (!v) return ;

  if (total_weapons)
  {
    if (!playing_state(the_game->state)) return ;

    AImage *sb=cache.img(sbar);

    // status bar width & height
    int sb_w = sb->Size().x;
    int sb_h = sb->Size().y;

    // status bar x & y position
    int sx=xres/2-sb_w/2,sy=yres-sb_h;

    // weapon x offset, and x add increment
    int wx = 40, wa = 34;

    // weapon icon width & height
    int ww = cache.img(bweap[0])->Size().x;
    int wh = cache.img(bweap[0])->Size().y;


    // numpad y offset
    int np_yo = 21;
    int np_w = cache.img(sbar_numpad)->Size().x;
    int np_h = cache.img(sbar_numpad)->Size().y;

    // selection bar width * height
    int sel_w = cache.img(sbar_select)->Size().x;
    int sel_h = cache.img(sbar_select)->Size().y;

    int sel_off = 4;
    scale_put(sb,screen,sx,sy,sb_w,sb_h);

    if (v->m_focus)
      draw_num(screen, sx + 17, sy + 11, v->m_focus->hp(), bnum);

    int ammo_x = sx + 52, ammo_y = sy + 25;

    int i,x_on=sx+wx,t=TOTAL_WEAPONS;
    if (t>=total_weapons) t=total_weapons;
    for (i=0; i<t; i++,x_on+=wa,ammo_x+=wa)
    {
      if (v->has_weapon(i))
      {
    if (v->current_weapon==i)
        scale_put_trans(cache.img(bweap[i]),screen,x_on,sy,ww,wh);
    else
        scale_put_trans(cache.img(dweap[i]),screen,x_on,sy,ww,wh);

    scale_put_trans(cache.img(sbar_numpad),screen,x_on-2,sy+np_yo,np_w,np_h);

    if (v->current_weapon==i)
          draw_num(screen,ammo_x,ammo_y,v->weapon_total(i),bnum+20);
    else
          draw_num(screen,ammo_x,ammo_y,v->weapon_total(i),bnum+10);

    if (i==icon_in_selection)
        scale_put_trans(cache.img(sbar_select),screen,x_on+sel_off,sy,sel_w,sel_h);
      }
    }
  }
}

void status_bar::area(int &x1, int &y1, int &x2, int &y2)
{
  if (sbar<=0 || !total_weapons)
  {
    x2=xres;
    y2=yres;
    x1=x2;
    y1=y2;
    return ;
  }

  AImage *sb=cache.img(sbar);

  // status bar width & height
  int sb_w = sb->Size().x;
  int sb_h = sb->Size().y;

  x1=xres/2-sb_w/2;
  x2=xres/2+sb_w/2;
  y1=yres-sb_h;
  y2=yres;
}


void status_bar::draw_health(AImage *screen,int amount)
{
  if (total_weapons)
  {
    int x1,y1,x2,y2;
    area(x1,y1,x2,y2);
    draw_num(screen, x1 + 17, y1 + 11, amount, bnum);
  }
}


void status_bar::draw_ammo(AImage *screen, int weapon_num, int amount, int light)
{
  if (total_weapons)
  {
    int x1,y1,x2,y2;
    area(x1,y1,x2,y2);
    draw_num(screen, x1 + 52 + weapon_num * 34, y1 + 25,
             amount, bnum + (light ? 20 : 10));
  }
}


int status_bar::mouse_in_area()
{
  if (!v) return 0;
  int x1,y1,x2,y2;
  area(x1,y1,x2,y2);

    int mx = v->pointer_x;
    int my = v->pointer_y;

  if (mx>=x1 && my>=y1 && mx<=x2 && my<=y2)
    return 1;
  else return 0;
}


void status_bar::draw_update()
{
  if (total_weapons && v)
  {
    if (DEFINEDP(symbol_value(l_mouse_can_switch)) && symbol_value(l_mouse_can_switch) &&
    mouse_in_area())
    {
      if ((g_current_level->tick_counter()&4)==0)
        wm->SetMouseShape(cache.img(c_mouse1)->copy(), ivec2(4, 4));
      else wm->SetMouseShape(cache.img(c_mouse2)->copy(), ivec2(4, 4));
      changed_cursor=1;
    } else if (changed_cursor)
    {
      if (!(dev&EDIT_MODE))
        wm->SetMouseShape(cache.img(c_target)->copy(), ivec2(8, 8));
      else
        wm->SetMouseShape(cache.img(c_normal)->copy(), ivec2(1, 1));
      changed_cursor=0;
    }

    if (need_rf)
      redraw(main_screen);
  }
}


void status_bar::step()
{
  if (!v) return ;
  if (!DEFINEDP(symbol_value(l_mouse_can_switch)) || !symbol_value(l_mouse_can_switch)) return ;

  int sb_w,sb_h;
  if (sbar>0 && total_weapons)
  {
    AImage *sb=cache.img(sbar);

    // status bar width & height
    sb_w=sb->Size().x;
    sb_h=sb->Size().y;
  }

  // see if the mouse is in the sbar region
  int sx1,sy1,sx2,sy2;
  area(sx1,sy1,sx2,sy2);

  int view_y2 = v->m_bb.y;
  if (sy1<view_y2)     // tell view to shrink if it is overlapping the status bar
  {
    v->suggest.send_view=1;
    v->suggest.cx1 = v->m_aa.x;
    v->suggest.cy1 = v->m_aa.y;
    v->suggest.cx2 = v->m_bb.x;
    v->suggest.cy2 = sy1 - 2;
  }

  if (sbar<=0 || !total_weapons) return ;

  int mx = last_demo_mpos.x;
  int my = last_demo_mpos.y;

  if (mx>sx1 && my>sy1 && mx<sx2 && my<sy2)
  {

    int new_target;

    mx-=sx1;
    mx-=47;
    if (mx<0) new_target=0;
    else
    {
      new_target=mx/33;
      if (new_target>=TOTAL_WEAPONS)
        new_target=TOTAL_WEAPONS-1;
      if (new_target>=total_weapons)
        new_target=total_weapons-1;
    }

    if (v->has_weapon(new_target) && new_target!=icon_in_selection)
    {
      icon_in_selection=new_target;
      need_refresh();
    }

    if (last_demo_mbut==2 && icon_in_selection!=v->current_weapon &&
    icon_in_selection!=-1) // the user requested a weapon change
    {
      v->suggest.send_weapon_change=1;
      v->suggest.new_weapon=icon_in_selection;
    }

  } else
  {
    if (icon_in_selection!=-1)
    {
      icon_in_selection=-1;
      need_refresh();
    }
  }

  // see if a new weapon has been selected other than the one
  // we think is selected, if so redraw the status bar
  if (currently_selected_weapon!=v->current_weapon)
  {
    currently_selected_weapon=v->current_weapon;
    need_refresh();
  }


}





