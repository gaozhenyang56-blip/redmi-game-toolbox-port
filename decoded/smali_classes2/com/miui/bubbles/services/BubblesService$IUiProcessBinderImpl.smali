.class Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;
.super Lcom/miui/bubbles/IUiProcessBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubblesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IUiProcessBinderImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/IUiProcessBinder$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/controller/NotificationController;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/bubbles/controller/NotificationController;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$IUiProcessBinderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/controller/NotificationController;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/controller/NotificationController;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
