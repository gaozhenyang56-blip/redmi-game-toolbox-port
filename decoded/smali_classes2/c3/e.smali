.class public Lc3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lc3/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p1

    iput-object p1, p0, Lc3/e;->b:Lc3/d;

    new-instance p1, Lc3/e$a;

    invoke-direct {p1, p0}, Lc3/e$a;-><init>(Lc3/e;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lc3/e;)Lc3/d;
    .locals 0

    iget-object p0, p0, Lc3/e;->b:Lc3/d;

    return-object p0
.end method

.method static synthetic b(Lc3/d;)Z
    .locals 0

    invoke-static {p0}, Lc3/e;->l(Lc3/d;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lc3/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lc3/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lc3/e;->k(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1}, Lc3/e;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc3/e;->g(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private static g(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    invoke-static {p0, p1, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Lc3/e;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lc3/e;->a:Landroid/content/Context;

    const-class v3, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lc3/e;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/TransitionHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "from"

    const-string v1, "AlarmReceiver"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "enter_way"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static l(Lc3/d;)Z
    .locals 3

    invoke-virtual {p0}, Lc3/d;->t()Z

    move-result v0

    invoke-static {}, Lc3/f;->u()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lc3/d;->l()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lc3/f;->N()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc3/e$d;

    invoke-direct {v0, p0}, Lc3/e$d;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc3/e$b;

    invoke-direct {v0, p0, p1}, Lc3/e$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lc3/e;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lc3/f;->f:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc3/f;->D()I

    move-result p0

    const/4 p2, 0x1

    if-ge p0, p2, :cond_3

    const/16 p0, 0x14

    const/16 p2, 0x1e

    invoke-static {p0, p2}, Lc3/f;->s(II)J

    move-result-wide v0

    const/4 p0, 0x3

    const-string p2, "competitive_app_installed"

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    sget-object p2, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lc3/f;->F()I

    move-result p0

    const/4 p2, 0x2

    if-ge p0, p2, :cond_3

    const-wide/32 v0, 0x5265c00

    const/4 p0, 0x4

    const-string p2, "recommend_app_installed"

    :goto_0
    invoke-static {p1, v0, v1, p2, p0}, Lc3/e;->q(Landroid/content/Context;JLjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lc3/e$c;

    invoke-direct {v0, p0}, Lc3/e$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static q(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x4000000

    invoke-static {p0, p4, v1, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    add-long/2addr p3, p1

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    invoke-static {v0}, Lc3/e;->l(Lc3/d;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lc3/f;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc3/f;->D()I

    move-result v0

    const-string v1, "app_installed_scan"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    const/16 v0, 0x13

    const/16 v4, 0x1e

    invoke-static {v3, v0, v4}, Lc3/f;->E(III)J

    move-result-wide v3

    invoke-static {p0, v3, v4, v1, v2}, Lc3/e;->q(Landroid/content/Context;JLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v2, v1}, Lc3/e;->g(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Lc3/f;->d0(Z)V

    return-void
.end method


# virtual methods
.method public j(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 8

    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handle_notifycation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lc3/f;->u()I

    move-result p1

    iget-object v0, p0, Lc3/e;->b:Lc3/d;

    invoke-static {v0}, Lc3/e;->l(Lc3/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f12005e

    const v3, 0x7f12005d

    const-string v0, "00002"

    invoke-static {p2, v0}, Lc3/e;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x66

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080938

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lc3/f;->a0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    const-string p2, "guide_notification"

    invoke-static {p2}, La3/a;->r(Ljava/lang/String;)V

    const/16 p2, 0x66

    const-string v0, "com.miui.securitycenter_com.miui.applicationlock_102"

    const-string v1, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    invoke-static {v0, v1, p2}, Lc3/f;->Z(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lc3/f;->f0(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lc3/e;->h()V

    :cond_1
    :goto_0
    return-void
.end method
