.class public Lcom/miui/powercenter/view/FitLanguageTextSwitcher;
.super Landroid/widget/TextSwitcher;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/view/FitLanguageTextSwitcher;->a:Ljava/util/HashSet;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/miui/powercenter/view/FitLanguageTextSwitcher;->b:F

    const-string p2, "bo"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/view/FitLanguageTextSwitcher;->a:Ljava/util/HashSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Lcom/miui/powercenter/view/FitLanguageTextSwitcher;->b:F

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextSwitcher;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/powercenter/view/FitLanguageTextSwitcher;->b:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
