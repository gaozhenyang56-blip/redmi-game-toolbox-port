.class Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;->a:Landroid/os/Handler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;->k:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;-><init>(Ljava/lang/ref/WeakReference;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
