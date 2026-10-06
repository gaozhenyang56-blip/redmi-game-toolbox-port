.class public final Lmb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOneTrackHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneTrackHelper.kt\ncom/miui/permcenter/analytics/OneTrackHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,351:1\n1855#2,2:352\n766#2:354\n857#2,2:355\n1855#2,2:358\n1855#2:361\n1747#2,3:365\n1856#2:368\n766#2:369\n857#2,2:370\n1855#2,2:372\n215#3:357\n216#3:360\n3792#4:362\n4307#4,2:363\n*S KotlinDebug\n*F\n+ 1 OneTrackHelper.kt\ncom/miui/permcenter/analytics/OneTrackHelper\n*L\n112#1:352,2\n143#1:354\n143#1:355,2\n160#1:358,2\n186#1:361\n197#1:365,3\n186#1:368\n324#1:369\n324#1:370,2\n330#1:372,2\n155#1:357\n155#1:360\n195#1:362\n195#1:363,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lmb/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmb/b;

    invoke-direct {v0}, Lmb/b;-><init>()V

    sput-object v0, Lmb/b;->a:Lmb/b;

    const/16 v0, 0xc

    new-array v0, v0, [Loj/l;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u663e\u793a\u5728\u5176\u4ed6\u5e94\u7528\u7684\u4e0a\u5c42"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5a92\u4f53\u7ba1\u7406\u5e94\u7528"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4fee\u6539\u7cfb\u7edf\u8bbe\u7f6e"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u753b\u4e2d\u753b"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5b89\u88c5\u672a\u77e5\u5e94\u7528"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u95f9\u949f\u548c\u63d0\u9192"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4f7f\u7528\u60c5\u51b5\u8bbf\u95ee\u6743\u9650"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x2735

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u865a\u62df\u8eab\u4efd\u7ba1\u7406"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WLAN\u63a7\u5236"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5f00\u542f\u5c4f\u5e55"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5168\u5c4f\u901a\u77e5"

    invoke-static {v1, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Lqj/d0;->f([Loj/l;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmb/b;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2742

    if-ne v0, v1, :cond_1

    const-string p1, "hidden_id_switch"

    goto :goto_4

    :cond_1
    :goto_0
    const/16 v0, 0x273f

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    const-string p1, "isolated_storage_switch"

    goto :goto_4

    :cond_3
    :goto_1
    const/16 v0, 0x2740

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    const-string p1, "prevent_wrong_install_switch"

    goto :goto_4

    :cond_5
    :goto_2
    const/16 v0, 0x2741

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    const-string p1, "palm_rejection_switch"

    goto :goto_4

    :cond_7
    :goto_3
    const-string p1, "-"

    :goto_4
    return-object p1
.end method

.method private final b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lx4/q;->c:Lx4/q$a;

    invoke-virtual {v0}, Lx4/q$a;->d()Lx4/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx4/q;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p1
.end method

.method static synthetic c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmb/b;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "relatedPkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ref"

    const-string v2, "other_app_launch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "related_package_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "expose"

    invoke-static {p2, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "toast"

    const-string v4, "forbid_launch_toast"

    goto :goto_0

    :cond_0
    const-string v3, "click"

    invoke-static {p2, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "button"

    const-string v4, "forbid_launch_toast_permit_btn"

    goto :goto_0

    :cond_1
    const-string v3, "nullType"

    const-string v4, "nullName"

    :goto_0
    const-string v5, "packageName"

    invoke-static {v1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "package_name"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "versionName"

    invoke-static {v2, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "version_name"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "version_code"

    invoke-interface {v0, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "item_type"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "item_name"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},versionName:{"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "},versionCode:{"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},relatedPkgName:{"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},itemType:{"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},itemName:{"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "},"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p2, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackAppManEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ApplicationsDetailsActivity"

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "app_info"

    const-string p3, "button"

    const-string v1, "app_manage_setting_btn"

    goto :goto_3

    :cond_3
    const-string v1, "ApplicationManagementActivity"

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "app_manage_setting"

    const-string v1, "view"

    invoke-static {p0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "page"

    goto :goto_2

    :cond_4
    const-string v1, "switch"

    :goto_2
    sget-object v2, Lmb/b;->a:Lmb/b;

    invoke-direct {v2, p3}, Lmb/b;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    move-object v3, v1

    move-object v1, p3

    move-object p3, v3

    goto :goto_3

    :cond_5
    const-string p1, "nullRef"

    const-string p3, "nullType"

    const-string v1, "nullName"

    :goto_3
    const-string v2, "ref"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_name"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "package_name"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_7

    const-string p1, "switch_action"

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "on"

    goto :goto_4

    :cond_6
    const-string p2, "off"

    :goto_4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackAppManEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "OneTrackHelper"

    const-string p2, "trackAppManSetEvent: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ref"

    const-string v2, "safe_space_status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    const-string v2, "switch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "switch_action_list"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackAppManEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final g(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tip"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmb/b;->a:Lmb/b;

    invoke-direct {v0, p0, p1}, Lmb/b;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "click"

    invoke-static {p1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final h(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tip"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmb/b;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tip"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lmb/b;->a:Lmb/b;

    invoke-direct {v0, p0, p1}, Lmb/b;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "expose"

    invoke-static {p1, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final j(Landroid/content/Context;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "context.packageManager.g\u2026.GET_SIGNATURES\n        )"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lmiui/provider/ExtraNetwork;->isWifiRestrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    xor-int/2addr v6, v5

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lmiui/provider/ExtraNetwork;->isMobileRestrict(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    xor-int/2addr v5, v7

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "loadAppLabel(context, it.packageName)"

    invoke-static {v7, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "app_name"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "it.packageName"

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "app_package"

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "\u6570\u636e\u53611"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "\u6570\u636e\u53612"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "wifi"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_list"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmb/b;->a:Lmb/b;

    const/4 v1, 0x2

    const-string v2, "1127.31.1.1.28342"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lmb/b;->c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "data_recovery"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final k(Landroid/content/Context;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "permission_type"

    const-string v3, "\u8bbe\u5907\u548c\u5e94\u7528\u901a\u77e5"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "app_list"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v7}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadAppLabel(context, it.applicationInfo)"

    invoke-static {v7, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "app_name"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "it.packageName"

    invoke-static {v7, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "app_package"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    const-string v9, "0"

    const-string v10, "permission_state"

    if-ge v7, v8, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v5

    move v12, v7

    :goto_2
    if-ge v12, v11, :cond_3

    aget-object v13, v5, v12

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v15, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v14, v15}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ServiceInfo;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v11}, Lcom/miui/bubbles/services/b;->a(Landroid/app/NotificationManager;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    move v7, v5

    :cond_6
    :goto_3
    if-eqz v7, :cond_0

    const-string v9, "1"

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    const-string v2, "1127.32.0.1.32471"

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-static {v4, v2, v3, v0, v3}, Lmb/b;->c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "status"

    invoke-static {v0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final l(Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1084

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "context.packageManager.g\u2026er.GET_SERVICES\n        )"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lv9/d;->a:Lv9/d;

    invoke-virtual {v3, p0}, Lv9/d;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "\u5f00"

    goto :goto_2

    :cond_3
    const-string p0, "\u5173"

    :goto_2
    const-string v3, "main_switch_status"

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    const/16 v5, 0x2736

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    const-string v5, "2"

    goto :goto_4

    :cond_4
    const-string v5, "0"

    goto :goto_4

    :cond_5
    const-string v5, "1"

    :goto_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "it.packageName"

    invoke-static {v3, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "app_package"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v0, "app_status"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lmb/b;->a:Lmb/b;

    const/4 v0, 0x2

    const-string v2, "1127.36.0.1.35765"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v3}, Lmb/b;->c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string p0, "status"

    invoke-static {p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 15
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1084

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "context.packageManager.g\u2026er.GET_SERVICES\n        )"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "it.packageName"

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, ".qualcomm."

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, v4, v6}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, ".google."

    invoke-static {v8, v11, v10, v4, v6}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, ".qti."

    invoke-static {v8, v11, v10, v4, v6}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ".mediatek."

    invoke-static {v8, v5, v10, v4, v6}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v9

    if-lez v4, :cond_2

    move v4, v9

    goto :goto_1

    :cond_2
    move v4, v10

    :goto_1
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_3

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    move v10, v9

    :cond_3
    if-eqz v10, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v1, Lmb/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "permission_type"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "app_list"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v11, v12, v13}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v13}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "loadAppLabel(context, it.applicationInfo)"

    invoke-static {v13, v14}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "app_name"

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "app_package"

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v11, :cond_5

    const-string v10, "1"

    goto :goto_4

    :cond_5
    const-string v10, "0"

    :goto_4
    const-string v11, "permission_state"

    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object v3, Lmb/b;->a:Lmb/b;

    const-string v8, "1127.32.0.1.32471"

    invoke-static {v3, v8, v6, v4, v6}, Lmb/b;->c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v3, "status"

    invoke-static {v3, v7}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lmb/b;->a:Lmb/b;

    invoke-direct {v0, p0, v2}, Lmb/b;->k(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tip"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lmb/b;->c(Lmb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "reset_success"

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
