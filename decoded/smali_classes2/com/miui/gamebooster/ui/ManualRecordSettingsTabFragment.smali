.class public Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ll8/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;,
        Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$Tab;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b:I

    return-void
.end method

.method private b0(I)V
    .locals 6

    iget v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->c:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->d:Landroid/view/View;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->c:Landroid/view/View;

    goto :goto_1

    :cond_3
    if-ne v4, p1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->d:Landroid/view/View;

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    iput p1, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b:I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->a:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;->e(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public c0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->a:Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment$a;

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 6

    const v0, 0x7f0b0b40

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->c:Landroid/view/View;

    const v0, 0x7f0b0b43

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->d:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->c:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "gamePkg"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b0(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b0(I)V

    :goto_1
    return-void
.end method

.method public k(Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->d:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez p1, :cond_0

    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0b40

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0b43

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/ManualRecordSettingsTabFragment;->b0(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01de

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
