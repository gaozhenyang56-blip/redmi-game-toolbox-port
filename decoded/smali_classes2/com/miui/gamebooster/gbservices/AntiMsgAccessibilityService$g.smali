.class Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/service/notification/StatusBarNotification;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;->a:Landroid/service/notification/StatusBarNotification;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/app/Notification;)V

    return-void
.end method
