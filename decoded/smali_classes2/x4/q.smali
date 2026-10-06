.class public final Lx4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/q$a;
    }
.end annotation


# static fields
.field public static final c:Lx4/q$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lcom/miui/securitycenter/Application;

.field private static final e:Landroid/content/res/Resources;

.field private static volatile f:Lx4/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx4/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx4/q$a;-><init>(Lbk/g;)V

    sput-object v0, Lx4/q;->c:Lx4/q$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sput-object v0, Lx4/q;->d:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lx4/q;->e:Landroid/content/res/Resources;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lx4/q;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lx4/q;
    .locals 1

    sget-object v0, Lx4/q;->f:Lx4/q;

    return-object v0
.end method

.method public static final synthetic b()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lx4/q;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static final synthetic c(Lx4/q;)V
    .locals 0

    sput-object p0, Lx4/q;->f:Lx4/q;

    return-void
.end method

.method private final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized g()Lx4/q;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lx4/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/q;->c:Lx4/q$a;

    invoke-virtual {v1}, Lx4/q$a;->d()Lx4/q;

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

.method private final i(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lx4/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lx4/q;->c:Lx4/q$a;

    invoke-static {v0, p2}, Lx4/q$a;->a(Lx4/q$a;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterWay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enter_homepage_way"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callingPkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CommonTrackHelper"

    invoke-static {v4, v1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v0, v3, p2}, Lx4/q$a;->b(Lx4/q$a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx4/q;->b:Ljava/lang/String;

    return-void
.end method

.method private final j(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lx4/q;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lx4/q;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx4/q;->a:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "trackid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lx4/q;->e()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lx4/q;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic k(Lx4/q;Landroid/content/Intent;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lx4/q;->j(Landroid/content/Intent;)V

    return-void
.end method

.method public static final l(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lx4/q;->c:Lx4/q$a;

    invoke-virtual {v0, p0}, Lx4/q$a;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lx4/q;->a:Ljava/lang/String;

    const-string v1, "trackid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "tip"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lx4/q;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Lx4/q;->k(Lx4/q;Landroid/content/Intent;ILjava/lang/Object;)V

    sget-object v2, Loj/t;->a:Loj/t;

    :cond_0
    iget-object v2, p0, Lx4/q;->a:Ljava/lang/String;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v3, "trackid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data_ver"

    const-string v3, "2.0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lx4/q;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "nothing"

    :cond_1
    const-string v3, "app_source"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_2

    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f120e1b

    goto :goto_0

    :cond_2
    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f120e1c

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "if (Build.IS_TABLET) res\u2026.string.model_type_phone)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model_type"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_4

    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f1211e3

    goto :goto_1

    :cond_3
    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f1211e4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "if (CommonUtils.isFoldDe\u2026mal\n                    )"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone_type"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lx4/q;->d:Lcom/miui/securitycenter/Application;

    invoke-static {p1}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f1215e4    # 1.9418095E38f

    goto :goto_2

    :cond_5
    sget-object p1, Lx4/q;->e:Landroid/content/res/Resources;

    const v0, 0x7f1215e5

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "if (CommonUtils.isFoldEx\u2026nal\n                    )"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screen_type"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCommonParams = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonTrackHelper"

    invoke-static {v0, p1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "CommonTrackHelper"

    const-string v1, "init"

    invoke-static {v0, v1}, Lbh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lx4/q;->j(Landroid/content/Intent;)V

    invoke-direct {p0, v0, p1}, Lx4/q;->i(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method
