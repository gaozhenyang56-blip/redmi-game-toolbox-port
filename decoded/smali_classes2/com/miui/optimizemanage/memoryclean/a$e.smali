.class public Lcom/miui/optimizemanage/memoryclean/a$e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/memoryclean/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Lcom/miui/gamebooster/view/QRSlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$e;->a:Landroid/view/View;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a$e;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a$e;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/view/QRSlidingButton;

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$e;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    return-void
.end method
