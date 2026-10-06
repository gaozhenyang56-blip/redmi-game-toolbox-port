.class public Ll8/i;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ll8/i;->a:Landroid/content/Context;

    const p1, 0x7f0602f3

    invoke-static {p0, p1}, Lx4/k;->h(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070e49

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lx4/k;->a(Landroid/view/View;F)V

    invoke-direct {p0}, Ll8/i;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Ll8/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ll8/i;->b:Z

    return v0
.end method

.method public setAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Ll8/i;->b:Z

    return-void
.end method
