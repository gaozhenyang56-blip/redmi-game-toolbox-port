.class Lcom/miui/dock/settings/DockDescPreference$b;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/settings/DockDescPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/settings/DockDescPreference$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-static {}, Lcom/miui/dock/settings/DockDescPreference;->d()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    iget-object p2, p0, Lcom/miui/dock/settings/DockDescPreference$b;->a:Landroid/content/Context;

    const v0, 0x7f0e022e

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0544

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, La8/a0;->E()Z

    move-result v2

    const-string v3, "dock_settings_phone_sidebar_dark.json"

    const-string v4, "dock_settings_phone_sidebar.json"

    const-string v5, "normal-dark-miui15.json"

    const-string v6, "normal-light-miui15.json"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_8

    invoke-static {v1}, La8/z;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, La8/z;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, La8/z;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dock_settings_fold_dark.json"

    goto :goto_0

    :cond_0
    const-string v1, "dock_settings_fold.json"

    goto :goto_0

    :cond_1
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_2

    const v1, 0x7f080950

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lc5/a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "dock_settings_phone_unsidebar_dark.json"

    goto :goto_0

    :cond_3
    const-string v1, "dock_settings_phone_unsidebar.json"

    goto :goto_0

    :cond_4
    invoke-static {}, Lk6/d;->c()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lk6/d;->e()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lx5/p;->H0()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v7, v8

    :cond_6
    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v7, :cond_7

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_f

    goto :goto_2

    :cond_8
    invoke-static {}, La8/z;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, La8/z;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "dock_settings_fold_undrag_dark.json"

    goto :goto_0

    :cond_9
    const-string v1, "dock_settings_fold_undrag.json"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lk6/d;->c()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lk6/d;->e()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lx5/p;->H0()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move v7, v8

    :cond_c
    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v7, :cond_e

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_d
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    move-object v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
