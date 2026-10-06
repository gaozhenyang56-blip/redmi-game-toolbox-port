.class public Lcom/miui/powercenter/mainui/MainBatteryView$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/mainui/MainBatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/animation/ValueAnimator;

.field final synthetic f:Lcom/miui/powercenter/mainui/MainBatteryView;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->c:F

    return p0
.end method

.method static synthetic b(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a:F

    return p0
.end method

.method static synthetic c(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->b:F

    return p0
.end method


# virtual methods
.method public d()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->e:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public e()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->c:F

    return v0
.end method

.method public g(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->e:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public h(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->c:F

    return-void
.end method

.method public j(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a:F

    return-void
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView$o;->b:F

    return-void
.end method
