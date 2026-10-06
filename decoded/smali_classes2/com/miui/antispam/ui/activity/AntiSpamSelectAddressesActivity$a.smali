.class Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/h$d;


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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/antispam/db/vo/ProvinceVo;)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/antispam/db/vo/ProvinceVo;->setChecked(Z)V

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCityList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/db/vo/CityVo;

    invoke-virtual {v2}, Lcom/miui/antispam/db/vo/CityVo;->isChecked()Z

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/miui/antispam/db/vo/CityVo;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/miui/antispam/db/vo/ProvinceVo;->getCheckedCityNumbers()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/miui/antispam/db/vo/ProvinceVo;->addCheckedCityNumbers(I)V

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p2, p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->k0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$a;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->l0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    return-void
.end method
