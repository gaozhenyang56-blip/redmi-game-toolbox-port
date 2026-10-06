.class Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;,
        Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;
    }
.end annotation


# instance fields
.field private final A:Landroid/graphics/Paint;

.field private final B:Landroid/graphics/Paint;

.field private final C:Landroid/graphics/Paint;

.field private final D:Landroid/graphics/Paint;

.field private final E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:[F

.field private J:Z

.field private K:Z

.field private L:Z

.field M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation
.end field

.field N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final a:Landroid/text/TextPaint;

.field final b:Landroid/graphics/Path;

.field c:I

.field d:I

.field e:I

.field f:I

.field private f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field private g0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field private h0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field private i0:F

.field j:I

.field private j0:Landroid/animation/ValueAnimator;

.field k:I

.field private k0:Z

.field l:I

.field private l0:Z

.field m:F

.field private m0:I

.field n:F

.field private n0:I

.field o:F

.field private o0:I

.field private p:J

.field private p0:I

.field q:I

.field private q0:I

.field r:J

.field private r0:I

.field s:J

.field private s0:Z

.field t:J

.field final synthetic t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

.field u:J

.field private final v:I

.field private final w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/Paint;

.field private final z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->b:Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    iput-boolean p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->P:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->Q:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->S:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->V:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->W:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g0:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k0:Z

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n0:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lme/c0;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060bb5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060bb1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060ba7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->G:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0717d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->w:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060bae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lx4/a0;->D()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    const-string v2, "#10979797"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717d1

    goto :goto_0

    :cond_0
    const-string v2, "#1A979797"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717d0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060ba2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071c77

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->v:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->D:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->E:I

    return-void
.end method

.method private B()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->w()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p(F)I

    move-result v0

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    aget v1, v2, v1

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-gt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x2713

    iput v3, v2, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput v1, v2, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lme/l;->e(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i0:F

    return p1
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    return-object p0
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B()V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    return p1
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    return p1
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->w()V

    return-void
.end method

.method private g()V
    .locals 14

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->V:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->W:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v12, v1

    move v1, v0

    move v0, v12

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chargeFirst: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " firstY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatteryLevelChart"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    if-eqz v2, :cond_1

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->V:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->W:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    :goto_4
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_3
    if-nez v2, :cond_7

    if-nez v6, :cond_7

    if-eqz v7, :cond_5

    if-nez v3, :cond_4

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v10

    goto :goto_4

    :cond_7
    :goto_5
    if-eq v6, v2, :cond_b

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v6, :cond_9

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    if-eqz v7, :cond_8

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    goto :goto_6

    :cond_8
    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    :goto_6
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_9
    iget v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v10, v10

    invoke-virtual {v2, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    if-nez v3, :cond_a

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    goto :goto_7

    :cond_a
    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v2

    :goto_7
    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    move v2, v6

    :cond_b
    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v1

    :goto_9
    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a

    :cond_d
    if-nez v3, :cond_e

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_9

    :cond_e
    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_9

    :cond_f
    :goto_a
    return-void
.end method

.method private h()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v1

    move-object v8, v7

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v9, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_c

    iget-object v9, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->P:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    sub-float v12, v10, v11

    const v13, 0x38d1b717    # 1.0E-4f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    iget-object v12, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v11, v6, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_1

    invoke-direct {p0, v5, v9}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q(FF)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-direct {p0, v6, v10}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q(FF)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->Q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->V:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->W:Ljava/util/List;

    iget-object v12, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_2
    if-nez v8, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_3
    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v3, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v3, p0, v4, v11, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move v3, v9

    move v4, v10

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v4, :cond_5

    if-nez v11, :cond_6

    new-instance v11, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v11}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g0:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v11, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_6

    new-instance v11, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v11}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v11, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    :goto_1
    invoke-static {v0, v11}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v3, v7, :cond_a

    if-nez v3, :cond_8

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    if-eqz v4, :cond_7

    invoke-direct {v7, p0, v8, v11, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v7, p0, v5, v6, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    goto :goto_2

    :cond_7
    invoke-direct {v7, p0, v8, v11, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v7, p0, v5, v6, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v7, p0, v8, v11, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g0:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v7, p0, v5, v6, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    goto :goto_2

    :cond_9
    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v7, p0, v8, v11, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    new-instance v7, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v7, p0, v5, v6, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    :goto_2
    invoke-static {v0, v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v3, v9

    move v5, v3

    move v4, v10

    move v6, v4

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v7, :cond_f

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;Ljava/lang/Float;Ljava/lang/Float;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;)V

    invoke-static {v0, v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g0:Ljava/util/ArrayList;

    goto :goto_4

    :cond_f
    :goto_5
    return-void
.end method

.method private i()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_0
    move v4, v0

    move v2, v1

    :goto_2
    if-gt v2, v3, :cond_1

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->S:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    :goto_3
    if-gt v1, v3, :cond_2

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private j()Ljava/lang/Long;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private l(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v2, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v7, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v9, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i0:F

    mul-float/2addr v7, v9

    int-to-float v9, v8

    add-float/2addr v7, v9

    int-to-float v8, v8

    iput v8, v5, Landroid/graphics/RectF;->left:F

    iput v7, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v8

    iget-object v9, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->w:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v9, 0x0

    aget v10, v8, v9

    aget v8, v8, v3

    cmpl-float v11, v8, v7

    if-lez v11, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    iput v6, v5, Landroid/graphics/RectF;->top:F

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    iput v10, v5, Landroid/graphics/RectF;->left:F

    iput v7, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->x:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->y:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lx4/a0;->D()Z

    move-result v4

    const/16 v5, 0x1c

    if-nez v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_2

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    int-to-float v8, v8

    iget v11, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    int-to-float v11, v11

    const-string v12, "#0A10AEFF"

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    int-to-float v8, v8

    iget v11, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    int-to-float v11, v11

    const-string v12, "#2610AEFF"

    :goto_2
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v8, v6, v11, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->G:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lx4/a0;->D()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_4

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    int-to-float v5, v5

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    int-to-float v8, v8

    const-string v11, "#0A39DA5F"

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i:I

    int-to-float v5, v5

    iget v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j:I

    int-to-float v8, v8

    const-string v11, "#2639DA5F"

    :goto_3
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v5, v6, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_5
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->H:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v11, v8, v3

    aget v8, v8, v9

    sub-float/2addr v11, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v8

    move v8, v3

    move v14, v6

    move v13, v9

    :goto_4
    iget-object v15, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_f

    iget-object v15, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v12, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    add-int/lit8 v4, v8, -0x1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->U:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-nez v13, :cond_7

    cmpl-float v4, v15, v10

    if-nez v4, :cond_6

    aput v6, v5, v9

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_6
    if-lez v4, :cond_7

    sub-float v4, v6, v3

    sub-float v17, v10, v12

    mul-float v4, v4, v17

    sub-float v17, v15, v12

    div-float v4, v4, v17

    add-float/2addr v4, v3

    aput v4, v5, v9

    goto :goto_5

    :cond_7
    :goto_6
    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    iget-boolean v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    if-nez v4, :cond_a

    cmpl-float v4, v15, v11

    if-nez v4, :cond_8

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move v14, v6

    goto :goto_9

    :cond_8
    if-lez v4, :cond_9

    sub-float v4, v6, v3

    sub-float v14, v11, v12

    mul-float/2addr v4, v14

    sub-float v14, v15, v12

    div-float/2addr v4, v14

    add-float v14, v4, v3

    goto :goto_8

    :cond_9
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v8, v4, :cond_b

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v13, v13, 0x1

    :cond_b
    :goto_9
    const/4 v4, 0x2

    if-ne v13, v4, :cond_e

    cmpl-float v4, v15, v7

    const/16 v16, 0x1

    if-nez v4, :cond_c

    aput v6, v5, v16

    goto :goto_a

    :cond_c
    if-lez v4, :cond_d

    sub-float/2addr v6, v3

    sub-float v4, v7, v12

    mul-float/2addr v6, v4

    sub-float/2addr v15, v12

    div-float/2addr v6, v15

    add-float/2addr v6, v3

    aput v6, v5, v16

    goto :goto_a

    :cond_d
    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_e

    aput v6, v5, v16

    :cond_e
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_4

    :cond_f
    :goto_a
    iget-boolean v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v10, v8

    if-ltz v8, :cond_10

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v10, v6

    if-gtz v6, :cond_10

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->G:I

    :cond_11
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v10, v8

    if-ltz v8, :cond_12

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v10, v6

    if-gtz v6, :cond_12

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->H:I

    :cond_13
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    aget v3, v5, v9

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l:I

    int-to-float v4, v4

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->C:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v3, v5, v9

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l:I

    int-to-float v4, v4

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_14
    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_15

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_15

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->G:I

    :cond_16
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_17

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$j;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;->a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$i;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_17

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->H:I

    :cond_18
    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    aget v4, v5, v3

    iget v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l:I

    int-to-float v6, v6

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->C:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v4, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v4, v5, v3

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->l(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float v1, v11, v1

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->l(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v11, v4

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->m(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v14, v3

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->n(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v14, v3

    const/4 v3, 0x0

    cmpg-float v4, v14, v3

    if-gtz v4, :cond_19

    move v6, v3

    goto :goto_b

    :cond_19
    move v6, v14

    :goto_b
    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1a

    int-to-float v1, v3

    goto :goto_c

    :cond_1a
    cmpl-float v3, v11, v2

    if-lez v3, :cond_1b

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->l(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    :cond_1b
    :goto_c
    iget-boolean v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->L:Z

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1d
    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setY(F)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v1, v1, v9

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p(F)I

    move-result v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    aget v2, v2, v9

    sub-float/2addr v4, v2

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide v3, v1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    int-to-long v1, v2

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v5, v4

    const/4 v1, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "%1$02d:%2$02d-%3$02d:%4$02d"

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/powercenter/view/ShadowTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    return-void
.end method

.method private o(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    or-int/2addr p2, v0

    and-int/2addr p1, p2

    return p1
.end method

.method private p(F)I
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v2, v1

    sub-float/2addr p1, v2

    int-to-float v2, v0

    mul-float/2addr p1, v2

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private q(FF)Z
    .locals 0

    float-to-int p2, p2

    float-to-int p1, p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->v:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2713

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lme/l;->d()Lme/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/l;->e(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public A(FFZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v2, p3

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v4, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float v3, p1, p2

    add-float v5, p1, p2

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x320

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lvm/p;

    invoke-direct {p2}, Lvm/p;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$e;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$f;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$f;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method k(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    int-to-float v9, v2

    int-to-float v4, v1

    invoke-virtual {v8, v9, v4}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v10, v3

    invoke-virtual {v8, v10, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v5

    invoke-virtual {v8, v9, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v5

    invoke-virtual {v8, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    sub-int/2addr v5, v1

    const/4 v6, 0x4

    div-int/2addr v5, v6

    iget-object v11, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x5

    const/4 v14, 0x2

    if-ge v12, v13, :cond_2

    mul-int v13, v5, v12

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    mul-int/lit8 v16, v12, 0x19

    rsub-int/lit8 v11, v16, 0x64

    invoke-static {v15, v11}, Lme/e0;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v15}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x7f0717e1

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->c:I

    div-int/2addr v15, v14

    add-int/2addr v15, v13

    int-to-float v14, v15

    iget-object v15, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {v7, v11, v6, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x4

    if-eqz v12, :cond_1

    if-ne v12, v6, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v11, v13

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v1, "#33000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-wide v12, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p:J

    invoke-virtual {v5, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x7f120fea

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v17, 0x3fc00000    # 1.5f

    mul-float v17, v17, v2

    move-object/from16 v18, v14

    iget-wide v13, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t:J

    cmp-long v2, v15, v13

    const-string v15, "%d"

    const/16 v16, 0x3

    const/high16 v19, 0x40400000    # 3.0f

    const/16 v6, 0x18

    if-lez v2, :cond_7

    invoke-virtual {v5, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v1, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v9

    float-to-int v1, v2

    int-to-float v12, v1

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    move v2, v12

    move v3, v4

    move v4, v12

    move v13, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    :cond_3
    :goto_2
    cmpl-float v3, v2, v9

    if-ltz v3, :cond_5

    sub-float v3, v10, v17

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v15, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {v7, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    mul-float v3, v3, v19

    sub-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x3

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, 0x18

    goto :goto_2

    :cond_5
    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    mul-float v1, v1, v19

    add-float/2addr v12, v1

    move/from16 v1, v16

    :cond_6
    :goto_3
    sub-float v2, v10, v17

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v15, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    mul-float v2, v2, v19

    add-float/2addr v12, v2

    add-int/lit8 v1, v1, 0x3

    if-lt v1, v13, :cond_6

    add-int/lit8 v1, v1, -0x18

    goto :goto_3

    :cond_7
    move v13, v6

    if-lez v1, :cond_9

    sub-int/2addr v12, v1

    if-gez v12, :cond_8

    add-int/lit8 v12, v12, 0x18

    :cond_8
    :goto_4
    sub-float v1, v10, v17

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v9, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    mul-float v1, v1, v19

    add-float/2addr v9, v1

    add-int/lit8 v12, v12, 0x3

    if-lt v12, v13, :cond_8

    add-int/lit8 v12, v12, -0x18

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    move-object/from16 v3, v18

    invoke-virtual {v7, v3, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060c0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public m(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_2

    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    instance-of v0, p1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, p2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method n(FFFLandroid/graphics/Path;Z)V
    .locals 1

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    cmpg-float p3, p3, p1

    if-gez p3, :cond_0

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->P:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->Q:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->a:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->c:I

    if-gtz p2, :cond_0

    const/4 p3, 0x1

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->c:I

    :cond_0
    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->v:I

    add-int/lit8 p3, p3, 0x0

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f0717cf

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p4, p3

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f0717e1

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p4, p3

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f0717e2

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p4, p3

    iput p4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0717d6

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    invoke-static {}, Lme/e0;->g()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0717d7

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    :cond_1
    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    sub-int/2addr p1, p3

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0717d4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0717ce

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p3, p1

    add-int/2addr p3, p2

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h:I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->x:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v4, p3

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->F:I

    const p4, 0x3eb851ec    # 0.36f

    invoke-direct {p0, p3, p4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o(IF)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f060bb3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->y:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v4, p3

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->G:I

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p3, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o(IF)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->z:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v4, p3

    iget p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->H:I

    invoke-direct {p0, p3, p4}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o(IF)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v4, 0x2

    if-eqz v0, :cond_15

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_2

    goto/16 :goto_7

    :cond_2
    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p0:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o0:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s0:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, p0, v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m(Landroid/view/View;Z)V

    return v1

    :cond_3
    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o0:I

    sub-int p1, v3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->E:I

    if-le p1, v0, :cond_4

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s0:Z

    :cond_4
    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    if-lez p1, :cond_c

    if-ne p1, v4, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, v0, v2

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    sub-int v0, v3, v0

    if-gtz v0, :cond_1a

    :cond_5
    if-ne p1, v2, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, v0, v1

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    sub-int v0, v3, v0

    if-gez v0, :cond_6

    goto/16 :goto_7

    :cond_6
    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, p1, v1

    int-to-float v4, v3

    add-float/2addr v0, v4

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    aput v0, p1, v1

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    int-to-float v0, v4

    aput v0, p1, v1

    goto :goto_1

    :cond_7
    aget v4, p1, v2

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    sub-float v6, v4, v5

    cmpl-float v0, v0, v6

    if-lez v0, :cond_a

    sub-float/2addr v4, v5

    aput v4, p1, v1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, p1, v2

    int-to-float v4, v3

    add-float/2addr v0, v4

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    aput v0, p1, v2

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_9

    int-to-float v0, v4

    aput v0, p1, v2

    goto :goto_1

    :cond_9
    aget v4, p1, v1

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    add-float v6, v4, v5

    cmpg-float v0, v0, v6

    if-gez v0, :cond_a

    add-float/2addr v4, v5

    aput v4, p1, v2

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, p1, v2

    aget p1, p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    cmpg-float v2, v0, p1

    if-gez v2, :cond_b

    :goto_2
    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    goto :goto_3

    :cond_b
    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int v4, p1, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d

    sub-int/2addr p1, v2

    int-to-float p1, p1

    goto :goto_2

    :cond_c
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v0, p1, v1

    int-to-float v4, v3

    add-float/2addr v0, v4

    iget v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    int-to-float v6, v5

    sub-float/2addr v0, v6

    aget p1, p1, v2

    add-float/2addr p1, v4

    int-to-float v2, v5

    sub-float/2addr p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u(FF)V

    :cond_d
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    iput v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    goto/16 :goto_7

    :cond_f
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k0:Z

    if-eqz p1, :cond_10

    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k0:Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget p1, p1, v1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->z(FF)V

    goto :goto_4

    :cond_10
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->L:Z

    if-eqz v0, :cond_11

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->A(FFZ)V

    goto :goto_4

    :cond_11
    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s0:Z

    if-nez v0, :cond_12

    if-nez p1, :cond_12

    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->y()V

    :cond_12
    :goto_4
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    if-nez p1, :cond_13

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    if-lez p1, :cond_14

    :cond_13
    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->B()V

    :cond_14
    invoke-virtual {p0, p0, v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_15
    invoke-virtual {p0, p0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_16

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    :cond_16
    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s0:Z

    iput v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q0:I

    iput v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o0:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r0:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p0:I

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n0:I

    sub-int/2addr p1, v0

    if-gt p1, v3, :cond_1a

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    add-int/2addr p1, v0

    if-gt v3, p1, :cond_1a

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->J:Z

    if-nez p1, :cond_17

    int-to-float v5, v3

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v6, v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_17

    int-to-float v5, v3

    int-to-float v7, v0

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_17

    iput v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    goto :goto_6

    :cond_17
    if-nez p1, :cond_18

    int-to-float v5, v3

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v6, v6, v2

    int-to-float v0, v0

    add-float/2addr v0, v6

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_18

    int-to-float v0, v3

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_18

    iput v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m0:I

    goto :goto_6

    :cond_18
    if-nez p1, :cond_19

    int-to-float v0, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    aget v1, v4, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    int-to-float v0, v3

    aget v1, v4, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->l0:Z

    goto :goto_6

    :cond_19
    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->k0:Z

    :goto_6
    return v2

    :cond_1a
    :goto_7
    return v1
.end method

.method public r(II)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(IIJJZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    return v0

    :cond_0
    const/4 p7, -0x1

    if-eq p1, p7, :cond_3

    const-wide/16 v1, -0x1

    cmp-long p7, p3, v1

    if-nez p7, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    sub-long/2addr p5, p3

    if-ltz p2, :cond_2

    return v0

    :cond_2
    rsub-int/lit8 p1, p2, 0x0

    int-to-long p1, p1

    div-long/2addr p5, p1

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->o()J

    move-result-wide p1

    cmp-long p1, p5, p1

    if-gez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method t()V
    .locals 28

    move-object/from16 v8, p0

    iget v9, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-wide v10, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r:J

    iget-wide v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s:J

    sub-long v12, v1, v10

    iget v1, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLevelLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " levelh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "BatteryLevelChart"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    move v6, v0

    move-wide/from16 v18, v1

    move/from16 v20, v3

    move-object/from16 v4, v16

    move/from16 v2, v17

    move v3, v2

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/miui/powercenter/batteryhistory/u;

    iget-byte v0, v7, Lcom/miui/powercenter/batteryhistory/u;->d:B

    iget-byte v1, v7, Lcom/miui/powercenter/batteryhistory/u;->f:B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v15

    const-string v15, "raw data: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->c()Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-byte v5, v7, Lcom/miui/powercenter/batteryhistory/u;->c:B

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v22

    sub-long v22, v22, v10

    iget v6, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int v15, v9, v6

    move-wide/from16 v24, v10

    int-to-long v10, v15

    mul-long v10, v10, v22

    long-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    long-to-float v11, v12

    div-float/2addr v10, v11

    int-to-float v6, v6

    add-float/2addr v10, v6

    iget v6, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->e:I

    int-to-float v11, v6

    add-int/lit8 v15, v5, 0x0

    move-wide/from16 v22, v12

    iget v12, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->d:I

    sub-int/2addr v6, v12

    mul-int/2addr v15, v6

    int-to-float v6, v15

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v6, v12

    sub-float/2addr v11, v6

    cmpl-float v6, v3, v10

    if-eqz v6, :cond_2

    cmpl-float v6, v2, v11

    if-eqz v6, :cond_2

    iget-object v2, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->b:Landroid/graphics/Path;

    if-eq v2, v4, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v12, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v12, v4

    :goto_1
    invoke-virtual {v8, v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r(II)Z

    move-result v13

    iget-object v15, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    invoke-virtual {v7}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v5

    move-wide/from16 v3, v18

    move/from16 v18, v5

    move-wide/from16 v5, v26

    move-object/from16 v26, v7

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s(IIJJZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->S:Ljava/util/List;

    sub-int v5, v18, v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v26 .. v26}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v0

    iget-object v2, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->O:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->P:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->Q:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v10

    move v2, v11

    move-object v4, v12

    move/from16 v20, v18

    move-wide/from16 v18, v0

    :cond_2
    move v6, v10

    goto :goto_2

    :cond_3
    move-object/from16 v26, v7

    move-wide/from16 v24, v10

    move-wide/from16 v22, v12

    invoke-virtual/range {v26 .. v26}, Lcom/miui/powercenter/batteryhistory/u;->d()Z

    move-result v5

    if-nez v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-virtual {v8, v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r(II)Z

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n(FFFLandroid/graphics/Path;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is over flow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Lcom/miui/powercenter/batteryhistory/u;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v16

    move/from16 v2, v17

    move v3, v2

    :cond_4
    :goto_2
    move-object/from16 v15, v21

    move-wide/from16 v12, v22

    move-wide/from16 v10, v24

    goto/16 :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->i()V

    int-to-float v1, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n(FFFLandroid/graphics/Path;Z)V

    iget-object v0, v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->R:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lhd/a;->u()V

    :cond_6
    return-void
.end method

.method public u(FF)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v0, v0

    :goto_0
    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    int-to-float v3, v2

    add-float/2addr p2, v3

    sub-float/2addr p2, p1

    int-to-float p1, v2

    :cond_1
    cmpl-float v2, p2, v0

    if-lez v2, :cond_2

    sub-float/2addr p1, p2

    add-float/2addr p1, v0

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v2, 0x0

    aput p1, p2, v2

    aput v0, p2, v1

    return-void
.end method

.method public v(Ljava/util/List;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PowerRankHelperHolder"

    const-string v1, "BatteryLevelChart setStats."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->p:J

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->M:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r:J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s:J

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHistStart  "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mHistEnd "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s:J

    iget-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->r:J

    cmp-long v3, v5, v7

    const-wide/16 v5, 0x1

    if-gtz v3, :cond_5

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->s:J

    :cond_5
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->q:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide v7, p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    iput-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t:J

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide p1, p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startUTCTime:J

    const-wide/32 v7, 0x36ee80

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u:J

    iget-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t:J

    cmp-long p1, p1, v7

    if-gtz p1, :cond_6

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u:J

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTimeStart "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mTimeEnd "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mHistogramItems.size() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_9

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    div-int/2addr p1, v1

    add-int/2addr p1, v4

    const/4 p2, 0x3

    if-le p1, p2, :cond_7

    move p1, p2

    :cond_7
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_8

    move p2, v4

    goto :goto_0

    :cond_8
    move p2, v2

    :goto_0
    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->L:Z

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->N:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->o:F

    goto :goto_1

    :cond_9
    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->L:Z

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->m:F

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->n:F

    :goto_1
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t()V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->h()V

    const/4 p1, 0x0

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->u(FF)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g()V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->x()V

    return v4

    :cond_a
    :goto_2
    return v2

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return v2
.end method

.method public x()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v1, Lvm/p;

    invoke-direct {v1}, Lvm/p;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$a;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$b;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public y()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->I:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    const/4 v2, 0x1

    aget v6, v0, v2

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->f:I

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->g:I

    int-to-float v7, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v2, Lvm/p;

    invoke-direct {v2}, Lvm/p;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$g;

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$g;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$h;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->t0:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->K:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public z(FF)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$c;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$d;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c$d;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
