.class Lcg/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcg/b;


# direct methods
.method constructor <init>(Lcg/b;)V
    .locals 0

    iput-object p1, p0, Lcg/b$a;->a:Lcg/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcg/b$a;->a:Lcg/b;

    invoke-static {p1}, Lcg/b;->b(Lcg/b;)Lcg/b$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcg/b$a;->a:Lcg/b;

    invoke-static {p1}, Lcg/b;->b(Lcg/b;)Lcg/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcg/b$b;->onAnimationEnd()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcg/b$a;->a:Lcg/b;

    invoke-static {p1}, Lcg/b;->a(Lcg/b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
