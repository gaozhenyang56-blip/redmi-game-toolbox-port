.class public final Lcom/miui/networkassistant/utils/DisplayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/miui/networkassistant/utils/DisplayUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/DisplayUtil;

    invoke-direct {v0}, Lcom/miui/networkassistant/utils/DisplayUtil;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/DisplayUtil;->INSTANCE:Lcom/miui/networkassistant/utils/DisplayUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dip2px(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/DisplayUtil;->getDensity()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getDensity()F
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "getInstance().resources.displayMetrics"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public final getScaledDensity()F
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "getInstance().resources.displayMetrics"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method public final getScreenWidth()I
    .locals 2

    sget v0, Lcom/miui/networkassistant/utils/DisplayUtil;->screenWidth:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/miui/networkassistant/utils/DisplayUtil;->screenWidth:I

    :cond_0
    sget v0, Lcom/miui/networkassistant/utils/DisplayUtil;->screenWidth:I

    return v0
.end method

.method public final px2dip(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/DisplayUtil;->getDensity()F

    move-result v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final px2sp(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/DisplayUtil;->getScaledDensity()F

    move-result v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final setScreenWidth(I)V
    .locals 0

    sput p1, Lcom/miui/networkassistant/utils/DisplayUtil;->screenWidth:I

    return-void
.end method

.method public final sp2px(F)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/DisplayUtil;->getScaledDensity()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
