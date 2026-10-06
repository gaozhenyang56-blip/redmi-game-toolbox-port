.class Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->m0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/db/vo/ProvinceVo;

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/CityVo;->isChecked()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {p4, p2}, Lcom/miui/antispam/db/vo/CityVo;->setChecked(Z)V

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    iget-object p4, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p4, p2}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;I)V

    invoke-virtual {p1, p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->addCheckedCityNumbers(I)V

    invoke-virtual {p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCheckedCityNumbers()I

    move-result p2

    if-lez p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$b;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    return p3
.end method
