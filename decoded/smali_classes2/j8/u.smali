.class public Lj8/u;
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

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/miui/powerkeeper/IPowerKeeper;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lj8/w;

.field private static m:Z

.field private static n:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lj8/u;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lj8/u;->b:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lj8/u;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lj8/u;->d:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lj8/u;->e:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lj8/u;->f:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lj8/u;->g:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lj8/u;->h:Ljava/util/List;

    const/4 v4, 0x0

    sput-object v4, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    const/4 v4, 0x0

    sput-boolean v4, Lj8/u;->j:Z

    new-instance v5, Lj8/w;

    invoke-direct {v5}, Lj8/w;-><init>()V

    sput-object v5, Lj8/u;->l:Lj8/w;

    sget-object v5, Lj8/w;->d:Lj8/w$b;

    invoke-virtual {v5}, Lj8/w$b;->a()Z

    move-result v5

    sput-boolean v5, Lj8/u;->m:Z

    new-instance v5, Lj8/u$a;

    invoke-direct {v5}, Lj8/u$a;-><init>()V

    sput-object v5, Lj8/u;->n:Landroid/content/ServiceConnection;

    const-string v5, "com.miui.gallery"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "com.miui.video"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "com.qiyi.video"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "tv.pps.mobile"

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "air.tv.douyu.android"

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "com.duowan.kiwi"

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La8/p;->b()Z

    move-result v11

    const-string v12, "com.youku.phone"

    if-eqz v11, :cond_0

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v11, "com.cmcc.cmvideo"

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "tv.danmaku.bili"

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v14, "com.mxtech.videoplayer.ad"

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v15, "com.ss.android.article.video"

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "com.miui.videoplayer"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    const-string v3, "com.iqiyi.i18n"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    const-string v2, "com.ss.android.article.news"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v2

    const-string v2, "com.miui.mediaviewer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v2

    const-string v2, "com.tencent.qqlive"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v20, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v20, :cond_1

    invoke-static {}, La8/p;->b()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, v3

    const-string v3, "com.qiyi.video.pad"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v20, v3

    :goto_0
    const-string v3, "com.google.android.youtube"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v3

    const-string v3, "com.netflix.mediaclient"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v3

    const-string v3, "com.amazon.avod.thirdpartyclient"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v3

    const-string v3, "in.startv.hotstar"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v3

    const-string v3, "org.videolan.vlc"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v3

    const-string v3, "com.google.android.apps.photos"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.qqsports"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.weishi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v19, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v19, :cond_2

    invoke-static {}, La8/p;->b()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v19, v3

    const-string v3, "com.qiyi.video.pad"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v19, v3

    :goto_1
    move-object/from16 v3, v21

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v3

    move-object/from16 v3, v22

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.google.android.apps.photos"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.qqsports"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.tencent.weishi"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.sina.weibo"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.apps.photos"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.smile.gifmaker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.alibaba.android.rimet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.huya.kiwi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.bilibili.app.in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.qqlivei18n.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.youku.international.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.alibaba.android.rimet"

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.mm"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ro.vendor.display.iris_x7.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ro.vendor.display.hyperos.miDualDPU_support"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    sput-boolean v4, Lj8/u;->k:Z

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0, p0}, Lj8/w;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static B()Z
    .locals 2

    const-string v0, "debug.config.media.video.mimemc.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static C(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lj8/u;->u(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lj8/u;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static D()Z
    .locals 2

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0}, Lj8/w;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "debug.config.media.video.ais.support"

    invoke-static {v1, v0}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static E()Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0}, Lj8/w;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lj8/u;->G()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lj8/u;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static F()Z
    .locals 2

    const-string v0, "debug.config.media.video.aie.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static G()Z
    .locals 2

    const-string v0, "ro.vendor.media.video.vpp.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static H()V
    .locals 5

    const-string v0, "VideoEffectUtils"

    sget-object v1, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    sget-object v3, Lj8/u;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "release"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sput-object v1, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sput-object v1, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method public static I()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lj8/u;->j:Z

    return-void
.end method

