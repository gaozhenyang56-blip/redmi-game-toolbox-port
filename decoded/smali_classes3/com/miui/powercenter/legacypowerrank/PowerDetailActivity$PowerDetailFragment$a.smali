.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->q0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v1}, Lcom/miui/appmanager/AppManageUtils;->t0(Landroid/content/Context;ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->s0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/permcenter/settings/model/TitleOnlyPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p1, 0x1

    return p1
.end method
