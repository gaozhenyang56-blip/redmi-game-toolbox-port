.class public Lme/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sheng"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "persist.vendor.battery.high.temp.protect"

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lme/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v2, Lme/q;->c:Ljava/lang/String;

    return-void
.end method

.method public static A()Z
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lme/q;->d(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportPerceptualCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static B()Z
    .locals 3

    const/16 v0, 0x9

    invoke-static {v0}, Lme/q;->d(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportTravelFastCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-static {}, Lme/q;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static a()Z
    .locals 6

    const-string v0, "shennong"

    const-string v1, "houji"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.vendor.support.moisture.version"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lgd/c;->G()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "romEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",cloudPortDampEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PowerFeatureUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    const-string v0, "vendor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "PowerFeatureUtils"

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVendorName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v0, "There is no vendor feature!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method private static c(I)Z
    .locals 2

    const-string v0, "persist.vendor.smartchg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static d(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    shl-int p0, v1, p0

    const-string v2, "persist.vendor.smartchg"

    invoke-static {v2, v0}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v2

    and-int/2addr p0, v2

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static e()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lme/q;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lme/q;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static g()Z
    .locals 2

    invoke-static {}, Lme/q;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 1

    const-string v0, "aurora"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    sget-object v0, Lme/q;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static j()Z
    .locals 2

    invoke-static {}, Lme/q;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1

    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    invoke-static {}, Lme/q;->m()Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    const-string v0, "persist.vendor.usb.camerahandle"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-object v0, Lme/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static o()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "persist.vendor.camera.polaroid"

    invoke-static {v0, v2}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private static p()Z
    .locals 3

    const-string v0, "rodin"

    const-string v1, "zorn"

    const-string v2, "miro"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    const/16 v0, 0x80

    invoke-static {v0}, Lme/q;->c(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportWirelessSilenceCharge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static r()Z
    .locals 2

    invoke-static {}, Lme/q;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xring"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 3

    invoke-static {}, Lme/q;->e()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportAndroidSaveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerFeatureUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static t()Z
    .locals 1

    invoke-static {}, Lme/w;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgd/c;->H()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lme/w;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lme/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static u()Z
    .locals 1

    const-string v0, "aurora"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lod/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lod/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lod/c;->j(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w()Z
    .locals 7

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lme/w;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lme/w;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "rothko"

    const-string v2, "amethyst"

    const-string v3, "dada"

    const-string v4, "haotian"

    const-string v5, "zorn"

    const-string v6, "miro"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static x()Z
    .locals 2

    const-string v0, "persist.vendor.camera.gadget"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 1

    sget-object v0, Lme/q;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/16 v0, 0x100

    invoke-static {v0}, Lme/q;->c(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lme/q;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lme/q;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 5

    invoke-static {}, Lme/w;->Z()Z

    move-result v0

    invoke-static {}, Lsd/b;->f()Z

    move-result v1

    invoke-static {}, Lme/q;->q()Z

    move-result v2

    invoke-static {}, Lsd/b;->g()Z

    move-result v3

    invoke-static {}, Lme/w;->i0()Z

    move-result v4

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
