.class public final Lcom/miui/securityscan/scanner/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/n;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/miui/securityscan/scanner/n;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n$c;->b:Lcom/miui/securityscan/scanner/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/scanner/n$c;->a:Landroid/content/Context;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/n$c;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/securityscan/scanner/n$c;->b:Lcom/miui/securityscan/scanner/n;

    invoke-static {v2, v0}, Lcom/miui/securityscan/scanner/n;->c(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/n;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p1

    const-wide/32 v3, 0x36ee80

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {v2, v0}, Lcom/miui/securityscan/scanner/n;->d(Lcom/miui/securityscan/scanner/n;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/miui/securityscan/scanner/n;->s(Z)V

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/n;->n()Landroid/os/HandlerThread;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/miui/securityscan/scanner/n;->r(Landroid/os/HandlerThread;)V

    :cond_2
    :goto_0
    return v1
.end method
