.class Lu3/h$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/h;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu3/h;


# direct methods
.method constructor <init>(Lu3/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lu3/h$a;->a:Lu3/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;

    iget-object v0, p0, Lu3/h$a;->a:Lu3/h;

    invoke-static {v0, p1}, Lu3/h;->j(Lu3/h;Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lu3/h$a;->a:Lu3/h;

    invoke-virtual {v0, p1}, Lu3/h;->j0(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/autotask/bean/r;

    iget-object v1, p0, Lu3/h$a;->a:Lu3/h;

    invoke-static {v1, p1, v0}, Lu3/h;->i(Lu3/h;Lcom/miui/autotask/bean/r;I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lu3/h$a;->a:Lu3/h;

    invoke-static {v0, p1}, Lu3/h;->h(Lu3/h;Ljava/util/concurrent/ConcurrentHashMap;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
