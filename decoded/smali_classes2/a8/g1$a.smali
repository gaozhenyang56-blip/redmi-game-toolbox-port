.class La8/g1$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/g1;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La8/g1;


# direct methods
.method constructor <init>(La8/g1;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "MiLinkUtils"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "onDisconnect "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1, v0}, La8/g1;->b(La8/g1;Z)Z

    invoke-static {v0}, Lc8/a;->d(I)V

    invoke-static {v0}, Lm6/a;->m0(Z)V

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->d(La8/g1;)Ls5/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->d(La8/g1;)Ls5/b;

    move-result-object p1

    invoke-interface {p1}, Ls5/b;->a()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-virtual {p1}, La8/g1;->y()V

    goto :goto_0

    :pswitch_2
    const-string p1, "onConnectFail "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lc8/a;->d(I)V

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->a(La8/g1;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->e(La8/g1;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-virtual {p1}, La8/g1;->z()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La8/g1;->b(La8/g1;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: toolBoxType="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La8/g1$a;->a:La8/g1;

    invoke-static {v2}, La8/g1;->c(La8/g1;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->c(La8/g1;)I

    move-result p1

    invoke-static {p1}, Lc8/a;->d(I)V

    invoke-static {v0}, Lm6/a;->m0(Z)V

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->d(La8/g1;)Ls5/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, La8/g1$a;->a:La8/g1;

    invoke-static {p1}, La8/g1;->d(La8/g1;)Ls5/b;

    move-result-object p1

    invoke-interface {p1}, Ls5/b;->b()V

    :cond_1
    const-string p1, "onConnectSuccess"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
