.class Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/xsof/MiSafetyDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

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

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {v0}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->b(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)V

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->c(Lcom/xiaomi/security/xsof/MiSafetyDetectService;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lij/d;

    move-result-object p1

    invoke-virtual {p1}, Lij/d;->t()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/security/xsof/MiSafetyDetectService$a;->a:Lcom/xiaomi/security/xsof/MiSafetyDetectService;

    invoke-static {p1}, Lcom/xiaomi/security/xsof/MiSafetyDetectService;->a(Lcom/xiaomi/security/xsof/MiSafetyDetectService;)Lij/d;

    move-result-object p1

    invoke-virtual {p1}, Lij/d;->h()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
