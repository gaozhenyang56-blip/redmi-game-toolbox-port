.class public abstract Lnj/g;
.super Lnj/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnj/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b(Lkj/b;[II)Z
.end method

.method public c(Lkj/b;[II)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnj/g;->b(Lkj/b;[II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract d(Ljava/io/DataInputStream;)V
.end method
