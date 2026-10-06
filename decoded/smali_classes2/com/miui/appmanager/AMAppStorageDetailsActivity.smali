.class public Lcom/miui/appmanager/AMAppStorageDetailsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "uid"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v3, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    invoke-direct {v3}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;-><init>()V

    iput-object v3, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    iput-object p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->J0(Landroid/view/MenuItem;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->a:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->K0(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
