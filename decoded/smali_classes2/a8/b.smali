.class public La8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field private static n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lt7/c;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile o:La8/b;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La8/b;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, La8/b;->c:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "settings_gs"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "settings_ts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_sensitivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_op_stability"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    sput v0, La8/b;->d:I

    sput v0, La8/b;->e:I

    sput v0, La8/b;->f:I

    sput v0, La8/b;->g:I

    sput v0, La8/b;->h:I

    sput v0, La8/b;->i:I

    sput v0, La8/b;->j:I

    sput v0, La8/b;->k:I

    sput v0, La8/b;->l:I

    sput v0, La8/b;->m:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, La8/b;->n:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-object v0, La8/b;->o:La8/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La8/b;->a:Ljava/util/Set;

    const-string v0, "TOUCH_GAME_MODE"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->d:I

    const-string v0, "TOUCH_ACTIVE_MODE"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->e:I

    const-string v0, "TOUCH_TOLERANCE"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->f:I

    const-string v0, "TOUCH_UP_THRESHOLD"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->g:I

    const-string v0, "TOUCH_EDGE_FILTER"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->h:I

    const-string v0, "TOUCH_GAMETUROTOOL_FOLLOW_UP"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->i:I

    const-string v0, "TOUCH_GAMETUROTOOL_RESPONSE"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->j:I

    const-string v0, "TOUCH_GAMETUROTOOL_SHAKING"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->l:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, La8/b;->t(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TOUCH_GAMETUROTOOL_HOTAREA"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->k:I

    :cond_0
    const/high16 v0, 0x40600000    # 3.5f

    invoke-virtual {p0, v0}, La8/b;->t(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TOUCH_GAMETUROTOOL_MISTOUCH"

    invoke-direct {p0, v0}, La8/b;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, La8/b;->m:I

    :cond_1
    invoke-direct {p0}, La8/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, La8/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La8/b;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOUCH_GAME_MODE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_ACTIVE_MODE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_TOLERANCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_UP_THRESHOLD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_EDGE_FILTER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_GAMETUROTOOL_FOLLOW_UP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_GAMETUROTOOL_RESPONSE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_GAMETUROTOOL_SHAKING:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_GAMETUROTOOL_HOTAREA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TOUCH_GAMETUROTOOL_MISTOUCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La8/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizedService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private B(II)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private C(III)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AdvanceSettingsUtil"

    if-eqz v0, :cond_0

    const-string p1, "convertWhiteList: invalid!!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lt7/c;->a(Lorg/json/JSONObject;)Lt7/c;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, La8/b;->n:Landroid/util/SparseArray;

    iget v5, v3, Lt7/c;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, La8/b;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "support feature : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La8/b;->a:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertWhiteList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private b()F
    .locals 3

    :try_start_0
    const-string v0, "persist.vendor.touchfeature.gameturbotool.version"

    const-string v1, ""

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property version crash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvanceSettingsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static d()La8/b;
    .locals 2

    sget-object v0, La8/b;->o:La8/b;

    if-nez v0, :cond_1

    const-class v0, La8/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/b;->o:La8/b;

    if-nez v1, :cond_0

    new-instance v1, La8/b;

    invoke-direct {v1}, La8/b;-><init>()V

    sput-object v1, La8/b;->o:La8/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, La8/b;->o:La8/b;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1
    const-string v0, ""
    return-object v0
.end method

.method private g()I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private j(I)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private k(II)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private m(I)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private n(II)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private p(I)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private q(II)I
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static r(Ljava/lang/String;)I
    .locals 2

    sget-object v0, La8/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private s()Z
    .locals 2

    invoke-direct {p0}, La8/b;->b()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static u()Z
    .locals 3

    const-string v0, "ro.vendor.touchfeature.type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lwg/a;->b(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v2, "com.miui.securityadd"

    invoke-static {v0, v2}, Lx4/f1;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "support_game_turbo_func_flags"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private x(I)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method private y(II)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static z(Ljava/lang/String;)V
    .locals 0
    return-void
.end method


# virtual methods
.method public A(III)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchMode: displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvanceSettingsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0}, La8/b;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2, p3}, La8/b;->B(II)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, La8/b;->C(III)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, La8/b;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt7/c;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p2, Lt7/c;->e:Z

    const/high16 v2, 0x40600000    # 3.5f

    if-eqz v1, :cond_2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1, v2}, La8/b;->t(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lt7/c;->d:I

    if-lez p1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v1, p2, Lt7/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p2, Lt7/c;->b:Z

    if-eqz p1, :cond_4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1, v2}, La8/b;->t(F)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p2, Lt7/c;->d:I

    if-lez p1, :cond_3

    return p1

    :cond_3
    iget-boolean p1, p2, Lt7/c;->b:Z

    return p1

    :cond_4
    return v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La8/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public i(II)I
    .locals 2

    invoke-direct {p0}, La8/b;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p2}, La8/b;->j(I)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, La8/b;->k(II)I

    move-result p1

    return p1
.end method

.method public l(II)I
    .locals 2

    invoke-direct {p0}, La8/b;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p2}, La8/b;->m(I)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, La8/b;->n(II)I

    move-result p1

    return p1
.end method

.method public o(II)I
    .locals 2

    invoke-direct {p0}, La8/b;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p2}, La8/b;->p(I)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, La8/b;->q(II)I

    move-result p1

    return p1
.end method

.method public t(F)Z
    .locals 1

    invoke-direct {p0}, La8/b;->b()F

    move-result v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v()Z
    .locals 1

    invoke-direct {p0}, La8/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La8/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(II)Z
    .locals 2

    invoke-direct {p0}, La8/b;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p2}, La8/b;->x(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, La8/b;->y(II)Z

    move-result p1

    return p1
.end method
