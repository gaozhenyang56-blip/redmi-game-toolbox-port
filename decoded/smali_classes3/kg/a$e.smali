.class Lkg/a$e;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkg/a;


# direct methods
.method constructor <init>(Lkg/a;)V
    .locals 0

    iput-object p1, p0, Lkg/a$e;->a:Lkg/a;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lkg/a$e;->a:Lkg/a;

    invoke-static {v0, p1}, Lkg/a;->j(Lkg/a;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
