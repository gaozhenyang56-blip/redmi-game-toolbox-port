.class public final Landroidx/window/layout/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/layout/t$a;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroidx/window/layout/t;",
        "a",
        "Landroidx/window/layout/r;",
        "b",
        "(Landroid/content/Context;)Landroidx/window/layout/r;",
        "",
        "Z",
        "DEBUG",
        "",
        "c",
        "Ljava/lang/String;",
        "TAG",
        "Landroidx/window/layout/u;",
        "d",
        "Landroidx/window/layout/u;",
        "decorator",
        "<init>",
        "()V",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field static final synthetic a:Landroidx/window/layout/t$a;

.field private static final b:Z

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Landroidx/window/layout/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/t$a;

    invoke-direct {v0}, Landroidx/window/layout/t$a;-><init>()V

    sput-object v0, Landroidx/window/layout/t$a;->a:Landroidx/window/layout/t$a;

    const-class v0, Landroidx/window/layout/t;

    invoke-static {v0}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v0

    invoke-interface {v0}, Lhk/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/layout/t$a;->c:Ljava/lang/String;

    sget-object v0, Landroidx/window/layout/h;->a:Landroidx/window/layout/h;

    sput-object v0, Landroidx/window/layout/t$a;->d:Landroidx/window/layout/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/t;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "getOrCreate"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/v;

    sget-object v1, Landroidx/window/layout/a0;->a:Landroidx/window/layout/a0;

    invoke-virtual {p0, p1}, Landroidx/window/layout/t$a;->b(Landroid/content/Context;)Landroidx/window/layout/r;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/window/layout/v;-><init>(Landroidx/window/layout/z;Landroidx/window/layout/r;)V

    sget-object p1, Landroidx/window/layout/t$a;->d:Landroidx/window/layout/u;

    invoke-interface {p1, v0}, Landroidx/window/layout/u;->a(Landroidx/window/layout/t;)Landroidx/window/layout/t;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/r;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/window/layout/n;->a:Landroidx/window/layout/n;

    invoke-virtual {v1}, Landroidx/window/layout/n;->m()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/window/layout/j;

    invoke-direct {v2, v1}, Landroidx/window/layout/j;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    sget-boolean v1, Landroidx/window/layout/t$a;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/window/layout/t$a;->c:Ljava/lang/String;

    const-string v2, "Failed to load WindowExtensions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Landroidx/window/layout/p;->c:Landroidx/window/layout/p$a;

    invoke-virtual {v0, p1}, Landroidx/window/layout/p$a;->a(Landroid/content/Context;)Landroidx/window/layout/p;

    move-result-object v0

    :cond_2
    return-object v0
.end method
