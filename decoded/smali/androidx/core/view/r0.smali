.class public final Landroidx/core/view/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/r0$b;,
        Landroidx/core/view/r0$c;,
        Landroidx/core/view/r0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/view/r0$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/r0$b;

    invoke-direct {v0, p1}, Landroidx/core/view/r0$b;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/r0;->a:Landroidx/core/view/r0$c;

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/core/view/r0$a;

    invoke-direct {v0, p1}, Landroidx/core/view/r0$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/r0;->a:Landroidx/core/view/r0$c;

    invoke-virtual {v0}, Landroidx/core/view/r0$c;->a()V

    return-void
.end method
