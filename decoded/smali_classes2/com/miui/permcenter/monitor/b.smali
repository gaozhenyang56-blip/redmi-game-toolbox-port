.class public Lcom/miui/permcenter/monitor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/monitor/b$b;,
        Lcom/miui/permcenter/monitor/b$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 25

    invoke-static {}, Lcom/miui/permcenter/monitor/b;->d()Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/monitor/b;->a:Z

    if-eqz v0, :cond_0

    const-string v1, "com.miui.weather2"

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.deskclock"

    const-string v4, "com.miui.notes"

    const-string v5, "com.android.soundrecorder"

    const-string v6, "com.mfashiongallery.emag"

    const-string v7, "com.xiaomi.mibrain.speech"

    const-string v8, "com.miui.gallery"

    const-string v9, "com.miui.securitymanager"

    const-string v10, "com.xiaomi.vipaccount"

    const-string v11, "com.mi.health"

    const-string v12, "com.xiaomi.shop"

    const-string v13, "com.xiaomi.market"

    const-string v14, "com.xiaomi.smarthome"

    const-string v15, "com.miui.virtualsim"

    const-string v16, "com.xiaomi.gamecenter"

    const-string v17, "com.xiaomi.youpin"

    const-string v18, "com.miui.newmidrive"

    const-string v19, "cn.wps.moffice_eng.xiaomi.lite"

    const-string v20, "com.android.email"

    const-string v21, "com.xiaomi.scanner"

    const-string v22, "com.miui.calculator"

    const-string v23, "com.miui.newhome"

    const-string v24, "com.miui.compass"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/permcenter/monitor/b;->b:Ljava/util/List;

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_pre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/permcenter/monitor/b;->c:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x2710

    if-le p0, v0, :cond_0

    invoke-static {p0}, Lzb/j;->a(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lmiui/security/AppBehavior;->getBehaviorType(I)I

    move-result p0

    return p0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2712

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2713

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ly4/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/miui/permcenter/monitor/b$a;->a:Ljava/lang/String;

    sget-object v3, Lcom/miui/permcenter/monitor/b$a;->b:Ljava/lang/String;

    invoke-static {p0, v2, v3, v1}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    rem-int/lit8 v2, v0, 0x64

    if-lt v2, p0, :cond_2

    sget-boolean v2, Lcom/miui/permcenter/monitor/b;->c:Z

    if-eqz v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTrackEnable seed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",cloudScale:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",doTrack:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",IS_PRE:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/miui/permcenter/monitor/b;->c:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Malicious-Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v1
.end method

.method private static d()Z
    .locals 6

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lmiui/security/SecurityManager;

    const-string v2, "startWatchingAppBehavior"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    :cond_0
    return v1
.end method

.method private static e(I)I
    .locals 1

    const/16 v0, 0x273a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x2713

    return p0
.end method

.method public static f(JI)I
    .locals 2

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    const-wide/high16 v0, 0x200000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    const-wide v0, 0x80000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const-wide/32 v0, 0x10000000

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    const/16 p0, 0xd

    return p0

    :cond_3
    const-wide/32 v0, 0x1000000

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    const/16 p0, 0xe

    return p0

    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    const/16 p0, 0xf

    return p0

    :cond_5
    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    const/16 p0, 0x2712

    return p0

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_7

    invoke-static {p2}, Lcom/miui/permcenter/monitor/b;->e(I)I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 2

    sget-boolean v0, Lcom/miui/permcenter/monitor/b;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/monitor/MaliciousBehaviorTrackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_force_update"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
