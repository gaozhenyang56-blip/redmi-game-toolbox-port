.class public Lnl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/a$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/BlurMaskFilter$Blur;

.field d:F

.field e:F

.field f:F

.field g:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p0, p1, v0}, Lnl/a;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method constructor <init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 8

    const-string v0, "#0D000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#0DFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lnl/a;-><init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V

    return-void
.end method

.method constructor <init>(IIFFFLandroid/graphics/BlurMaskFilter$Blur;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnl/a;->g:F

    iput p1, p0, Lnl/a;->a:I

    iput p2, p0, Lnl/a;->b:I

    iput p3, p0, Lnl/a;->e:F

    iput p4, p0, Lnl/a;->f:F

    iput p5, p0, Lnl/a;->d:F

    iput-object p6, p0, Lnl/a;->c:Landroid/graphics/BlurMaskFilter$Blur;

    return-void
.end method
