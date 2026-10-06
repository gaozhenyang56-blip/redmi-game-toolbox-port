.class Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked()Z

    move-result p3

    xor-int/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/miui/antispam/db/vo/ProvinceVo;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {p1, p3}, Lcom/miui/antispam/db/vo/CityVo;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    if-eqz p3, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$c;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    return p4

    :cond_1
    return p2
.end method
