.class public Lpl/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/j$d;->a:Z

    iput p1, p0, Lpl/j$d;->b:I

    iput p2, p0, Lpl/j$d;->c:I

    iput p3, p0, Lpl/j$d;->d:I

    iput p4, p0, Lpl/j$d;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/j$d;->a:Z

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->F(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lpl/j$d;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lpl/j$d;->c:I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lpl/j$d;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lpl/j$d;->e:I

    return-void
.end method

.method public constructor <init>(Lpl/j$d;)V
    .locals 1
    .param p1    # Lpl/j$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/j$d;->a:Z

    iget v0, p1, Lpl/j$d;->b:I

    iput v0, p0, Lpl/j$d;->b:I

    iget v0, p1, Lpl/j$d;->c:I

    iput v0, p0, Lpl/j$d;->c:I

    iget v0, p1, Lpl/j$d;->d:I

    iput v0, p0, Lpl/j$d;->d:I

    iget p1, p1, Lpl/j$d;->e:I

    iput p1, p0, Lpl/j$d;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0, p1}, Lpl/j$d;->b(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lpl/j$d;->b:I

    iget v1, p0, Lpl/j$d;->c:I

    iget v2, p0, Lpl/j$d;->d:I

    iget v3, p0, Lpl/j$d;->e:I

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->G0(Landroid/view/View;IIII)V

    return-void
.end method
