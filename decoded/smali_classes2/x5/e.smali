.class public final Lx5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/e$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConversationFeatureTrackUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConversationFeatureTrackUtils.kt\ncom/miui/gamebooster/beauty/conversation/ConversationFeatureTrackUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,395:1\n384#1,11:396\n384#1,11:407\n384#1,11:418\n384#1,11:429\n384#1,11:440\n384#1,11:451\n384#1,11:462\n1855#2,2:473\n1855#2,2:475\n*S KotlinDebug\n*F\n+ 1 ConversationFeatureTrackUtils.kt\ncom/miui/gamebooster/beauty/conversation/ConversationFeatureTrackUtils\n*L\n315#1:396,11\n322#1:407,11\n329#1:418,11\n336#1:429,11\n343#1:440,11\n350#1:451,11\n357#1:462,11\n231#1:473,2\n235#1:475,2\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lx5/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg8/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg8/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg8/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx5/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx5/e$a;-><init>(Lbk/g;)V

    sput-object v0, Lx5/e;->g:Lx5/e$a;

    const-string v0, "\u4e0d\u652f\u6301"

    sput-object v0, Lx5/e;->h:Ljava/lang/String;

    const-string v0, "\u652f\u6301"

    sput-object v0, Lx5/e;->i:Ljava/lang/String;

    const-string v0, "\u5f00\u542f"

    sput-object v0, Lx5/e;->j:Ljava/lang/String;

    const-string v0, "\u5173\u95ed"

    sput-object v0, Lx5/e;->k:Ljava/lang/String;

    const-string v0, "\u53ef\u7528"

    sput-object v0, Lx5/e;->l:Ljava/lang/String;

    const-string v0, "\u4e0d\u53ef\u7528"

    sput-object v0, Lx5/e;->m:Ljava/lang/String;

    const-string v0, "ConversationFeatureTrackUtils"

    sput-object v0, Lx5/e;->n:Ljava/lang/String;

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fold"

    goto :goto_0

    :cond_0
    const-string v0, "\u76f4\u677f"

    :goto_0
    sput-object v0, Lx5/e;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "_usingPkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_usingActivityClz"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lx5/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "app_pkg_name_in_use"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "app_activity_in_use"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-object v0, p0, Lx5/e;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object p2, Lg8/a;->n:Lg8/a;

    const-string v0, "beauty_status"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg8/a;->o:Lg8/a;

    const-string v1, "fill_light_status"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg8/a;->p:Lg8/a;

    const-string v2, "portrait_center_status"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lg8/a;->t:Lg8/a;

    const-string v3, "ultra_clear_status"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lg8/a;->y:Lg8/a;

    const-string v4, "gesture_effect_status"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lg8/a;->u:Lg8/a;

    const-string v5, "screen_translation_status"

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg8/a;->r:Lg8/a;

    const-string v6, "realtime_subtitle_status"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lg8/a;->x:Lg8/a;

    const-string v7, "interpretation_status"

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lg8/a;->A:Lg8/a;

    const-string v8, "recording_status"

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lg8/a;->z:Lg8/a;

    const-string v9, "cross_camera_status"

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lg8/a;->s:Lg8/a;

    const-string v10, "call_reduction_status"

    invoke-interface {p1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lg8/a;->q:Lg8/a;

    const-string v11, "privacy_shooting_status"

    invoke-interface {p1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx5/e;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "\u7f8e\u989c"

    invoke-interface {p1, p2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u8865\u5149"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u4eba\u50cf\u5c45\u4e2d"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u8d85\u6e05\u6a21\u5f0f"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u624b\u52bf\u7279\u6548"

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u5c4f\u5e55\u7ffb\u8bd1"

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u5b9e\u65f6\u5b57\u5e55"

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u540c\u58f0\u4f20\u8bd1"

    invoke-interface {p1, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u5f55\u97f3"

    invoke-interface {p1, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u8de8\u8bbe\u5907\u76f8\u673a"

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u901a\u8bdd\u964d\u566a"

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "\u9690\u79c1\u62cd\u6444"

    invoke-interface {p1, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx5/e;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lx5/e;->f:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lx5/e;Lc6/c;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lx5/e;->v(Lx5/e;Lc6/c;IZ)V

    return-void
.end method

.method public static synthetic b(JLx5/e;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lx5/e;->t(JLx5/e;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx5/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u524d\u6444\u6444\u50cf\u5934"

    return-object v0

    :cond_0
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u540e\u6444\u6444\u50cf\u5934"

    return-object v0

    :cond_1
    const-string v0, "\u8bed\u97f3\u6a21\u5f0f"

    return-object v0
.end method

.method private final j(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lx5/e;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5916\u5c4f"

    goto :goto_0

    :cond_0
    const-string v0, "\u5185\u5c4f"

    :goto_0
    const-string v1, "screen_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lx5/e;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_mode"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lx5/e;->g:Lx5/e$a;

    invoke-static {v0, p1}, Lx5/e$a;->b(Lx5/e$a;Ljava/util/Map;)V

    return-void
.end method

.method private static final t(JLx5/e;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toolBoxItems"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "duration"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lx5/e;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lx5/e;->h:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/h;

    iget-object p3, p2, Lx5/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lh8/h;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lx5/e;->l:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object p1, Lx5/e;->m:Ljava/lang/String;

    :goto_2
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p0, "tip"

    const-string p1, "1513.1.1.1.36379"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2, v0}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p0, "expose"

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p2, Lx5/e;->f:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p1, Lx5/e;->n:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trackToolBoxExpose fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private static final v(Lx5/e;Lc6/c;IZ)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "function_name"

    iget-object v2, p0, Lx5/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "\u672a\u77e5\u529f\u80fd"

    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const-string p2, "status_after_click"

    sget-object p3, Lx5/e;->g:Lx5/e$a;

    invoke-virtual {p1}, Lc6/c;->o()Z

    move-result p1

    invoke-static {p3, p1}, Lx5/e$a;->a(Lx5/e$a;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "tip"

    const-string p2, "1513.1.2.1.36173"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p0, "click"

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lx5/e;->n:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trackToolBoxItemClick fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final k()I
    .locals 1

    iget-object v0, p0, Lx5/e;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final l(Z)V
    .locals 3

    new-instance v0, Loj/l;

    sget-object v1, Lx5/e;->g:Lx5/e$a;

    invoke-static {v1, p1}, Lx5/e$a;->a(Lx5/e$a;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u624b\u52bf\u7279\u6548_\u5f00\u5173"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final m(I)V
    .locals 3

    new-instance v0, Loj/l;

    invoke-static {p1}, Lz5/a;->k(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u8865\u5149_\u8865\u5149\u706f\u8272\u6e29"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n(I)V
    .locals 3

    new-instance v0, Loj/l;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u8865\u5149_\u8865\u5149\u706f\u4eae\u5ea6"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final o(Z)V
    .locals 3

    new-instance v0, Loj/l;

    sget-object v1, Lx5/e;->g:Lx5/e$a;

    invoke-static {v1, p1}, Lx5/e$a;->a(Lx5/e$a;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u8865\u5149_\u5f00\u5173"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final p(Lc6/h$a;)V
    .locals 3
    .param p1    # Lc6/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Loj/l;

    invoke-static {p1}, Lz5/a;->l(Lc6/h$a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u901a\u8bdd\u964d\u566a_\u9ea6\u514b\u98ce\u964d\u566a\u573a\u666f"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final q(Z)V
    .locals 3

    new-instance v0, Loj/l;

    sget-object v1, Lx5/e;->g:Lx5/e$a;

    invoke-static {v1, p1}, Lx5/e$a;->a(Lx5/e$a;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u901a\u8bdd\u964d\u566a_\u9ea6\u514b\u98ce\u964d\u566a"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r(Z)V
    .locals 3

    new-instance v0, Loj/l;

    sget-object v1, Lx5/e;->g:Lx5/e$a;

    invoke-static {v1, p1}, Lx5/e$a;->a(Lx5/e$a;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u901a\u8bdd\u964d\u566a_\u626c\u58f0\u5668\u8033\u673a\u964d\u566a"

    invoke-direct {v0, v1, p1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Loj/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "set_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "set_value"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tip"

    const-string v0, "1513.1.0.1.36174"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p1, "set"

    invoke-static {p1, v1}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final s(JLjava/util/List;)V
    .locals 2
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lh8/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolBoxItems"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/d;

    invoke-direct {v1, p1, p2, p0, p3}, Lx5/d;-><init>(JLx5/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Lc6/c;IZ)V
    .locals 2
    .param p1    # Lc6/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lx5/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lx5/c;-><init>(Lx5/e;Lc6/c;IZ)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lh8/h;I)V
    .locals 3
    .param p1    # Lh8/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lx5/e;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "if_enabled"

    invoke-virtual {p1}, Lh8/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lx5/e;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lx5/e;->m:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "function_name"

    iget-object v1, p0, Lx5/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "\u672a\u77e5\u529f\u80fd"

    :cond_2
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "tip"

    const-string v1, "1513.1.2.1.36172"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lx5/e;->j(Ljava/util/Map;)V

    const-string p2, "expose"

    invoke-static {p2, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lx5/e;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    const-string v0, "item.getmFunctionType()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lx5/e;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackToolBoxItemExpose fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final x()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "function_name"

    const-string v2, "\u8bbe\u7f6e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tip"

    const-string v2, "1513.1.2.1.36173"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lx5/e;->j(Ljava/util/Map;)V

    const-string v1, "click"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
