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

#include "lisp/stack.h"

// Stack user progs can push data and have it GCed
extern GrowStack<LObject> l_user_stack;

// This pointer reference stack lists all pointers to temporary lisp
// objects. This allows the pointers to be automatically modified if an
// object allocation triggers a garbage collection.
class PtrRef
{
public:
    template<typename T> inline PtrRef(T *&ref)
    {
        stack.push((LObject **)&ref);
    }

    template<typename T> inline PtrRef(T * const &ref)
    {
        stack.push((LObject **)&ref);
    }

    inline ~PtrRef()
    {
        stack.pop(1);
    }

    // Stack of user pointers, user pointers get remapped on GC
    static GrowStack<LObject *> stack;
};

