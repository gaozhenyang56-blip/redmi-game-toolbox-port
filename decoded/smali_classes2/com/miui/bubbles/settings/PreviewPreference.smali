.class public Lcom/miui/bubbles/settings/PreviewPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getAnimName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lx4/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/bubbles/settings/PreviewPreference;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "popNoticeDark.json"

    goto :goto_0

    :cond_0
    const-string p0, "popNoticeLight.json"

    :goto_0
    return-object p0

    :cond_1
    invoke-static {}, Lx4/g;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/miui/bubbles/settings/PreviewPreference;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "popNoticeDarkFold.json"

    goto :goto_1

    :cond_2
    const-string p0, "popNoticeLightFold.json"

    :goto_1
    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/miui/bubbles/settings/PreviewPreference;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "externalDark.json"

    goto :goto_2

    :cond_4
    const-string p0, "externalLight.json"

    :goto_2
    return-object p0
.end method

.method private static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v0, Lcom/miui/bubbles/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/settings/PreviewPreference;->getAnimName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
