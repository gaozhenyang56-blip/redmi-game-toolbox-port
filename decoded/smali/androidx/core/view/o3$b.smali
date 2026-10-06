.class Landroidx/core/view/o3$b;
.super Landroidx/core/view/o3$a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/r0;)V
    .locals 0
    .param p1    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/r0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/core/view/o3$a;-><init>(Landroid/view/Window;Landroidx/core/view/r0;)V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    const/high16 p1, 0x4000000

    invoke-virtual {p0, p1}, Landroidx/core/view/o3$a;->i(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1}, Landroidx/core/view/o3$a;->g(I)V

    invoke-virtual {p0, v0}, Landroidx/core/view/o3$a;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/o3$a;->h(I)V

    :goto_0
    return-void
.end method
