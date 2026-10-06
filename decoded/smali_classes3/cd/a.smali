.class public Lcd/a;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd/a$a;,
        Lcd/a$b;
    }
.end annotation


# static fields
.field public static final b:Lrh/c;


# instance fields
.field private a:Lcd/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    sput-object v0, Lcd/a;->b:Lrh/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcd/a;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e041a

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public static releaseImageViewResouce(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcd/a$b;

    invoke-direct {v0, p1}, Lcd/a$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcd/a;->a:Lcd/a$b;

    return-object v0
.end method

.method public startAutoScroll()V
    .locals 2

    iget-object v0, p0, Lcd/a;->a:Lcd/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->l(I)V

    :cond_0
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    iget-object v0, p0, Lcd/a;->a:Lcd/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcd/a$b;->b:Lcom/miui/common/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    :cond_0
    return-void
.end method
