.class public Lcom/miui/appmanager/ApplicationsDetailsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-direct {p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->P2(Landroid/view/MenuItem;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R2(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
