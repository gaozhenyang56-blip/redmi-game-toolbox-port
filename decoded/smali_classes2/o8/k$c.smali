.class Lo8/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo8/k;->g0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo8/k;


# direct methods
.method constructor <init>(Lo8/k;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo8/k$c;->c:Lo8/k;

    iput p2, p0, Lo8/k$c;->a:I

    iput-object p3, p0, Lo8/k$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lo8/k$c;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "VoiceChangeCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectVoiceEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo8/k$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo8/k$c;->c:Lo8/k;

    invoke-static {v0}, Lo8/k;->b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo8/k$c;->c:Lo8/k;

    invoke-static {v0}, Lo8/k;->b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v0

    invoke-static {}, Lr8/b;->a()I

    move-result v1

    iget-object v2, p0, Lo8/k$c;->b:Ljava/lang/String;

    iget v3, p0, Lo8/k$c;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->n4(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
