.class public Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;
.super Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->j:Ljava/util/Map;

    invoke-static {}, Lpc/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lpc/c;->i()Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lpc/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lpc/c;->k()Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "permName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    sget-object v1, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    const-string v2, "miui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    iget v2, v2, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    iget v2, v2, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-static {}, Lpc/c;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071e4e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    iget v4, v4, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;->c:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-array v0, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    iget v1, v1, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;->b:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;

    iget v1, v1, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment$a;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    array-length v4, v0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    const v7, 0x7f0e0436

    iget-object v8, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b057e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    array-length v9, v0

    if-ne v9, v2, :cond_4

    const v9, 0x7f0b057f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c0()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v4, 0x7f12046c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v1, 0x7f12046b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public static j0(Landroid/content/Intent;)Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;
    .locals 4

    new-instance v0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "pkgName"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "permName"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "permDesc"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public b0(Z)V
    .locals 2

    invoke-static {}, Lpc/c;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->set(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->b0(Z)V

    return-void
.end method

.method public f0(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0587

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0585

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0586

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->i:Landroid/widget/TextView;

    const v0, 0x7f0b0584

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v0, 0x7f0b0588

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->d:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->initData()V

    return-void
.end method

.method public g0()I
    .locals 1

    const v0, 0x7f0e0435

    return v0
.end method

.method public h0(I)V
    .locals 4

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v1, 0x7f12046b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/InterceptBaseFragment;->c:Landroid/widget/Button;

    const v2, 0x7f12046c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071845

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/InterceptMIUIFragment;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    return-void
.end method
