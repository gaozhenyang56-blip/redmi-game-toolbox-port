.class La7/i$a;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source "SourceFile"


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

    iput-object p1, p0, La7/i$a;->a:La7/i;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lm6/a;->i(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La7/i$a;->a:La7/i;

    invoke-static {v0, p1}, La7/i;->f(La7/i;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La7/i$a;->a:La7/i;

    invoke-static {v1}, La7/i;->g(La7/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lf7/b;->j(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La7/i$a;->a:La7/i;

    iput-object p1, v0, La7/i;->i:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0}, La7/i;->h(La7/i;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->I()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, La7/i$a$a;

    invoke-direct {v0, p0}, La7/i$a$a;-><init>(La7/i$a;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
