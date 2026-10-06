.class public final Lcom/miui/simlock/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/simlock/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/miui/simlock/b$b;->b:Lcom/miui/simlock/b$b;

    invoke-virtual {v0, p1, v1}, Lcom/miui/simlock/SimLockManager;->t8(ILcom/miui/simlock/b$b;)V

    :cond_0
    return-void
.end method
