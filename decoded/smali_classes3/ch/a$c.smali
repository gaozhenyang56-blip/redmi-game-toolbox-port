.class Lch/a$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lch/a;


# direct methods
.method constructor <init>(Lch/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lch/a$c;->a:Lch/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3de

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lch/a$c;->a:Lch/a;

    invoke-static {p1}, Lch/a;->g(Lch/a;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lch/a$c;->a:Lch/a;

    invoke-static {p1}, Lch/a;->h(Lch/a;)V

    :goto_0
    return-void
.end method
