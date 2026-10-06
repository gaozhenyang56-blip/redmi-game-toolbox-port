.class public Lw5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final g:I

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw5/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw5/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw5/a;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Lw5/f;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lw5/a;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lw5/f;->r()I

    move-result v0

    sput v0, Lw5/f;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lw5/f;->h:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lw5/f;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw5/f;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw5/f;->k:Ljava/util/Map;

    new-instance v7, Lw5/a;

    sget-object v6, Lw5/a$a;->l:Lw5/a$a;

    const-string v2, "com.xiaomi.mihomemanager"

    const-string v3, "com.xiaomi.mihomemanager.ui.SimulateVideoCallActivity"

    const-string v4, ""

    const-string v5, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lw5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "com.xiaomi.mihomemanager"

    const-string v2, "com.xiaomi.mihomemanager.ui.SimulateVideoCallActivity"

    invoke-static {v1, v2}, Lw5/f;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lw5/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lw5/f;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lw5/d;

    invoke-direct {v1}, Lw5/d;-><init>()V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/f;->b:Ljava/util/List;

    invoke-direct {p0}, Lw5/f;->x()V

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V
    .locals 12

    const-string v0, "BeautyUtils"

    const-string v1, ""

    invoke-static {p0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, La8/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cloudKey = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", str is empty!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activityName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "size_small"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "visible"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invisible scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance v1, Lw5/a;

    move-object v3, v1

    move-object v4, v2

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lw5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    invoke-static {v2, v9}, Lw5/f;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lw5/f;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lw5/a;->a:Ljava/lang/String;

    iget-object v3, v1, Lw5/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lw5/f;->m(Ljava/lang/String;Ljava/lang/String;)Lw5/a;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v10, v2, Lw5/a;->c:Ljava/lang/String;

    iput-object v11, v2, Lw5/a;->d:Ljava/lang/String;

    iget-object v2, v2, Lw5/a;->e:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object v2, v1, Lw5/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lw5/a$a;->g:Lw5/a$a;

    invoke-virtual {v2}, Lw5/a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lw5/a$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lw5/f;->j:Ljava/util/Map;

    iget-object v3, v1, Lw5/a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initTargetApps fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public static A0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_privacy_support_devices"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static B0(Z)V
    .locals 1

    const-string v0, "pref_dialog_privacy"

    invoke-static {v0, p0}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static C0()V
    .locals 2

    const-string v0, "pref_privacy_func"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static D0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_privacy_single_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static E0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_privacy_size"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static F()Z
    .locals 2

    const-string v0, "sp_auto_change_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F0()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lw5/e;

    invoke-direct {v1}, Lw5/e;-><init>()V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static G()Z
    .locals 3

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "taoyao"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IN"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.vcb.ability"

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static G0(ZI)V
    .locals 1

    const-string v0, "pref_screen_light"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string p0, "pref_screen_light_value"

    invoke-static {p0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static H()Z
    .locals 2

    const-string v0, "persist.vendor.vcb.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "sp_beauty_function"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_ultraclear_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static L()Z
    .locals 3

    const-string v0, "persist.vendor.vcf.colorsupport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static L0(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v0, "persist.vendor.vcb.enable"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private N()Z
    .locals 2

    iget-object v0, p0, Lw5/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw5/f;->b:Ljava/util/List;

    invoke-static {}, Lw5/f;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lw5/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw5/f;->b:Ljava/util/List;

    :goto_0
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public static N0(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "sp_beauty_function"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static O()Z
    .locals 2

    invoke-static {}, Lw5/f;->V()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget-object v0, Lw5/f;->h:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-direct {v0}, Lw5/f;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw5/f;->T0(Z)V

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static P()Z
    .locals 2

    const-string v0, "pref_face_func"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P0(ZIIZ)V
    .locals 3

    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 v0, p3, 0x10

    shl-int/lit8 v1, p2, 0xc

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchFrontLight - open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", light : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", color : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", support : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BeautyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.vendor.vcf.enable"

    invoke-static {p1, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Q0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchPortraitCenter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "persist.vendor.camera.facetracker.enable"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static R()Z
    .locals 3

    const-string v0, "persist.vendor.vcf.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static T()Z
    .locals 2

    const-string v0, "pref_light_func"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static T0(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v0, "persist.sys.privacy_camera"

    invoke-static {v0, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static U()Z
    .locals 2

    const-string v0, "pref_light_pre_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static V()Z
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mars"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldb/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static W()Z
    .locals 2

    const-string v0, "key_portrait_center_status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static X()Z
    .locals 2

    const-string v0, "pref_pc_func"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Y()Z
    .locals 3

    const-string v0, "persist.vendor.camera.facetracker.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static Z(Lw5/a;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lw5/f;->S(Lw5/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "pref_privacy_single_status"

    invoke-static {v2, v1}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lw5/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "#"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :catch_0
    move-exception p0

    const-string v1, "BeautyUtils"

    const-string v2, "isPrivacyCameraOpen error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return v0

    :cond_5
    :goto_0
    const-string p0, "pref_privacy_global_status"

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lw5/f;->j0()V

    return-void
.end method

.method public static a0()Z
    .locals 1

    invoke-static {}, Lw5/f;->O()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lw5/f;->i0()V

    return-void
.end method

.method public static b0()Z
    .locals 2

    const-string v0, "pref_dialog_privacy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c0()Z
    .locals 2

    const-string v0, "pref_privacy_func"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static e0()Z
    .locals 2

    const-string v0, "pref_screen_light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g0()Z
    .locals 2

    const-string v0, "pref_support_front_light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h0()Z
    .locals 8

    invoke-static {}, Lw5/f;->o()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "BeautyUtils"

    const-string v3, "isBeautyLightEnable error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public static i()I
    .locals 3

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-static {}, Lw5/f;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lw5/f;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lw5/f;->P()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Lw5/f;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lw5/f;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lw5/f;->T()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lw5/f;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lw5/f;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lw5/f;->c0()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lw5/f;->Y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lw5/f;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lw5/f;->X()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v2

    :cond_4
    const-string v0, "gb_game_beauty_type"

    invoke-static {v0, v2}, La8/m0;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static synthetic i0()V
    .locals 2

    invoke-static {}, Lw5/f;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.privacy_camera_radius_ratio"

    invoke-static {v1, v0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j()I
    .locals 1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lw5/f;->g:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method private static synthetic j0()V
    .locals 3

    invoke-static {}, Lw5/f;->y()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "beauty_action_monitor_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static k0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lw5/f;->l:Lw5/f;

    return-void
.end method

.method public static l0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_aisubtitle_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized m(Ljava/lang/String;Ljava/lang/String;)Lw5/a;
    .locals 2

    const-class v0, Lw5/f;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lw5/f;->i:Ljava/util/Map;

    invoke-static {p0, p1}, Lw5/f;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static m0(Z)V
    .locals 1

    const-string v0, "sp_auto_change_brightness"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static n0(I)V
    .locals 1

    const-string v0, "gb_game_beauty_type"

    invoke-static {v0, p0}, La8/m0;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public static o()I
    .locals 2

    const-string v0, "persist.vendor.vcf.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    and-int/lit16 v0, v0, 0xfff

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static declared-synchronized p()Lw5/f;
    .locals 2

    const-class v0, Lw5/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw5/f;->l:Lw5/f;

    if-nez v1, :cond_0

    new-instance v1, Lw5/f;

    invoke-direct {v1}, Lw5/f;-><init>()V

    sput-object v1, Lw5/f;->l:Lw5/f;

    :cond_0
    sget-object v1, Lw5/f;->l:Lw5/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static p0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_face_support_apps"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q()I
    .locals 2

    const-string v0, "persist.vendor.vcf.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xf000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xc

    :cond_0
    return v0
.end method

.method public static q0()V
    .locals 2

    const-string v0, "pref_face_func"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r()I
    .locals 2

    const-string v0, "softlight_current_max_smartmax"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, La8/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12b

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_1
    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_privacy_global_list"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized s(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lw5/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw5/f;->i:Ljava/util/Map;

    invoke-static {v1}, Lc7/c;->o(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lw5/f;->i:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw5/a;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    iget-object v3, v3, Lw5/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lw5/a;->b:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static s0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_light_support_apps"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t0()V
    .locals 2

    const-string v0, "pref_light_func"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_privacy_support_devices"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static u0(Z)V
    .locals 1

    const-string v0, "pref_light_pre_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_privacy_size"

    const-string v1, "1.7"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v0()V
    .locals 2

    const-string v0, "pref_pc_func"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public static w()I
    .locals 2

    const-string v0, "pref_screen_light_value"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static w0(Z)V
    .locals 1

    const-string v0, "key_portrait_center_status"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lw5/f;->g0()Z

    move-result v0

    iput-boolean v0, p0, Lw5/f;->f:Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "zeus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "cupid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "venus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "star"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "mars"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "haydn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "odin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "renoir"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw5/f;->a:Ljava/util/List;

    const-string v1, "cetus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static x0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_pickup_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized y()V
    .locals 4

    const-class v0, Lw5/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw5/f;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lw5/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {}, Lw5/f;->z()V

    const-string v1, "pref_face_support_apps"

    const-string v2, "beauty_face_support_activity_list.json"

    sget-object v3, Lw5/a$a;->c:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_light_support_apps"

    const-string v2, "beauty_light_default_support_list.json"

    sget-object v3, Lw5/a$a;->d:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_privacy_single_list"

    const-string v2, "privacy_single_support_activity_list.json"

    sget-object v3, Lw5/a$a;->e:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_privacy_global_list"

    const-string v2, "privacy_all_support_activity_list.json"

    sget-object v3, Lw5/a$a;->f:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_portrait_center_app"

    const-string v2, "protrait_support_activity_list.json"

    sget-object v3, Lw5/a$a;->g:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    invoke-static {}, Lx5/p;->M0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_pickup_phone_app_list"

    const-string v2, "pickup_support_activity_list_phone.json"

    sget-object v3, Lw5/a$a;->h:Lw5/a$a;

    :goto_0
    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    goto :goto_1

    :cond_0
    const-string v1, "pref_pickup_app"

    const-string v2, "pickup_support_activity_list.json"

    sget-object v3, Lw5/a$a;->h:Lw5/a$a;

    goto :goto_0

    :goto_1
    const-string v1, "pref_ultraclear_app"

    const-string v2, "ultraclear_support_activity_list.json"

    sget-object v3, Lw5/a$a;->j:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_aisubtitle_app"

    const-string v2, "aisubtitle_support_activity_list.json"

    sget-object v3, Lw5/a$a;->i:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_split_scene"

    const-string v2, "support_split_scene_activities.json"

    sget-object v3, Lw5/a$a;->k:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_simultaneous_interpretation_list"

    const-string v2, "simultaneous_interpretation_third_app_activity_list.json"

    sget-object v3, Lw5/a$a;->m:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_simultaneous_interpretation_system_app_list"

    const-string v2, "simultaneous_interpretation_system_app_activity_list.json"

    sget-object v3, Lw5/a$a;->n:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_conversation_record_list"

    const-string v2, "conversation_record_activity_list.json"

    sget-object v3, Lw5/a$a;->o:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    const-string v1, "pref_vt_camera_list"

    const-string v2, "vt_camera_activity_list.json"

    sget-object v3, Lw5/a$a;->p:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    iget-object v2, v2, Lw5/f;->c:Ljava/lang/String;

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v3

    iget-object v3, v3, Lw5/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lw5/f;->o0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx5/p;->I0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_gesture_effect_apps_list"

    const-string v2, "gesture_effect_support_list.json"

    sget-object v3, Lw5/a$a;->l:Lw5/a$a;

    invoke-static {v1, v2, v3}, Lw5/f;->A(Ljava/lang/String;Ljava/lang/String;Lw5/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static y0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_portrait_center_app"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static z()V
    .locals 5

    sget-object v0, Lw5/f;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lx5/p;->I0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lw5/f;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw5/a;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static z0(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lw5/f;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/a;

    const-string v0, "BeautyUtils"

    const-string v1, "persist.vendor.camera.facetracker.rrzosize"

    const-string v2, "persist.vendor.camera.facetracker.active"

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-static {v2, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "portrait effect disable"

    goto :goto_0

    :cond_1
    const-string v3, "1"

    invoke-static {v2, v3}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw5/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portrait effect active!  size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw5/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 1

    invoke-virtual {p0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    invoke-virtual {p0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H0(Z)V
    .locals 1

    iput-boolean p1, p0, Lw5/f;->f:Z

    const-string v0, "pref_support_front_light"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lw5/f;->m(Ljava/lang/String;Ljava/lang/String;)Lw5/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw5/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lw5/f;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->R()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lw5/f;->e0()Z

    move-result v0

    return v0
.end method

.method public K0()V
    .locals 1

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw5/f;->R0(Z)V

    :cond_0
    return-void
.end method

.method public M()Z
    .locals 1

    invoke-virtual {p0}, Lw5/f;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw5/f;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M0(Z)V
    .locals 2

    invoke-static {p1}, Lw5/f;->N0(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lw5/f;->h()I

    move-result p1

    invoke-static {}, Lw5/f;->q()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lw5/f;->O0(ZII)V

    invoke-static {}, Lw5/f;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lw5/f;->S0(ZLw5/a;)V

    invoke-virtual {p0, v1}, Lw5/f;->R0(Z)V

    :cond_0
    invoke-static {}, Lw5/f;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lw5/f;->Q0(Z)V

    :cond_1
    return-void
.end method

.method public O0(ZII)V
    .locals 1

    iget-boolean v0, p0, Lw5/f;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw5/f;->C()Z

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lw5/f;->P0(ZIIZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lw5/f;->G0(ZI)V

    :goto_0
    return-void
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lw5/f;->f:Z

    return v0
.end method

.method public R0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchPrivacyCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v0, "persist.sys.privacy_camera_switch"

    invoke-static {v0, p1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public S(Lw5/a;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw5/a;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public S0(ZLw5/a;)V
    .locals 5

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lw5/f;->S(Lw5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pref_privacy_single_status"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lw5/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lw5/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_4
    :goto_2
    const-string p2, "pref_privacy_global_status"

    invoke-static {p2, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lw5/f;->d(ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d(ZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    invoke-static {p2, p3}, Lw5/f;->m(Ljava/lang/String;Ljava/lang/String;)Lw5/a;

    move-result-object p2

    invoke-static {}, Lx4/y;->h()Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-static {}, Lx5/p;->H0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, La8/s1;->a()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitMode: on"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BeautyUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lw5/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/z;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lw5/a;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, La8/z;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lw5/a;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public d0(Lw5/a;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw5/a;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lw5/f;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lw5/f;->Q0(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BeautyUtils"

    const-string v1, "closePrivacyCameraPref - not support!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw5/f;->d0(Lw5/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lw5/f;->S0(ZLw5/a;)V

    :cond_1
    return-void
.end method

.method public f0()Z
    .locals 1

    invoke-static {}, Lw5/f;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lw5/f;->Y()Z

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

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lw5/f;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->o()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lw5/f;->w()I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw5/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized l()Lw5/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw5/f;->e:Lw5/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw5/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lw5/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lw5/f;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lw5/f;->m(Ljava/lang/String;Ljava/lang/String;)Lw5/a;

    move-result-object v0

    iput-object v0, p0, Lw5/f;->e:Lw5/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentInfo: pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cls "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " info "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lw5/f;->e:Lw5/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BeautyUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public t()F
    .locals 3

    invoke-static {}, La8/p;->c()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lw5/m;->a(Landroid/content/Context;)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ld6/a;->f()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNeedSetBrightness isL9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La8/p;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", backlight value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeautyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
