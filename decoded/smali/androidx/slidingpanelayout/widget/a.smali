.class public final Landroidx/slidingpanelayout/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u000fB\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u0008R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/a;",
        "",
        "Landroidx/window/layout/x;",
        "windowLayoutInfo",
        "Landroidx/window/layout/l;",
        "d",
        "Landroidx/slidingpanelayout/widget/a$a;",
        "onFoldingFeatureChangeListener",
        "Loj/t;",
        "f",
        "Landroid/app/Activity;",
        "activity",
        "e",
        "g",
        "Landroidx/window/layout/t;",
        "a",
        "Landroidx/window/layout/t;",
        "windowInfoTracker",
        "Ljava/util/concurrent/Executor;",
        "b",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Llk/s1;",
        "c",
        "Llk/s1;",
        "job",
        "Landroidx/slidingpanelayout/widget/a$a;",
        "<init>",
        "(Landroidx/window/layout/t;Ljava/util/concurrent/Executor;)V",
        "slidingpanelayout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroidx/window/layout/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroidx/slidingpanelayout/widget/a$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/layout/t;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/window/layout/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "windowInfoTracker"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->a:Landroidx/window/layout/t;

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic a(Landroidx/slidingpanelayout/widget/a;Landroidx/window/layout/x;)Landroidx/window/layout/l;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/a;->d(Landroidx/window/layout/x;)Landroidx/window/layout/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/slidingpanelayout/widget/a;)Landroidx/slidingpanelayout/widget/a$a;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/a;->d:Landroidx/slidingpanelayout/widget/a$a;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/slidingpanelayout/widget/a;)Landroidx/window/layout/t;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/a;->a:Landroidx/window/layout/t;

    return-object p0
.end method

.method private final d(Landroidx/window/layout/x;)Landroidx/window/layout/l;
    .locals 3

    invoke-virtual {p1}, Landroidx/window/layout/x;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/window/layout/g;

    instance-of v2, v2, Landroidx/window/layout/l;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Landroidx/window/layout/l;

    if-eqz p1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/window/layout/l;

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final e(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/a;->c:Llk/s1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/a;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Llk/k1;->b(Ljava/util/concurrent/Executor;)Llk/d0;

    move-result-object v0

    invoke-static {v0}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroidx/slidingpanelayout/widget/a$b;

    invoke-direct {v5, p0, p1, v1}, Landroidx/slidingpanelayout/widget/a$b;-><init>(Landroidx/slidingpanelayout/widget/a;Landroid/app/Activity;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p1

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->c:Llk/s1;

    return-void
.end method

.method public final f(Landroidx/slidingpanelayout/widget/a$a;)V
    .locals 1
    .param p1    # Landroidx/slidingpanelayout/widget/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onFoldingFeatureChangeListener"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->d:Landroidx/slidingpanelayout/widget/a$a;

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/a;->c:Llk/s1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
