.class Lm3/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lm3/b;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object p1

    invoke-static {p1}, Lm3/b;->g(Lm3/b;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lm3/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/apppredict/bean/ICallBack;

    invoke-static {v0, p1}, Lm3/b;->f(Lm3/b;Lcom/miui/apppredict/bean/ICallBack;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lm3/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lm3/b;->e(Lm3/b;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
