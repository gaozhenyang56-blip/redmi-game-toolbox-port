.class Lo8/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo8/k;


# direct methods
.method constructor <init>(Lo8/k;)V
    .locals 0

    iput-object p1, p0, Lo8/k$b;->a:Lo8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkToDeath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo8/k$b;->a:Lo8/k;

    invoke-static {v1}, Lo8/k;->b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceChangeCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo8/k$b;->a:Lo8/k;

    invoke-static {v0}, Lo8/k;->l(Lo8/k;)V

    iget-object v0, p0, Lo8/k$b;->a:Lo8/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo8/k;->c(Lo8/k;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget-object v0, p0, Lo8/k$b;->a:Lo8/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo8/k;->k(Lo8/k;Z)Z

    iget-object v0, p0, Lo8/k$b;->a:Lo8/k;

    invoke-virtual {v0}, Lo8/k;->o()V

    return-void
.end method
