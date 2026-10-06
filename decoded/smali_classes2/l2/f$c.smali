.class public final Ll2/f$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b04d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll2/f$c;->a:Landroid/widget/TextView;

    const v0, 0x7f0b04d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ll2/f$c;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a86

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ll2/f$c;->c:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Ll2/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ll2/f$c;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Ll2/f$c;)V
    .locals 0

    invoke-direct {p0}, Ll2/f$c;->d()V

    return-void
.end method

.method static synthetic b(Ll2/f$c;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Ll2/f$c;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Ll2/f$c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ll2/f$c;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Ll2/f$c;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll2/f$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll2/f$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
