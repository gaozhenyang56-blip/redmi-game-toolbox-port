.class Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->j0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/view/ViewPagerIndicator;

.field final synthetic b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;Lcom/miui/privacyapps/view/ViewPagerIndicator;[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->d:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->a:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    iput-object p4, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->c:Landroid/widget/Button;

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
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->d:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-static {v0, p1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->f0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;I)I

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->a:Lcom/miui/privacyapps/view/ViewPagerIndicator;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->d:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->e0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setSelected(I)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->d:Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->e0(Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->b:[Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$e;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->c:Landroid/widget/Button;

    const v0, 0x7f120f48

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity$d;->c:Landroid/widget/Button;

    const v0, 0x7f120478

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
