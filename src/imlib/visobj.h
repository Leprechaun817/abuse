/*
 *  Abuse - dark 2D side-scrolling platform game
 *  Copyright (c) 1995 Crack dot Com
 *  Copyright (c) 2005-2011 Sam Hocevar <sam@hocevar.net>
 *
 *  This software was released into the Public Domain. As with most public
 *  domain software, no warranty is made or implied by Crack dot Com or
 *  Jonathan Clark.
 */

#ifndef VIS_OBJECT_HPP
#define VIS_OBJECT_HPP

#include "jwindow.h"
#include "filter.h"

class visual_object
{
  public :
  virtual void draw(image *screen, int x, int y, filter *f) = 0;
  virtual int width() = 0;
  virtual int height() = 0;
  virtual ~visual_object() { }
} ;



class image_visual : public visual_object
{
  public :
  image *im;

  image_visual(image *img) { im=img; }
  virtual void draw(image *screen, int x, int y, filter *f);
  virtual int width() { return im->Size().x; }
  virtual int height() { return im->Size().y; }
} ;


class string_visual : public visual_object
{
  char *st;
  int color;
  int w,h;
  public :
  string_visual(char *string, int Color);
  virtual void draw(image *screen, int x, int y, filter *f);
  virtual int width();
  virtual int height();
} ;


#endif
