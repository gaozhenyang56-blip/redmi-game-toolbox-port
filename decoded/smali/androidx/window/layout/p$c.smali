.class public final Landroidx/window/layout/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\rR\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/window/layout/p$c;",
        "",
        "Landroidx/window/layout/x;",
        "newLayoutInfo",
        "Loj/t;",
        "b",
        "Landroid/app/Activity;",
        "a",
        "Landroid/app/Activity;",
        "d",
        "()Landroid/app/Activity;",
        "activity",
        "Ljava/util/concurrent/Executor;",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Lb0/a;",
        "c",
        "Lb0/a;",
        "e",
        "()Lb0/a;",
        "callback",
        "Landroidx/window/layout/x;",
        "f",
        "()Landroidx/window/layout/x;",
        "setLastInfo",
        "(Landroidx/window/layout/x;)V",
        "lastInfo",
        "<init>",
        "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lb0/a;)V",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lb0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/a<",
            "Landroidx/window/layout/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Landroidx/window/layout/x;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lb0/a;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lb0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Lb0/a<",
            "Landroidx/window/layout/x;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/p$c;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroidx/window/layout/p$c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/window/layout/p$c;->c:Lb0/a;

    return-void
.end method

.method public static synthetic a(Landroidx/window/layout/p$c;Landroidx/window/layout/x;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/window/layout/p$c;->c(Landroidx/window/layout/p$c;Landroidx/window/layout/x;)V

    return-void
.end method

.method private static final c(Landroidx/window/layout/p$c;Landroidx/window/layout/x;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newLayoutInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/layout/p$c;->c:Lb0/a;

    invoke-interface {p0, p1}, Lb0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/window/layout/x;)V
    .locals 2
    .param p1    # Landroidx/window/layout/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newLayoutInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/layout/p$c;->d:Landroidx/window/layout/x;

    iget-object v0, p0, Landroidx/window/layout/p$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/window/layout/q;

    invoke-direct {v1, p0, p1}, Landroidx/window/layout/q;-><init>(Landroidx/window/layout/p$c;Landroidx/window/layout/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/p$c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final e()Lb0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb0/a<",
            "Landroidx/window/layout/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/p$c;->c:Lb0/a;

    return-object v0
.end method

.method public final f()Landroidx/window/layout/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/window/layout/p$c;->d:Landroidx/window/layout/x;

    return-object v0
.end method
