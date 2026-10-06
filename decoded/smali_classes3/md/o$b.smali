.class public Lmd/o$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lmd/o;


# direct methods
.method public constructor <init>(Lmd/o;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lmd/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmd/o$b;->a:Lmd/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmd/o$b;->a:Lmd/o;

    invoke-static {p1}, Lmd/o;->c(Lmd/o;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmd/o$b;->a:Lmd/o;

    invoke-static {p1}, Lmd/o;->b(Lmd/o;)V

    :goto_0
    return-void
.end method
