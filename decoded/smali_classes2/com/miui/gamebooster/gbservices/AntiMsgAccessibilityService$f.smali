.class Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->e(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->d(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-static {p2}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->f(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;

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

    const-string p2, "AntiMsgAccessibilityService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;->a:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->e(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-void
.end method
