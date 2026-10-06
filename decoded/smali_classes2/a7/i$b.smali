.class La7/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La7/i;


# direct methods
.method constructor <init>(La7/i;)V
    .locals 0

    iput-object p1, p0, La7/i$b;->a:La7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, La7/i$b;->a:La7/i;

    invoke-static {p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p2

    invoke-static {p1, p2}, La7/i;->j(La7/i;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    :try_start_0
    iget-object p1, p0, La7/i$b;->a:La7/i;

    invoke-static {p1}, La7/i;->i(La7/i;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    iget-object p2, p0, La7/i$b;->a:La7/i;

    invoke-static {p2}, La7/i;->k(La7/i;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;->Z2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNoticationListenerBinder:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameBoxService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La7/i$b;->a:La7/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La7/i;->j(La7/i;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-void
.end method
