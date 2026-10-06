.class public Lcom/miui/applicationlock/a$e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/a$e;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/a$e;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0ce1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/applicationlock/a$e;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/a$e;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/a$e;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/applicationlock/a$e;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/a$e;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/applicationlock/a$e;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/a$e;->b:Landroid/widget/TextView;

    return-object p0
.end method
