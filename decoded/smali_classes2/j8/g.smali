.class public Lj8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj8/g;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lj8/g;->c:Ljava/util/List;

    const-string v1, "com.qiyi.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tv.pps.mobile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "air.tv.douyu.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.qqlive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.qqsports"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.duowan.kiwi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.youku.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.amazon.avod.thirdpartyclient"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.iqiyi.i18n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "org.videolan.vlc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.apps.photos"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 0
    return-void
.end method

.method private static b(I)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    const v1, 0x7f121b79

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lj8/u;->L(Z)V

    :goto_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lj8/u;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Li8/c;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lj8/u;->K(Z)V

    invoke-static {v2}, Li8/c;->k0(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixOpenDisplayStyleConflict style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayEffectUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static c()I
    .locals 2

    const-string v0, "DisplayEffectUtils"

    const-string v1, "getCinemaVisionGlobalSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "debug.mi.filter.lut.open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 2

    const-string v0, "persist.vendor.video.dfps.level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e()I
    .locals 1

    invoke-static {}, La8/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7983

    return v0

    :cond_0
    const/16 v0, 0x453

    return v0
.end method

.method private static f()I
    .locals 1

    invoke-static {}, La8/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7985

    return v0

    :cond_0
    const/16 v0, 0x454

    return v0
.end method

.method public static g()I
    .locals 2

    const-string v0, "vendor.video.mode.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lj8/g;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static i(I)Z
    .locals 3

    invoke-static {}, Lj8/g;->n()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x4

    if-gt p0, v0, :cond_3

    if-gez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static j()Z
    .locals 2

    const-string v0, "ro.vendor.video.style.by.layer.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static l()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private static m()Z
    .locals 2

    const-string v0, "ro.vendor.media.video.style.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 3

    const-string v0, "ro.vendor.video_box.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static o()Z
    .locals 2

    const-string v0, "ro.vendor.fps.switch.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 1

    invoke-static {}, Lj8/g;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj8/g;->m()Z

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

.method public static q(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCinemaVisionGlobalSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayEffectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug.mi.filter.lut.open"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static r(I)V
    .locals 9

    const-string v0, "setCinemaVisionWith3d: "

    const-string v1, "DisplayEffectUtils"

    :try_start_0
    invoke-static {}, Lj8/g;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lj8/g;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string p0, "setCinemaVisionWith3d failed DFM=null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "setScreenEffect"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0x3a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v2, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static s(I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/t1;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "DisplayEffectUtils"

    const-string v0, "setScreenEffect skip when screen locked: "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lj8/g;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lj8/g;->v(I)V

    return-void

    :cond_2
    invoke-static {}, Lj8/g;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lj8/g;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne v0, p0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    invoke-static {v0}, Lj8/g;->u(I)V

    invoke-static {p0}, Lj8/g;->t(I)V

    return-void

    :cond_4
    invoke-static {}, Lj8/g;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lj8/g;->u(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lj8/g;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lj8/g;->t(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static t(I)V
    .locals 9

    const-string v0, "setScreenEffect: "

    const-string v1, "DisplayEffectUtils"

    :try_start_0
    invoke-static {}, Lj8/g;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lj8/g;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string p0, "setScreenEffect failed DFM=null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lj8/g;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenEffect failed invalidate value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lj8/g;->b(I)V

    sget-object v2, Lj8/g;->a:Ljava/lang/Object;

    const-string v3, "setScreenEffect"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v2, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static u(I)V
    .locals 3

    invoke-static {p0}, Lj8/g;->i(I)Z

    move-result v0

    const-string v1, "DisplayEffectUtils"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenEffect failed invalidate value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lj8/g;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenEffectInternalV1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug.media.video.style"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static v(I)V
    .locals 0
    return-void
.end method

.method public static w(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lj8/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lj8/g;->y(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    if-ne p1, p0, :cond_1

    const/4 p1, 0x5

    :cond_1
    invoke-static {p1}, Lj8/g;->x(I)V

    :goto_0
    return-void
.end method

.method private static x(I)V
    .locals 9

    const-string v0, "setScreenFpsV0: "

    const-string v1, "DisplayEffectUtils"

    :try_start_0
    invoke-static {}, Lj8/g;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lj8/g;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string p0, "setScreenFpsV0 failed DFM=null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "setScreenEffect"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0x1d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v2, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static y(Ljava/lang/String;I)V
    .locals 0
    return-void
.end method
