.class public Lxc/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lxc/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxc/k$a;

    invoke-direct {v0}, Lxc/k$a;-><init>()V

    sput-object v0, Lxc/k$a;->a:Lxc/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lxc/k$a;->d(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lxc/k$a;)V
    .locals 0

    invoke-direct {p0}, Lxc/k$a;->e()V

    return-void
.end method

.method static synthetic c(Lxc/k$a;)V
    .locals 0

    invoke-direct {p0}, Lxc/k$a;->e()V

    return-void
.end method

.method private static synthetic d(ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x1d

    invoke-static {v0, v1, p0, p1}, Landroid/app/AppOpsManagerCompat;->checkOp(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v1

    const-wide v2, 0x4000000000L

    const/4 v4, 0x6

    invoke-static {p0}, Lx4/z1;->m(I)I

    move-result v5

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermissionNow(JII[Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshAiClipboardEnable for function close:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipboardFeature"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 13

    invoke-static {}, Lxc/k;->a()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KEY_INIT_AI_CLIPBOARD"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-static {v2, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v3, "appops"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v3

    invoke-virtual {v3}, Li4/a;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    const/4 v6, 0x5

    const/16 v7, 0x1d

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v7, v9, v8}, Landroid/app/AppOpsManagerCompat;->checkOp(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v7

    const-wide v8, 0x4000000000L

    const/4 v10, 0x6

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Lx4/z1;->m(I)I

    move-result v11

    new-array v12, v1, [Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/miui/permission/PermissionManager;->setApplicationPermissionNow(JII[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v5}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v0, "ClipboardFeature"

    const-string v1, "refreshAiClipboardEnable for function close."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/miui/permcenter/o;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ldb/c;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lxc/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lxc/j;

    invoke-direct {v1, p2, p1}, Lxc/j;-><init>(ILjava/lang/String;)V

    const-wide/16 p1, 0x258

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    sget-boolean v0, Lcom/miui/permcenter/o;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lxc/i;

    invoke-direct {v1, p0}, Lxc/i;-><init>(Lxc/k$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "mi_lab_ai_clipboard_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lxc/k$a$a;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lxc/k$a$a;-><init>(Lxc/k$a;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
