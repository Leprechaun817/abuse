/*
 *  Abuse — dark 2D side-scrolling platform game
 *  Copyright © 1995 Crack dot Com
 *  Copyright © 2005—2016 Sam Hocevar <sam@hocevar.net>
 *
 *  This software was released into the Public Domain. As with most public
 *  domain software, no warranty is made or implied by Crack dot Com, by
 *  Jonathan Clark, or by Sam Hocevar.
 */

#pragma once

#include "imlib/image.h"
#include "imlib/transimage.h"
#include "items.h"
#include "cache.h"

#include <stdarg.h>

class sequence
{
public :
    // takes a varible number of arguments (ints) specifing indexes into image array
    sequence(int *figures, int total_frames) { total=total_frames; seq=figures; }
    sequence(char *filename, LObject *pict_list, LObject *advance_list);
    ~sequence();

    int next_frame(short &current) { current++; if (current>=total) { current=0; return 0; } return 1; }
    int last_frame(short &current) { current--; if (current<0) { current=total-1; return 0; } return 1; }

    TransImage *get_frame(short current, int direction)
    {
        if (direction > 0)
            return cache.fig(seq[current])->forward;
        else
            return cache.fig(seq[current])->backward;
    }

    figure *get_figure(short current) { return cache.fig(seq[current]); }
    int cache_in();
    int x_center(short current) { return (short) (cache.fig(seq[current])->xcfg); }
    int length() { return total; }
    int get_advance(int current) { return cache.fig(seq[current])->advance; }
    size_t MemUsage();

private:
    int total;
    int *seq; // array of ids to figures
};

