.class public Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;,
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;,
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;,
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;,
        Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-direct {p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v1, 0x1020002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method
