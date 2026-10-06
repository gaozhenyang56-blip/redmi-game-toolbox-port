.class Lo8/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "VoiceChangeCore"

    if-nez p2, :cond_0

    const-string p2, "onServiceConnected. service is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v1

    invoke-static {v0, v1}, Lo8/k;->c(Lo8/k;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: mMiuiVpnSdkService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {v1}, Lo8/k;->b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {v0}, Lo8/k;->b(Lo8/k;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->N6()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice new fun support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {p1}, Lo8/k;->d(Lo8/k;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {p1, v0}, Lo8/k;->h(Lo8/k;Z)V

    iget-object p1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {p1}, Lo8/k;->i(Lo8/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "VoiceChangeCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected. name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {p1}, Lo8/k;->j(Lo8/k;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo8/k$a;->a:Lo8/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo8/k;->c(Lo8/k;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget-object v0, p0, Lo8/k$a;->a:Lo8/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo8/k;->k(Lo8/k;Z)Z

    iget-object v0, p0, Lo8/k$a;->a:Lo8/k;

    invoke-static {v0, v1}, Lo8/k;->h(Lo8/k;Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
