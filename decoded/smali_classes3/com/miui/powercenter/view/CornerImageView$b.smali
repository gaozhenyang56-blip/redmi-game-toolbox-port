.class Lcom/miui/powercenter/view/CornerImageView$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/view/CornerImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/view/CornerImageView;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/view/CornerImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/CornerImageView$b;->a:Lcom/miui/powercenter/view/CornerImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/view/CornerImageView;Lcom/miui/powercenter/view/CornerImageView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/CornerImageView$b;-><init>(Lcom/miui/powercenter/view/CornerImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lcom/miui/powercenter/view/CornerImageView$b;->a:Lcom/miui/powercenter/view/CornerImageView;

    invoke-static {p1}, Lcom/miui/powercenter/view/CornerImageView;->a(Lcom/miui/powercenter/view/CornerImageView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
