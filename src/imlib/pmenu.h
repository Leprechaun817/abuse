/*
 *  Abuse - dark 2D side-scrolling platform game
 *  Copyright (c) 1995 Crack dot Com
 *  Copyright (c) 2005-2013 Sam Hocevar <sam@hocevar.net>
 *
 *  This software was released into the Public Domain. As with most public
 *  domain software, no warranty is made or implied by Crack dot Com, by
 *  Jonathan Clark, or by Sam Hocevar.
 */

#ifndef __PMENU_HPP_
#define __PMENU_HPP_

#include "imlib/input.h"

class psub_menu;

class pmenu_item
{
    int hotkey;
public :
    char *n;
    char const *on_off;
    psub_menu *sub;

    int id,xp;
    pmenu_item *next;
    pmenu_item(int ID, char const *name, char const *on_off_flag, int Hotkey, pmenu_item *Next);
    pmenu_item(char const *Name, psub_menu *Sub, pmenu_item *Next, int xpos=-1);
    char *name() { return n; }
    pmenu_item *find_id(int search_id);
    pmenu_item *find_key(int key);
    void draw       (AWindow *parent, int x, int y, int w, int top, int active);
    void draw_self  (AWindow *parent, int x, int y, int w, int top, int active);
    int handle_event(AWindow *parent, int x, int y, int w, int top, Event &ev);
    int own_event(Event &ev);
    ~pmenu_item();
};


class psub_menu
{
public :
    psub_menu(pmenu_item *first, psub_menu *next)
      : m_first(first),
        m_next(next),
        m_active(0),
        m_win(nullptr)
    {}

    ~psub_menu();

    ivec2 calc_size() const;
    pmenu_item *find_id(int search_id);
    pmenu_item *find_key(int key);
    int handle_event(AWindow *parent, int x, int y, Event &ev);
    void draw(AWindow *parent, int x, int y);
    void hide(AWindow *parent, int x, int y);
    int own_event(Event &ev);

private:
    pmenu_item *m_first;
    psub_menu *m_next;
    int m_active;
    AWindow *m_win;

    pmenu_item *item_num(int x)
    {
        pmenu_item *p = m_first;
        while (x-- && p)
            p = p->next;
        return p;
    }
};

class pmenu
{
    AWindow *bar;
    pmenu_item *top,*active;
    int itemw(pmenu_item *p)
    { return strlen(p->name())*wm->font()->Size().x+2; }
    int itemx(pmenu_item *p);
    pmenu_item *inarea(int mx, int my, AImage *screen);
public :
    ~pmenu();
    pmenu(int X, int Y, pmenu_item *first, AImage *screen);
    void move(int new_x, int new_y);
    void draw(AImage *screen, int top_only=0);
    int handle_event(Event &ev, AImage *screen);
};

#endif

