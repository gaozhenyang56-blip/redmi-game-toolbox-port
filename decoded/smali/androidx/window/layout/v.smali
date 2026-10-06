.class public final Landroidx/window/layout/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/v$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0006B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/layout/v;",
        "Landroidx/window/layout/t;",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlinx/coroutines/flow/e;",
        "Landroidx/window/layout/x;",
        "a",
        "Landroidx/window/layout/z;",
        "b",
        "Landroidx/window/layout/z;",
        "windowMetricsCalculator",
        "Landroidx/window/layout/r;",
        "c",
        "Landroidx/window/layout/r;",
        "windowBackend",
        "<init>",
        "(Landroidx/window/layout/z;Landroidx/window/layout/r;)V",
        "d",
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
.field public static final d:Landroidx/window/layout/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Landroidx/window/layout/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/window/layout/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/v$a;-><init>(Lbk/g;)V

    sput-object v0, Landroidx/window/layout/v;->d:Landroidx/window/layout/v$a;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/z;Landroidx/window/layout/r;)V
    .locals 1
    .param p1    # Landroidx/window/layout/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/window/layout/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "windowMetricsCalculator"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackend"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/v;->b:Landroidx/window/layout/z;

    iput-object p2, p0, Landroidx/window/layout/v;->c:Landroidx/window/layout/r;

    return-void
.end method

.method public static final synthetic b(Landroidx/window/layout/v;)Landroidx/window/layout/r;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/v;->c:Landroidx/window/layout/r;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "Landroidx/window/layout/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/window/layout/v$b;-><init>(Landroidx/window/layout/v;Landroid/app/Activity;Ltj/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->j(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method
