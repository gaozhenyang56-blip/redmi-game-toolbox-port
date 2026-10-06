.class public final Lgb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/b$a;
    }
.end annotation


# static fields
.field public static final c:Lgb/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile d:Lgb/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/securitycenter/Application;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgb/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/b$a;-><init>(Lbk/g;)V

    sput-object v0, Lgb/b;->c:Lgb/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lgb/b;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lgb/b;->b:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lgb/b;-><init>()V

    return-void
.end method

.method private final C(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrapTrack: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMTrackHelper"

    invoke-static {v1, v0}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEventV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a()Lgb/b;
    .locals 1

    sget-object v0, Lgb/b;->d:Lgb/b;

    return-object v0
.end method

.method public static final synthetic b(Lgb/b;)V
    .locals 0

    sput-object p0, Lgb/b;->d:Lgb/b;

    return-void
.end method

.method private final c(J)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lx4/t;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    int-to-long v2, v2

    mul-long/2addr p1, v2

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final declared-synchronized d()Lgb/b;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lgb/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgb/b;->c:Lgb/b$a;

    invoke-virtual {v1}, Lgb/b$a;->a()Lgb/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p1
.end method

.method static synthetic f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lgb/b;->e(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    const-string v0, "1127.6.2.1.25517"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "expose"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final B(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "1127.6.1.1.25515"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "card_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sequence"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.25.2.1.28301"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "app_name"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "app_package"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final h(I)V
    .locals 3

    const-string v0, "1127.25.1.1.28299"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053d

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053c

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053e

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "when (resultCode) {\n    \u2026on)\n                    }"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "click_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.26.4.1.28308"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "app_name"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "app_package"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    if-eqz p3, :cond_2

    const p2, 0x7f120182

    goto :goto_0

    :cond_2
    const p2, 0x7f120180

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "if (clickSource) res.get\u2026R.string.app_manage_list)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "click_source"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j()V
    .locals 3

    const-string v0, "1127.26.2.1.28306"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final k()V
    .locals 3

    const-string v0, "1127.25.3.1.28303"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final l(J)V
    .locals 3

    const-string v0, "1127.5.1.1.25513"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lgb/b;->c(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clean_memory"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.13.4.1.26541"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "recommend_type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "function"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    const-string p1, "monitor_link"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_3

    move-object p4, v1

    :cond_3
    const-string p1, "sequence"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n(I)V
    .locals 3

    const-string v0, "1127.26.1.1.28305"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053d

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053c

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053e

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12053f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "when (resultCode) {\n    \u2026on)\n                    }"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "click_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    const-string v0, "1127.6.2.1.25518"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12009d

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12009e

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f1200a0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12009f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "when (resultCode) {\n    \u2026  }\n                    }"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "click_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final p(Ljava/lang/String;ILandroid/view/View;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "1127.6.1.1.25516"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "card_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sequence"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const p2, 0x7f12049d

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const p2, 0x7f12049b

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const p2, 0x7f12049c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "when (view.id) {\n       \u2026  }\n                    }"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "click_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "click"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d8 -> :sswitch_1
        0x7f0b025b -> :sswitch_0
        0x7f0b0c25 -> :sswitch_0
        0x7f0b0c4d -> :sswitch_1
    .end sparse-switch
.end method

.method public final q()V
    .locals 3

    const-string v0, "1127.4.0.1.25510"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.25.2.1.28300"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "app_name"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "app_package"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final s(I)V
    .locals 3

    const-string v0, "1127.26.3.1.28307"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12017e

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f120183

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f12017d

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f120181

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "when (resultCode) {\n    \u2026me)\n                    }"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ranking_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.25.0.1.28298"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "enter_way"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final u()V
    .locals 3

    const-string v0, "1127.25.3.1.28302"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "expose"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "enterWay"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "1127.5.0.1.25511"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Llb/g;->e()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "memory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enter_way"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final w(J)V
    .locals 3

    const-string v0, "1127.5.1.1.25512"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lgb/b;->c(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clean_memory"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "1127.13.4.1.26540"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "recommend_type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "function"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    const-string p1, "monitor_link"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_3

    move-object p4, v1

    :cond_3
    const-string p1, "sequence"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final y()V
    .locals 3

    const-string v0, "1127.26.0.1.28304"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "expose"

    invoke-direct {p0, v1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final z(ZJI)V
    .locals 3

    const-string v0, "1127.6.0.1.25514"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lgb/b;->f(Lgb/b;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f1215d6

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgb/b;->b:Landroid/content/res/Resources;

    const v1, 0x7f1215d7

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "if (isScanned) res.getSt\u2026scan_status_not_complete)"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scan_status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lgb/b;->c(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "clean_memory"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "scan_time"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Loj/t;->a:Loj/t;

    const-string p1, "expose"

    invoke-direct {p0, p1, v0}, Lgb/b;->C(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
