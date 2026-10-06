.class public final Lj8/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj8/w$b;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVideoServiceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoServiceWrapper.kt\ncom/miui/gamebooster/videobox/utils/VideoServiceWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,142:1\n1#2:143\n13600#3,2:144\n13600#3,2:146\n*S KotlinDebug\n*F\n+ 1 VideoServiceWrapper.kt\ncom/miui/gamebooster/videobox/utils/VideoServiceWrapper\n*L\n75#1:144,2\n95#1:146,2\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lj8/w$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Loj/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loj/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:Lj6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/c<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj8/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj8/w$b;-><init>(Lbk/g;)V

    sput-object v0, Lj8/w;->d:Lj8/w$b;

    sget-object v0, Lj8/w$a;->a:Lj8/w$a;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lj8/w;->e:Loj/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj6/c;

    const/16 v1, 0xb

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lj6/c;-><init>(IJ)V

    iput-object v0, p0, Lj8/w;->b:Lj6/c;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lj8/w;->c:[I

    invoke-direct {p0}, Lj8/w;->d()V

    return-void
.end method

.method public static final synthetic a()Loj/f;
    .locals 1

    sget-object v0, Lj8/w;->e:Loj/f;

    return-object v0
.end method

.method private final b()[I
    .locals 8

    const-string v0, "KEY_SUPPORT_FEATURE"

    const-string v1, "VideoServiceWrapper"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Loj/m;->b:Loj/m$a;

    iget-object v3, p0, Lj8/w;->b:Lj6/c;

    invoke-virtual {v3, v0}, Lj6/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_0

    iput-object v3, p0, Lj8/w;->c:[I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lj8/w;->a:Ljava/lang/Object;

    if-nez v3, :cond_1

    const-string v3, "_service"

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    sget-object v3, Loj/t;->a:Loj/t;

    :cond_1
    const-string v4, "getVppCapability"

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v3, v4}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [I

    iput-object v3, p0, Lj8/w;->c:[I

    iget-object v4, p0, Lj8/w;->b:Lj6/c;

    invoke-virtual {v4, v0, v3}, Lj6/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lj8/w;->c:[I

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device support Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceSupportAllFeatures : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lj8/w;->c:[I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lj8/w;->c:[I

    :goto_1
    invoke-static {v3}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v3, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceSupportAllFeatures fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-array v1, v2, [I

    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_4
    check-cast v0, [I

    return-object v0
.end method

.method private final c(Ljava/lang/String;)[I
    .locals 8

    const-string v0, "VideoServiceWrapper"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Loj/m;->b:Loj/m$a;

    iget-object v2, p0, Lj8/w;->b:Lj6/c;

    invoke-virtual {v2, p1}, Lj6/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lj8/w;->a:Ljava/lang/Object;

    if-nez v2, :cond_1

    const-string v2, "_service"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    sget-object v2, Loj/t;->a:Loj/t;

    :cond_1
    const-string v3, "getWhitelistByClient"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v2, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportFeatures : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "supportFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lj8/w;->b:Lj6/c;

    invoke-virtual {v3, p1, v2}, Lj6/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-static {v2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v2, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhitelistByClient fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-array v0, v1, [I

    invoke-static {p1}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, [I

    return-object p1
.end method

.method private final d()V
    .locals 5

    const-string v0, "VideoServiceWrapper"

    :try_start_0
    const-string v1, "android.media.VideoBoxVpp"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "callStaticObjectMethod(C\u2026p\"), \"getInstance\", null)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lj8/w;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init obj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj8/w;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v2, "_service"

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    sget-object v2, Loj/t;->a:Loj/t;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoService fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 2

    invoke-direct {p0}, Lj8/w;->b()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lqj/f;->k([II)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    invoke-direct {p0}, Lj8/w;->b()[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lqj/f;->k([II)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    invoke-direct {p0}, Lj8/w;->b()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lqj/f;->k([II)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 2

    invoke-direct {p0}, Lj8/w;->b()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lqj/f;->k([II)Z

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj8/w;->c(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lqj/f;->k([II)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj8/w;->c(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lqj/f;->k([II)Z

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj8/w;->c(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lqj/f;->k([II)Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj8/w;->c(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lqj/f;->k([II)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkgName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj8/w;->c(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lqj/f;->k([II)Z

    move-result p1

    return p1
.end method
