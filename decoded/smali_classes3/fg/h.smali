.class public Lfg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "SimLock"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lfg/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockNotificationUtils::hideSimLockNotification::Hide notification error : notificationId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;ZZZ)V
    .locals 1

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v0, p2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const p2, 0x7f080fa7

    if-eqz p1, :cond_0

    const p1, 0x7f080f25

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Lw4/b$b;->v(I)Lw4/b$b;

    invoke-virtual {v0, p2}, Lw4/b$b;->q(I)Lw4/b$b;

    invoke-virtual {v0, p3}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120f27

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.securitycenter"

    invoke-virtual {v0, p1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    invoke-virtual {v0, p5}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v0, p7}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {v0, p6}, Lw4/b$b;->d(Z)Lw4/b$b;

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lw4/b$b;->l(I)Lw4/b$b;

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    :cond_1
    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method
