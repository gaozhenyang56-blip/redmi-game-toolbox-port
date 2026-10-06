.class Lxb/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxb/b;


# direct methods
.method constructor <init>(Lxb/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lxb/b$a;->a:Lxb/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lxb/b$a;->a:Lxb/b;

    invoke-static {p1}, Lxb/b;->a(Lxb/b;)V

    :cond_0
    return-void
.end method
