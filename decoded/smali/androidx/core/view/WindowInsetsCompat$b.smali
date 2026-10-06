.class public final Landroidx/core/view/WindowInsetsCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/WindowInsetsCompat$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$e;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$e;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->a:Landroidx/core/view/WindowInsetsCompat$f;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$d;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$d;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$c;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$c;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$e;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->a:Landroidx/core/view/WindowInsetsCompat$f;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$d;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$d;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$c;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$c;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->a:Landroidx/core/view/WindowInsetsCompat$f;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$f;->b()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroidx/core/graphics/e;)Landroidx/core/view/WindowInsetsCompat$b;
    .locals 1
    .param p1    # Landroidx/core/graphics/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->a:Landroidx/core/view/WindowInsetsCompat$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$f;->d(Landroidx/core/graphics/e;)V

    return-object p0
.end method

.method public c(Landroidx/core/graphics/e;)Landroidx/core/view/WindowInsetsCompat$b;
    .locals 1
    .param p1    # Landroidx/core/graphics/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$b;->a:Landroidx/core/view/WindowInsetsCompat$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$f;->f(Landroidx/core/graphics/e;)V

    return-object p0
.end method