.method public static J(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lj8/u;->O(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static K(Z)V
    .locals 3

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {}, Li8/c;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Li8/c;->e0(Z)V

    invoke-static {v0}, Lj8/u;->M(Z)V

    :cond_1
    invoke-static {}, Lj8/u;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lj8/u;->g()V

    :cond_2
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    const-string v1, "true"

    goto :goto_0

    :cond_3
    const-string v1, "false"

    :goto_0
    const-string v2, "debug.media.video.frc"

    invoke-static {v2, v1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrcStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\tsupportFRCFeature="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoEffectUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static L(Z)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lj8/u;->g()V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "extreme_video_mode_switch"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrcStatusIris7 - status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoEffectUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static M(Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lj8/u;->f()V

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug.media.video.ais"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static N(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj8/u;->O(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static O(Ljava/lang/String;ZZ)V
    .locals 2

    const-string v0, "debug.media.vpp.enable"

    const-string v1, "VideoEffectUtils"

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lj8/u;->C(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "setVppEnable: true"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "setVppEnable : false"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "false"

    :goto_0
    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static P(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVppStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tisSupportVpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj8/u;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEffectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v0, "debug.media.video.vpp"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a()Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 1

    sget-object v0, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 0

    sput-object p0, Lj8/u;->i:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object p0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lj8/u;->j:Z

    return v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lj8/u;->j:Z

    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lj8/u;->A(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static f()V
    .locals 2

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lj8/u;->L(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Li8/c;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Li8/c;->k0(Z)V

    invoke-static {v1}, Lj8/u;->K(Z)V

    :cond_1
    :goto_0
    const-string v0, "VideoEffectUtils"

    const-string v1, "fixOpenSuperDivisionConflict close frc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static g()V
    .locals 4

    invoke-static {}, Li8/c;->i()I

    move-result v0

    const-string v1, "VideoEffectUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lj8/g;->s(I)V

    invoke-static {v2}, Li8/c;->c0(I)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f121b3e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast(Ljava/lang/String;I)V

    const-string v0, "fix iris7 division conflict set display raw"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Li8/c;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Li8/c;->e0(Z)V

    invoke-static {v2}, Lj8/u;->M(Z)V

    const-string v0, "fix iris7 division conflict set SUPER_VIDEO_DIVISION close"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f121b3f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f121b47

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f121b40

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static i()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lj8/u;->j:Z

    invoke-static {}, Lj8/u;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->g()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.powerkeeper"

    const-string v2, "com.miui.powerkeeper.PowerKeeperBackgroundService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    sget-object v2, Lj8/u;->n:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->j()Ljava/util/ArrayList;

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
    sget-object v0, Lj8/u;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/u;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->m()Ljava/util/ArrayList;

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
    sget-object v0, Lj8/u;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->G()Ljava/util/ArrayList;

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
    sget-object v0, Lj8/u;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lj8/u;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Li8/c;->e()Ljava/util/ArrayList;

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
    sget-object v0, Lj8/u;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n()Z
    .locals 2

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0}, Lj8/w;->g()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ro.vendor.media.video.meeting.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "debug.config.media.video.meeting.support"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lj8/u;->k:Z

    return v0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "extreme_video_mode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    return v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0, p0}, Lj8/w;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lj8/u;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj8/u;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0, p0}, Lj8/w;->k(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lj8/u;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj8/u;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0, p0}, Lj8/w;->l(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lj8/u;->m(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lj8/u;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/u;->z()Z

    move-result p0

    return p0

    :cond_0
    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0, p0}, Lj8/w;->m(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lj8/u;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lj8/u;->k(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static w()Z
    .locals 1

    sget-boolean v0, Lj8/u;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj8/u;->l:Lj8/w;

    invoke-virtual {v0}, Lj8/w;->h()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lj8/u;->y()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lj8/u;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static x()Z
    .locals 2

    const-string v0, "debug.config.media.video.frc.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static y()Z
    .locals 2

    const-string v0, "ro.vendor.media.video.frc.support"

    const-string v1, "false"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 1

    invoke-static {}, Lj8/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lj8/u;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
