.class public Lc3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lc3/f;->b:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc3/f;->c:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lc3/f;->d:Landroid/util/ArraySet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lc3/f;->e:Ljava/util/HashSet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sput-object v4, Lc3/f;->f:Landroid/util/ArraySet;

    const-string v5, "com.miui.klo.bugreport"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.mfashiongallery.emag"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.deskclock"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.camera"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.miui.antispam"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.xiaomi.account"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.miui.android.fashiongallery"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.miui.securitymanager"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.cleanmaster.security"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.domobile.applock"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sp.protector.free"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.martianmode.applock"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.symantec.applock"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ivymobi.applock.free"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ushareit.lockit"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.alpha.applock"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.ehawk.antivirus.applock.wifi"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.jb.security"

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.chrome"

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.android.browser"

    const-string v4, "com.mi.globalbrowser"

    invoke-direct {v0, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    const-string v2, "com.android.calendar"

    const-string v4, "com.xiaomi.calendar"

    invoke-direct {v0, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static A()I
    .locals 2

    const-string v0, "masked_notification_sum"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static A0()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static B()Ljava/lang/String;
    .locals 2

    const-string v0, "masked_notification_package"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static B0(Landroid/content/Context;I)Z
    .locals 6

    invoke-static {p0}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object p0

    invoke-virtual {p0}, Lc3/n;->e()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applock_verify_and_activate_fingerprint_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v5}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return v4

    :cond_1
    return v2
.end method

.method public static C(Lmiui/security/SecurityManager;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/security/SecurityManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static C0(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lc3/f$c;

    invoke-direct {v0, p0, p1}, Lc3/f$c;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static D()I
    .locals 2

    const-string v0, "post_introduce_notification_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/security/SecurityManager;->addAccessControlPass(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lc3/f$b;

    invoke-direct {v1, p0, p1}, Lc3/f$b;-><init>(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static E(III)J
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    const/16 p0, 0xb

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static F()I
    .locals 2

    const-string v0, "pre_introduce_notification_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static G(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object p0

    invoke-virtual {p0}, Lc3/d;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lc3/f;->t()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lc3/b;

    const/4 v7, 0x0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v6, v5, v7, v5, v4}, Lc3/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lc3/f$a;

    invoke-direct {p0}, Lc3/f$a;-><init>()V

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lc3/b;

    invoke-virtual {v1}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static H(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "privacy_password_finger_authentication_num"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static I(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "privacy_wrong_attempt_num"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static J(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc3/n;->j([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppLockUtils"

    const-string v1, "Fail to resetTimeout"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static K()Z
    .locals 2

    const-string v0, "post_scan_introduce_notification_count"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static L()Z
    .locals 2

    const-string v0, "fingerprint_dialog_notify"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static M(Landroid/app/ActivityOptions;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getLaunchStackId"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v4, v5}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getLaunchWindowingMode"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v4, v5}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AppLockUtils"

    const-string v2, "isMultiWindowMode exception:"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v0
.end method

.method public static N()Z
    .locals 2

    const-string v0, "applock_notifycation_clicked"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static P()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static Q(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static R(II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applock_verify_and_activate_fingerprint_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com_miui_applicationlock_is_visible_pattern"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static T(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lc3/f;->A()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lc3/f;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "enter_way"

    const-string v1, "mask_notification_notify"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f120f12

    const v3, 0x7f120f13

    const/16 v5, 0x65

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080938

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lc3/f;->a0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    invoke-static {}, Lc3/f;->A()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lc3/f;->n0(I)V

    invoke-static {p1}, Lc3/f;->o0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static U(Landroid/content/Context;ILandroid/view/View;I)V
    .locals 6

    const-string v0, "setType"

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v5, 0x7f6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v0, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AppLockUtils"

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070241

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-static {v1, p3}, Lc3/f;->c(Landroid/widget/Toast;I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static V(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060d01

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v1, "com.android.settings.bgColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const-string v1, "com.android.settings.titleColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12055a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static W(Lmiui/security/SecurityManager;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static X(Lmiui/security/SecurityManager;)V
    .locals 2

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_2

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_2

    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lw4/b$b;

    invoke-direct {p6, p0, p1}, Lw4/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {p6, p2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {p6, p3}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    invoke-virtual {p6, p4}, Lw4/b$b;->q(I)Lw4/b$b;

    invoke-virtual {p6, p5}, Lw4/b$b;->v(I)Lw4/b$b;

    if-eqz p7, :cond_1

    invoke-virtual {p6, p7, p8}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    :cond_1
    invoke-virtual {p6, p9}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p6, p10, p11}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    invoke-virtual {p6, p12}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {p6, p13}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {p6, p14}, Lw4/b$b;->j(Z)Lw4/b$b;

    const/4 p0, 0x1

    invoke-virtual {p6, p0}, Lw4/b$b;->p(Z)Lw4/b$b;

    invoke-virtual {p6}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "AppLockUtils"

    const-string p1, "Params not support!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static Z(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p1, v0, Lof/i$d;->b:Ljava/lang/String;

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12005e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lof/i$d;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lof/i$d;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lof/i$d;->f:J

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    const-string p1, "ApplicationLock"

    const/4 v1, 0x6

    invoke-static {p0, p1, p2, v1}, Lq4/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    iput p0, v0, Lof/i$d;->g:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lof/i$d;->h:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static a(ILmiui/security/SecurityManager;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    invoke-virtual {p1, p2, v0}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Lc3/f;->b0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public static b(II)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applock_verify_and_activate_fingerprint_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static b0(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;ZZ)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v5, 0x7f080938

    const v6, 0x7f0803ad

    const/4 v7, 0x0

    const-string v11, "com.miui.applicationlock"

    const/4 v13, 0x5

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p4

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-static/range {v1 .. v15}, Lc3/f;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private static c(Landroid/widget/Toast;I)V
    .locals 4

    const-string v0, "AppLockUtils"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTN"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mParams"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animation id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "reflect failed: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public static d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d0(Z)V
    .locals 1

    const-string v0, "post_scan_introduce_notification_count"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static e0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lc3/f;->V(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lof/i$d;

    invoke-direct {v0}, Lof/i$d;-><init>()V

    iput-object p0, v0, Lof/i$d;->a:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v0, Lof/i$d;->h:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    return-void
.end method

.method public static f0(I)V
    .locals 1

    const-string v0, "applock_alarm_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lc3/f;->a:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc3/f;->a:Ljava/util/Set;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120179

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v0, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    sget-object v5, Lc3/f;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-char v3, p0, v2

    sget-object v4, Lc3/f;->a:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static g0(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "applock_unlock_mode"

    invoke-static {p0, v0, p1}, Lah/e;->e(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applock_verify_and_activate_fingerprint_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static h0(Z)V
    .locals 1

    const-string v0, "face_unlock_dialog_notify"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lmiui/security/SecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i0(Z)V
    .locals 1

    const-string v0, "fingerprint_dialog_notify"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/d;->x(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lc3/d;->y(I)V

    invoke-virtual {v0, v1}, Lc3/d;->B(Z)V

    invoke-virtual {v0, v1}, Lc3/d;->A(Z)V

    invoke-static {p0}, Lc3/f;->i(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lc3/f;->u0(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Lc3/d;->D(Z)V

    invoke-virtual {v0, v1}, Lc3/d;->z(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lc3/d;->d(Ljava/lang/String;)V

    invoke-static {v2}, Lc3/f;->i0(Z)V

    invoke-static {v2}, Lc3/f;->h0(Z)V

    invoke-static {p0}, Lc3/f;->h(Landroid/content/Context;)V

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-static {v0}, Lc3/f;->X(Lmiui/security/SecurityManager;)V

    const-string v0, "cancel_fingerprint_verify_times"

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    const-string v0, "cancel_fingerprint_guide_times"

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    const-string v0, "cancel_face_unlock_verify_times"

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    const-string v0, "cancel_face_unlock_guide_times"

    invoke-static {v0, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Lc3/d;->f(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public static j0(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc3/f;->v0(Landroid/content/Context;I)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lc3/f;->J(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static k(I)I
    .locals 9

    const/16 v0, 0x7530

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    const/16 v2, 0x1e

    if-lt p0, v1, :cond_1

    if-ge p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8c

    if-lt p0, v2, :cond_2

    if-ge p0, v0, :cond_2

    const-wide v0, 0x40dd4c0000000000L    # 30000.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int/2addr p0, v2

    int-to-double v5, p0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    goto :goto_0

    :cond_2
    if-lt p0, v0, :cond_3

    const v0, 0x5265c00

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static k0(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highlight_first_item_package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static l()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.os.StrictMode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disableDeathOnFileUriExposure"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppLockUtils"

    const-string v2, "disableDeathOnFileUriExposure call ex"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static l0(I)V
    .locals 1

    const-string v0, "applock_LockModePrompt"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static m(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "track_dialog_behaviour"

    const/16 v1, 0x105

    if-ne p1, v1, :cond_0

    invoke-static {v0, p0}, La3/a;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x104

    if-ne p1, v1, :cond_1

    invoke-static {v0, p0}, La3/a;->B(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static m0(JLandroid/content/Context;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "applock_countDownTimer_deadline"

    invoke-static {p2, v0, p0, p1}, Lah/e;->g(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static n(ZLjava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_1

    const/16 p0, 0x105

    const-string v0, "track_not_notify_selected"

    if-ne p2, p0, :cond_0

    invoke-static {v0, p1}, La3/a;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x104

    if-ne p2, p0, :cond_1

    invoke-static {v0, p1}, La3/a;->B(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n0(I)V
    .locals 1

    const-string v0, "masked_notification_sum"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "=======AppLock Start========"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockedApps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc3/f;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskedApps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc3/f;->C(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lc3/f;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "=======AppLock End========"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static o0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "masked_notification_package"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "android.os.StrictMode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableDeathOnFileUriExposure"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppLockUtils"

    const-string v2, "enableDeathOnFileUriExposure call ex"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static p0(Z)V
    .locals 1

    const-string v0, "applock_notifycation_clicked"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.xiaomi"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q0(I)V
    .locals 1

    const-string v0, "post_introduce_notification_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static r(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r0(I)V
    .locals 1

    const-string v0, "pre_introduce_notification_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method static s(II)J
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc3/f;->E(III)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_0

    add-int/2addr p0, v2

    :goto_0
    invoke-static {v0, p0, p1}, Lc3/f;->E(III)J

    move-result-wide v3

    goto :goto_1

    :cond_0
    invoke-static {v0, p0, p1}, Lc3/f;->E(III)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gtz v1, :cond_1

    add-int/lit8 v1, p0, 0x1

    invoke-static {v0, v1, p1}, Lc3/f;->E(III)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-ltz v1, :cond_1

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    add-int/2addr p0, v2

    invoke-static {v0, p0, p1}, Lc3/f;->E(III)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_2

    invoke-static {v2, p0, p1}, Lc3/f;->E(III)J

    move-result-wide v3

    :cond_2
    :goto_1
    return-wide v3
.end method

.method public static s0(ZLandroid/view/Window;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lag/a;->a(Landroid/view/Window;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lag/a;->b(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method public static t()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ltg/a;->c(II)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ban_lock_list_change_pkg"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lef/d0;->a()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3

    invoke-static {}, Lx4/z1;->y()I

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x3e7

    invoke-static {v2, v4}, Ltg/a;->c(II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    sget-object v6, Lc3/f;->d:Landroid/util/ArraySet;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_5

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-lez v6, :cond_4

    sget-object v6, Lcom/miui/applicationlock/AppLockManageFragment;->J:Landroid/util/ArraySet;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    if-nez v7, :cond_5

    sget-object v6, Lc3/f;->b:Landroid/util/ArraySet;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lc3/d;->g:Landroid/util/ArraySet;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static t0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc3/f;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method public static u()I
    .locals 2

    const-string v0, "applock_alarm_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static u0(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com_miui_applicationlock_is_visible_pattern"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static v(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {p0}, Lc3/f;->w(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    aput p0, v0, v2

    const-string p0, "persist.vendor.sys.fp.fod.size.width_height"

    const-string v3, ""

    invoke-static {p0, v3}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    :cond_0
    return-object v0
.end method

.method public static v0(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "privacy_password_finger_authentication_num"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static w(Landroid/content/Context;)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const-string v4, ""

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_0

    if-gt v1, v2, :cond_0

    const-string p0, "persist.vendor.sys.fp.fod.location.X_Y"

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    :try_start_0
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    const-string v2, "getSensorLocation"

    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2, v5, v6}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "AppLockUtils"

    const-string v2, "getFodPosition: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string p0, "persist.sys.fp.fod.location.X_Y"

    :goto_0
    invoke-static {p0, v4}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    :cond_2
    return-object v0
.end method

.method public static w0(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "privacy_wrong_attempt_num"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static x(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highlight_first_item_package_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static x0(Landroid/view/View;)V
    .locals 9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3e100000    # -30.0f

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-direct {v5, v2, v6, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static y()I
    .locals 2

    const-string v0, "applock_LockModePrompt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static y0(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 10

    :try_start_0
    const-string v0, "miui.securityspace.CrossUserUtilsCompat"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startActivityAsCaller"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/Bundle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v9

    invoke-static {v0, v1, v3, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppLockUtils"

    const-string p2, "startActivity as caller exception: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static z(Lmiui/security/SecurityManager;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/security/SecurityManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lc3/f;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->m(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static z0(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    invoke-virtual {v1, v5, p3, p3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p3, v4, v4, p4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, p3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, -0x1000000

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p3, 0x4c

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
