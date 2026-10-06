.class Landroidx/core/view/o3$d;
.super Landroidx/core/view/o3$e;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroidx/core/view/o3;

.field final b:Landroid/view/WindowInsetsController;

.field final c:Landroidx/core/view/r0;

.field private final d:Lm/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/g<",
            "Ljava/lang/Object;",
            "Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/o3;Landroidx/core/view/r0;)V
    .locals 1
    .param p1    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/o3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/core/view/p3;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/o3$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/o3;Landroidx/core/view/r0;)V

    iput-object p1, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/o3;Landroidx/core/view/r0;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/o3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/view/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/core/view/o3$e;-><init>()V

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iput-object v0, p0, Landroidx/core/view/o3$d;->d:Lm/g;

    iput-object p1, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/core/view/o3$d;->a:Landroidx/core/view/o3;

    iput-object p3, p0, Landroidx/core/view/o3$d;->c:Landroidx/core/view/r0;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/o3$d;->c:Landroidx/core/view/r0;

    invoke-virtual {v0}, Landroidx/core/view/r0;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/o3$d;->e(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p1, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/o3$d;->f(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/o3$d;->e(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p1, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/o3$d;->f(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method d(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/o3$d;->b:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    return-void
.end method

.method protected e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected f(I)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/o3$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
