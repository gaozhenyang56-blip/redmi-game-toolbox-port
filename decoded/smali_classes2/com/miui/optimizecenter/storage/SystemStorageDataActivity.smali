.class public Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 4

    const v0, 0x7f0b0725

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0a92

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0774

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->c:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f0b0b3b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12188a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->initData()V

    return-void
.end method

.method private initData()V
    .locals 11

    sget-object v0, Lra/j0;->b:Lra/j0;

    invoke-virtual {v0}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-static {}, Ldb/g;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0}, Ldb/g;->a(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ldb/g;->b(I)J

    move-result-wide v7

    const v9, 0x7f0b0772

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, -0x1

    if-ne v6, v10, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    sub-long/2addr v0, v7

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->c:Landroid/widget/TextView;

    invoke-static {p0, v7, v8}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->a:Landroid/widget/TextView;

    invoke-static {p0, v2, v3}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->b:Landroid/widget/TextView;

    invoke-static {p0, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    move-wide v6, v7

    invoke-static/range {v2 .. v7}, Ldb/f;->c(JJJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->initData()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0772

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SubSettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":android:show_fragment"

    const-string v1, "com.android.settings.special.ExternalRamFragment"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f121887

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x66

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e04e3

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/SystemStorageDataActivity;->d0()V

    return-void
.end method
