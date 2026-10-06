.class Lcom/miui/dock/settings/DockDescPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/settings/DockDescPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/settings/DockDescPreference;


# direct methods
.method constructor <init>(Lcom/miui/dock/settings/DockDescPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/settings/DockDescPreference$a;->a:Lcom/miui/dock/settings/DockDescPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/settings/DockDescPreference$a;->a:Lcom/miui/dock/settings/DockDescPreference;

    invoke-static {v0}, Lcom/miui/dock/settings/DockDescPreference;->e(Lcom/miui/dock/settings/DockDescPreference;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/miui/dock/settings/DockDescPreference;->d()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/dock/settings/DockDescPreference$a;->a:Lcom/miui/dock/settings/DockDescPreference;

    invoke-static {v0}, Lcom/miui/dock/settings/DockDescPreference;->f(Lcom/miui/dock/settings/DockDescPreference;)Lcom/miui/privacyapps/view/ViewPagerIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    return-void
.end method
