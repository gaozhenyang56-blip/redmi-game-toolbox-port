.class Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;->a:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

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

    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;->a:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->d0(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e046e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity$a;->a:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->e0(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpe/b;

    const v2, 0x7f0b0917

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b0918

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lpe/b;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060b7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v1}, Lpe/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
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
