.class Lz4/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/d;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz4/d;


# direct methods
.method constructor <init>(Lz4/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lz4/d$a;->a:Lz4/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lz4/d$a;->a:Lz4/d;

    invoke-static {v0, p1}, Lz4/d;->b(Lz4/d;Landroid/os/Message;)V

    return-void
.end method
