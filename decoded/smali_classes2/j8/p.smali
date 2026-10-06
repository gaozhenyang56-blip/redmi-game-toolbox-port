.class public Lj8/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj8/p;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lj8/p;->b:Ljava/util/List;

    const/4 v1, -0x1

    sput v1, Lj8/p;->c:I

    sput v1, Lj8/p;->d:I

    sput v1, Lj8/p;->e:I

    const-string v1, "com.qiyi.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.qqlive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.youku.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tv.danmaku.bili"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tv.danmaku.bilibilihd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lj8/u;->r()Z

    move-result v1

    const-string v2, "TheatreModeUtils"

    if-eqz v1, :cond_1

    invoke-static {p0}, Lj8/u;->A(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lj8/g;->q(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put lut prop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Li8/c;->F()Ljava/util/List;

    move-result-object v1

    sget-object v3, Lj8/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lj8/p;->a:Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloudData={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "} isStaticOrCloud="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "static"

    goto :goto_1

    :cond_3
    const-string v1, "cloud"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lj8/g;->q(I)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is contained in the 3d vision white list"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lj8/g;->q(I)V

    return-void

    :cond_5
    :goto_2
    invoke-static {v0}, Lj8/g;->q(I)V

    return-void
.end method

.method public static b()V
    .locals 2

    const-string v0, "TheatreModeUtils"

    const-string v1, "Turn off the 3D LUT Global Switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lj8/g;->q(I)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lj8/p;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lj8/g;->k()Z

    move-result v0

    sput v0, Lj8/p;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lj8/p;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lj8/u;->A(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportCinemaVisionWith3d: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSupport3DLUTV1:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lj8/p;->e:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TheatreModeUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "debug.media.video.ve"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/p;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lj8/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj8/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportTheatreModeFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TheatreModeUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static g()Z
    .locals 7

    sget v0, Lj8/p;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, La8/t;->l()Z

    move-result v3

    invoke-static {}, Lj8/o;->c()Lj8/o;

    invoke-static {}, Lj8/o;->f()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Immersive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSupportDolby="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isSupportCinemaVoice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TheatreModeUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput v0, Lj8/p;->c:I

    :cond_2
    sget v0, Lj8/p;->c:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static h()Z
    .locals 2

    sget v0, Lj8/p;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lj8/w;->d:Lj8/w$b;

    invoke-virtual {v0}, Lj8/w$b;->a()Z

    move-result v0

    sput v0, Lj8/p;->d:I

    :cond_0
    sget v0, Lj8/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static i()V
    .locals 1

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/p;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static j(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lj8/o;->j(Z)V

    invoke-static {}, Li8/c;->s()Z

    move-result v1

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v2

    invoke-virtual {v2}, Lj8/o;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lj8/o;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v4, " preOpen=false"

    const-string v5, "TheatreModeUtils"

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v6

    invoke-virtual {v6, v0}, Lj8/o;->k(Z)V

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOW close the immersive voice current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "No need to close immersive voice preOpen=true"

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Li8/c;->v0(Z)V

    invoke-static {}, Li8/c;->q()Z

    move-result v1

    invoke-static {}, La8/t;->k()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    invoke-static {v0}, La8/t;->w(Z)V

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOW close the dolby current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "No need to close dolby preOpen=true"

    :goto_2
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Li8/c;->t0(Z)V

    invoke-static {p0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Li8/c;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Lj8/u;->M(Z)V

    const-string v2, "NOW recover to user setting, open the video division. preOpen=true"

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lj8/u;->M(Z)V

    const-string v2, "No need to recover video division. preOpen=false"

    :goto_3
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Li8/c;->x0(Z)V

    :cond_6
    invoke-static {}, Lj8/u;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Li8/c;->r()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v3}, Lj8/u;->L(Z)V

    const-string v1, "NOW cinema mode Open the Frc V2 prev=true"

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lj8/u;->L(Z)V

    const-string v1, "No need to recover Frc V2. preOpen=false"

    :goto_4
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Li8/c;->u0(Z)V

    goto :goto_5

    :cond_8
    invoke-static {p0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Li8/c;->r()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v3}, Lj8/u;->K(Z)V

    const-string v1, "NOW cinema mode Open the Frc prev=true"

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lj8/u;->K(Z)V

    const-string v1, "No need to recover Frc. preOpen=false"

    goto :goto_4

    :cond_a
    :goto_5
    invoke-static {v0}, Lj8/g;->r(I)V

    const-string p0, "3D LUT enable=0"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/u;->a()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Li8/c;->v()Z

    move-result p0

    invoke-static {p0}, La8/u;->c(Z)V

    :cond_b
    return-void
.end method

.method private static k()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lj8/o;->j(Z)V

    invoke-static {}, Li8/c;->q()Z

    move-result v1

    invoke-static {}, La8/t;->k()Z

    move-result v2

    const-string v3, "TheatreModeUtils"

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    invoke-static {v0}, La8/t;->w(Z)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOW close the dolby current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " preOpen=false"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "No need to close dolby preOpen=true"

    :goto_0
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Li8/c;->t0(Z)V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Li8/c;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Lj8/u;->M(Z)V

    const-string v5, "NOW recover to user setting, open the video division. preOpen=true"

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lj8/u;->M(Z)V

    const-string v5, "No need to recover video division. preOpen=false"

    :goto_1
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Li8/c;->x0(Z)V

    :cond_3
    invoke-static {}, Lj8/u;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Li8/c;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4}, Lj8/u;->L(Z)V

    const-string v2, "NOW cinema mode Open the Frc V2 prev=true"

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lj8/u;->L(Z)V

    const-string v2, "No need to recover Frc V2. preOpen=false"

    :goto_2
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Li8/c;->u0(Z)V

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Li8/c;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Lj8/u;->K(Z)V

    const-string v2, "NOW cinema mode Open the Frc prev=true"

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lj8/u;->K(Z)V

    const-string v2, "No need to recover Frc. preOpen=false"

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {v0}, Lj8/g;->r(I)V

    const-string v0, "3D LUT enable=0"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p1(I)V

    invoke-static {}, La8/u;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Li8/c;->v()Z

    move-result v0

    invoke-static {v0}, La8/u;->c(Z)V

    :cond_8
    return-void
.end method

.method public static l(I)V
    .locals 1

    invoke-static {}, Lj8/p;->i()V

    invoke-static {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p1(I)V

    const-string p0, "debug.media.video.ve"

    const-string v0, "false"

    invoke-static {p0, v0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lj8/p;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->p1(I)V

    const-string p0, "debug.media.video.ve"

    const-string p1, "false"

    invoke-static {p0, p1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n()Z
    .locals 2

    const-string v0, "debug.media.video.ve"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Li8/c;->A0(Z)V

    const/16 v0, 0x3ea

    invoke-static {v0}, Lj8/p;->l(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static o()V
    .locals 3

    const-string v0, "debug.media.video.ve"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Li8/c;->A0(Z)V

    invoke-static {}, Lj8/p;->i()V

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static p()Z
    .locals 3

    const-string v0, "debug.media.video.ve"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Li8/c;->A0(Z)V

    invoke-static {}, Lj8/p;->k()V

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static q()V
    .locals 7

    invoke-static {}, Li8/c;->x()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v0, "Theatre"

    goto :goto_0

    :cond_0
    const-string v0, "Custom"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TheatreModeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Li8/c;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lj8/u;->M(Z)V

    const-string v4, "NOW cinema mode close the video division prev=true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v2}, Li8/c;->x0(Z)V

    :cond_2
    invoke-static {}, Lj8/u;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lj8/u;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lj8/u;->L(Z)V

    const-string v2, "NOW cinema mode Close FrcV2 prev=true"

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v0}, Li8/c;->u0(Z)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Li8/c;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lj8/u;->K(Z)V

    const-string v2, "NOW cinema mode Close the old Frc prev=true"

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static {}, Lj8/g;->c()I

    move-result v0

    invoke-static {}, Li8/c;->i()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Style="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "3D LUT and Cinema Sound open="

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    if-ne v0, v5, :cond_7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enable=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    invoke-static {v3}, Lj8/g;->s(I)V

    invoke-static {}, Lcom/miui/gamebooster/service/DockWindowManagerService;->o1()V

    goto :goto_3

    :cond_6
    invoke-static {v5}, Lj8/g;->r(I)V

    :goto_3
    invoke-static {v2}, Li8/c;->s0(I)V

    invoke-static {v5}, Lj8/o;->j(Z)V

    goto :goto_4

    :cond_7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enable=0"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    invoke-static {v3}, Lj8/g;->s(I)V

    :cond_8
    invoke-static {v2}, Li8/c;->s0(I)V

    invoke-static {v3}, Lj8/o;->j(Z)V

    :goto_4
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto :goto_5

    :cond_9
    move v0, v3

    :goto_5
    if-nez v0, :cond_a

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v2

    invoke-virtual {v2, v5}, Lj8/o;->k(Z)V

    const-string v2, "NOW Open the immersive voice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v0}, Li8/c;->v0(Z)V

    invoke-static {}, La8/t;->k()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v5}, La8/t;->w(Z)V

    const-string v2, "NOW Open the dolby"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v0}, Li8/c;->t0(Z)V

    invoke-static {}, La8/u;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, La8/u;->b()Z

    move-result v0

    invoke-static {v0}, Li8/c;->y0(Z)V

    invoke-static {v3}, La8/u;->c(Z)V

    :cond_c
    const-string v0, "debug.media.video.ve"

    const-string v1, "true"

    invoke-static {v0, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
