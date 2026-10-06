.class public Lcom/miui/gamebooster/beauty/BeautyDescPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/gamebooster/beauty/BeautySettingsActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/beauty/BeautySettingsActivity;

    invoke-virtual {v0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b063c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f070aed

    goto :goto_0

    :cond_0
    const v2, 0x7f07097b

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0709c6

    goto :goto_0

    :cond_2
    const v2, 0x7f070952

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07093a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0659

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_6

    invoke-static {}, Lw5/f;->a0()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "privacy_camera"

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/beauty/BeautyDescPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "privacy_camera/privacycamera_dark.json"

    goto :goto_1

    :cond_5
    const-string v0, "privacy_camera/privacycamera_light.json"

    :goto_1
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
