.class Lc3/m$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc3/m;


# direct methods
.method constructor <init>(Lc3/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    invoke-interface {p1}, Lc3/l;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    invoke-interface {p1}, Lc3/l;->c()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->e(Lc3/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    iget-object v0, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v0}, Lc3/m;->c(Lc3/m;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120848

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v1}, Lc3/m;->d(Lc3/m;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lc3/l;->d(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    iget-object v0, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v0}, Lc3/m;->e(Lc3/m;)Z

    move-result v0

    invoke-interface {p1, v0}, Lc3/l;->e(Z)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    iget-object v0, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v0}, Lc3/m;->c(Lc3/m;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v1}, Lc3/m;->b(Lc3/m;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {v1}, Lc3/m;->d(Lc3/m;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lc3/l;->d(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    invoke-interface {p1}, Lc3/l;->b()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lc3/m$a;->a:Lc3/m;

    invoke-static {p1}, Lc3/m;->a(Lc3/m;)Lc3/l;

    move-result-object p1

    invoke-interface {p1}, Lc3/l;->f()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
