.class public Lf6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method
