.class public Lef/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/m$a;
    }
.end annotation


# static fields
.field private static final f:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ContentResolver;

.field private final c:I

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.support.system.app.uninstall.v2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lef/m;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lef/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lef/m;->b:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->h(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lef/m;->d:Ljava/util/concurrent/Executor;

    iput p2, p0, Lef/m;->c:I

    return-void
.end method

.method private synthetic A(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lef/m;->E()V

    return-void
.end method

.method private synthetic B()V
    .locals 4

    iget-object v0, p0, Lef/m;->b:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "com.miui.securitycenter.restore_security_icon_remind_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private synthetic C(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lef/m;->F(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic D(Ljava/lang/Runnable;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lef/m;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "com.miui.securitycenter.restore_security_icon_not_remind_anymore"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lef/m;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lef/g;

    invoke-direct {v0, p0, p1}, Lef/g;-><init>(Lef/m;Ljava/lang/Runnable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lef/m;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private F(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lef/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnf/b;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lnf/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v2, Lnf/a;->a:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_0

    sget v3, Lnf/c;->a:I

    goto :goto_0

    :cond_0
    sget v3, Lnf/c;->b:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lnf/a;->c:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lef/m;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lef/i;

    invoke-direct {v3, p0, v1, p1, v0}, Lef/i;-><init>(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lef/m;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lef/m;->C(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lef/m;->x(Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lef/m;Landroid/widget/CheckBox;ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lef/m;->w(Landroid/widget/CheckBox;ZLjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lef/m;)V
    .locals 0

    invoke-direct {p0}, Lef/m;->B()V

    return-void
.end method

.method public static synthetic e(Lef/m;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lef/m;->D(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic f(Lef/m;)V
    .locals 0

    invoke-direct {p0}, Lef/m;->y()V

    return-void
.end method

.method public static synthetic g(Lef/m;)V
    .locals 0

    invoke-direct {p0}, Lef/m;->v()V

    return-void
.end method

.method public static synthetic h(Lef/m;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lef/m;->A(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lef/m$a;)V
    .locals 0

    invoke-static {p0}, Lef/m;->s(Lef/m$a;)V

    return-void
.end method

.method public static synthetic j(Lef/m$a;Z)V
    .locals 0

    invoke-static {p0, p1}, Lef/m;->t(Lef/m$a;Z)V

    return-void
.end method

.method public static synthetic k(Lef/m;Ljava/util/concurrent/Executor;Lef/m$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lef/m;->u(Ljava/util/concurrent/Executor;Lef/m$a;)V

    return-void
.end method

.method public static synthetic l(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lef/m;->z(Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private n()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activityName"

    const-string v2, "com.miui.securityscan.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lef/m;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const-string v2, "content://com.miui.home.app.hide"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "restoreHiddenApp"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppIconManager"

    const-string v2, "isAppIconHidden: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private o()I
    .locals 1

    sget-boolean v0, Lef/m;->f:Z

    if-nez v0, :cond_0

    sget v0, Lnf/c;->f:I

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    sget v0, Lnf/c;->h:I

    goto :goto_0

    :cond_1
    sget v0, Lnf/c;->g:I

    :goto_0
    return v0
.end method

.method private p()V
    .locals 3

    :try_start_0
    const-string v0, "mimarket://details?id=com.miui.securitymanager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lef/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppIconManager"

    const-string v2, "download error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static q(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package not install, pkg="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private r()Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const-string v1, "com.miui.securitycenter.restore_security_icon_remind_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v2, v0

    const-wide/16 v0, 0x7

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic s(Lef/m$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lef/m$a;->a(Z)V

    return-void
.end method

.method private static synthetic t(Lef/m$a;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lef/m$a;->a(Z)V

    return-void
.end method

.method private synthetic u(Ljava/util/concurrent/Executor;Lef/m$a;)V
    .locals 5

    sget-boolean v0, Lef/m;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activityName"

    const-string v2, "com.miui.securityscan.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lef/m;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const-string v2, "content://com.miui.home.app.hide"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "isAppHidded"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppIconManager"

    const-string v2, "isAppIconHidden: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lef/m;->a:Landroid/content/Context;

    const-string v1, "com.miui.securitymanager"

    invoke-static {v0, v1}, Lef/m;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lef/h;

    invoke-direct {v1, p2, v0}, Lef/h;-><init>(Lef/m$a;Z)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic v()V
    .locals 1

    sget-boolean v0, Lef/m;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lef/m;->p()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lef/m;->n()V

    :goto_0
    return-void
.end method

.method private synthetic w(Landroid/widget/CheckBox;ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lef/m;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lef/k;

    invoke-direct {v0, p0, p1, p3}, Lef/k;-><init>(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lnf/c;->c:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget-boolean p2, Lef/m;->f:Z

    if-eqz p2, :cond_1

    sget p2, Lnf/c;->e:I

    goto :goto_1

    :cond_1
    sget p2, Lnf/c;->d:I

    :goto_1
    new-instance p3, Lef/l;

    invoke-direct {p3, p0}, Lef/l;-><init>(Lef/m;)V

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance p2, Lef/b;

    invoke-direct {p2, p0}, Lef/b;-><init>(Lef/m;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic x(Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const-string v1, "com.miui.securitycenter.restore_security_icon_remind_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    iget-object v0, p0, Lef/m;->d:Ljava/util/concurrent/Executor;

    new-instance v7, Lef/j;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lef/j;-><init>(Lef/m;Landroid/widget/CheckBox;ZLjava/lang/Runnable;Landroid/view/View;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic y()V
    .locals 3

    iget-object v0, p0, Lef/m;->b:Landroid/content/ContentResolver;

    const-string v1, "com.miui.securitycenter.restore_security_icon_not_remind_anymore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private synthetic z(Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance p3, Lef/c;

    invoke-direct {p3, p0}, Lef/c;-><init>(Lef/m;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public E()V
    .locals 2

    iget-object v0, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lef/a;

    invoke-direct {v1, p0}, Lef/a;-><init>(Lef/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lef/d;

    invoke-direct {v1, p0, p1}, Lef/d;-><init>(Lef/m;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lef/m;->m(Ljava/util/concurrent/Executor;Lef/m$a;)V

    return-void
.end method

.method public m(Ljava/util/concurrent/Executor;Lef/m$a;)V
    .locals 2

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lef/e;

    invoke-direct {v0, p2}, Lef/e;-><init>(Lef/m$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lef/m;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lef/f;

    invoke-direct {v1, p0, p1, p2}, Lef/f;-><init>(Lef/m;Ljava/util/concurrent/Executor;Lef/m$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
