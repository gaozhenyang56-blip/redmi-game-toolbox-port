.class public Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:[Landroid/view/View;

.field private i:Luc/b;

.field private j:Z

.field private final k:Luc/b$a;

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->j:Z

    new-instance v0, Lsb/e;

    invoke-direct {v0, p0}, Lsb/e;-><init>(Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->k:Luc/b$a;

    new-instance v0, Lsb/f;

    invoke-direct {v0, p0}, Lsb/f;-><init>(Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->g0(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static d0()Lmiuix/appcompat/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;-><init>()V

    return-object v0
.end method

.method private e0(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0b0719

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f0b027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f0b01f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0962

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0b08

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0545

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b0292

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b028d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b028a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b0298

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b029a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b0546

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const v1, 0x7f0b0123

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    const v1, 0x7f0b0217

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "privacyData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->j:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->g0(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method private synthetic f0(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v2, "extra_permission_name"

    const-string v3, "group_id"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const/16 p1, 0x1000

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120b83

    goto/16 :goto_1

    :sswitch_1
    const/16 p1, 0x4000

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120b79

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide v0, 0x200000000000L

    goto :goto_0

    :sswitch_2
    const/16 p1, 0x800

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120b85

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x20000

    goto :goto_0

    :sswitch_3
    const/16 p1, 0x200

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120b84

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x20

    goto :goto_0

    :sswitch_4
    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120015

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x8

    :goto_0
    invoke-static {v0, v1}, Lnc/c;->a(J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :sswitch_5
    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120013

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x10

    goto :goto_0

    :sswitch_6
    const/16 p1, 0x2000

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120b76

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0123 -> :sswitch_6
        0x7f0b028a -> :sswitch_5
        0x7f0b028d -> :sswitch_4
        0x7f0b0292 -> :sswitch_3
        0x7f0b0298 -> :sswitch_2
        0x7f0b029a -> :sswitch_1
        0x7f0b0546 -> :sswitch_0
    .end sparse-switch
.end method

.method private g0(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    if-nez p1, :cond_0

    goto/16 :goto_15

    :cond_0
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    const-wide/16 v4, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_7

    :cond_8
    :goto_6
    move v4, v3

    :goto_7
    const-wide v5, 0x200000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_9

    :cond_a
    :goto_8
    move v5, v3

    :goto_9
    const-wide/16 v6, -0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_b

    :cond_c
    :goto_a
    move v6, v3

    :goto_b
    const-wide/16 v7, -0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_d

    :cond_e
    :goto_c
    move p1, v3

    :goto_d
    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    aget-object v7, v7, v3

    const/16 v8, 0x8

    if-lez v0, :cond_f

    move v9, v3

    goto :goto_e

    :cond_f
    move v9, v8

    :goto_e
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    if-lez v1, :cond_10

    move v9, v3

    goto :goto_f

    :cond_10
    move v9, v8

    :goto_f
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x2

    aget-object v7, v7, v9

    if-lez v2, :cond_11

    move v9, v3

    goto :goto_10

    :cond_11
    move v9, v8

    :goto_10
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x3

    aget-object v7, v7, v9

    if-lez v4, :cond_12

    move v9, v3

    goto :goto_11

    :cond_12
    move v9, v8

    :goto_11
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x4

    aget-object v7, v7, v9

    if-lez v5, :cond_13

    move v9, v3

    goto :goto_12

    :cond_13
    move v9, v8

    :goto_12
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x5

    aget-object v7, v7, v9

    if-lez v6, :cond_14

    move v9, v3

    goto :goto_13

    :cond_14
    move v9, v8

    :goto_13
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->h:[Landroid/view/View;

    const/4 v9, 0x6

    aget-object v7, v7, v9

    if-lez p1, :cond_15

    goto :goto_14

    :cond_15
    move v3, v8

    :goto_14
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->a:Landroid/widget/TextView;

    const v7, 0x7f100115

    invoke-static {v3, v7, v0}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->b:Landroid/widget/TextView;

    invoke-static {v0, v7, v1}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->c:Landroid/widget/TextView;

    invoke-static {v0, v7, v2}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->d:Landroid/widget/TextView;

    invoke-static {v0, v7, v4}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->e:Landroid/widget/TextView;

    invoke-static {v0, v7, v5}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->f:Landroid/widget/TextView;

    invoke-static {v0, v7, v6}, Lsb/b;->c(Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->g:Landroid/widget/TextView;

    invoke-static {v0, v7, p1}, Lsb/b;->c(Landroid/widget/TextView;II)V

    :cond_16
    :goto_15
    return-void
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Luc/b;

    invoke-direct {v0}, Luc/b;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->i:Luc/b;

    iget-object v1, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->k:Luc/b$a;

    invoke-virtual {v0, v1}, Luc/b;->d(Luc/b$a;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->i:Luc/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->i:Luc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luc/b;->c()V

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0e017e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->e0(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->initData()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/detection/SensitivePermissionsAppFragment;->j:Z

    return-void
.end method
