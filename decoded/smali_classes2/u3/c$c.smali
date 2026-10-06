.class Lu3/c$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-static {v0, p1}, Lu3/c;->o(Lu3/c;Lcom/miui/autotask/bean/r;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lu3/c;->f(Lu3/c;Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lvf/b;

    invoke-static {v0, p1}, Lu3/c;->n(Lu3/c;Lvf/b;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-static {v0, p1}, Lu3/c;->l(Lu3/c;Lcom/miui/autotask/bean/r;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-static {v0, p1}, Lu3/c;->j(Lu3/c;Lcom/miui/autotask/bean/r;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lu3/c;->g(Lu3/c;Ljava/util/List;)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/autotask/bean/r;

    invoke-static {v0, p1}, Lu3/c;->e(Lu3/c;Lcom/miui/autotask/bean/r;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
