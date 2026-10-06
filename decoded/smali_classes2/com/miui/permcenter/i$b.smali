.class Lcom/miui/permcenter/i$b;
.super Lcom/miui/gamebooster/service/NotificationListenerCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/i;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/NotificationListenerCallback;-><init>()V

    return-void
.end method

.method private synthetic o8(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v7, 0x1d

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.permissioncontroller"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/permcenter/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel permission controller location check notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->c(Lcom/miui/permcenter/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {}, Lx4/z1;->e()I

    move-result v5

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/i;->d(Lcom/miui/permcenter/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->e(Lcom/miui/permcenter/i;)Lsc/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lsc/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->c(Lcom/miui/permcenter/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/i;->d(Lcom/miui/permcenter/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->e(Lcom/miui/permcenter/i;)Lsc/a;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/permcenter/j;->a(Landroid/service/notification/StatusBarNotification;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lsc/a;->e(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/miui/permcenter/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] notification, and revoke its permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/miui/permcenter/o;->o:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->c(Lcom/miui/permcenter/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/miui/permcenter/n;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    invoke-static {}, Lcom/miui/permcenter/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/miui/permcenter/i;->f(Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-virtual {v1, v0, v6}, Lcom/miui/permcenter/i;->k(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/permcenter/i;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notification for it\'s not clearable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->c(Lcom/miui/permcenter/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {}, Lx4/z1;->e()I

    move-result v5

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/i;->d(Lcom/miui/permcenter/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic v1(Lcom/miui/permcenter/i$b;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/i$b;->o8(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method


# virtual methods
.method public onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/i$b;->a:Lcom/miui/permcenter/i;

    invoke-static {v0}, Lcom/miui/permcenter/i;->b(Lcom/miui/permcenter/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/k;

    invoke-direct {v1, p0, p1}, Lcom/miui/permcenter/k;-><init>(Lcom/miui/permcenter/i$b;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method
