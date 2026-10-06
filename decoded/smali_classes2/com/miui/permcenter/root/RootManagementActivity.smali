.class public Lcom/miui/permcenter/root/RootManagementActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/permcenter/root/a;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lwb/b;"
    }
.end annotation


# instance fields
.field private a:Lnb/f;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnb/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/miui/permcenter/root/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lnb/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lnb/c;

    invoke-direct {v1}, Lnb/c;-><init>()V

    sget-object v4, Lnb/d;->a:Lnb/d;

    invoke-virtual {v1, v4}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100056

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lnb/c;

    invoke-direct {p1}, Lnb/c;-><init>()V

    sget-object v1, Lnb/d;->b:Lnb/d;

    invoke-virtual {p1, v1}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100055

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private f0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->d:Lcom/miui/permcenter/root/a;

    iget-object v1, v0, Lcom/miui/permcenter/root/a;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/miui/permcenter/root/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/miui/permcenter/root/RootManagementActivity;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->a:Lnb/f;

    invoke-virtual {v1, v0}, Lnb/f;->o(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/root/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/root/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/root/RootManagementActivity;->e0(Lq0/c;Lcom/miui/permcenter/root/a;)V

    return-void
.end method

.method public e0(Lq0/c;Lcom/miui/permcenter/root/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/root/a;",
            ">;",
            "Lcom/miui/permcenter/root/a;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->d:Lcom/miui/permcenter/root/a;

    invoke-direct {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->f0()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x32

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0x71

    invoke-virtual {p1, p2}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lq0/c;->h()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/permcenter/root/RootApplyActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_pkgname"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x32

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v2

    const-wide/16 v3, 0x200

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    move p2, v6

    goto :goto_0

    :cond_1
    move p2, v7

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    move v5, v2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnb/c;

    invoke-virtual {v8}, Lnb/c;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v9}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnb/c;

    invoke-virtual {v3}, Lnb/c;->a()Lnb/d;

    move-result-object v4

    sget-object v6, Lnb/d;->a:Lnb/d;

    if-ne v4, v6, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100056

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100055

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Lnb/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->d:Lcom/miui/permcenter/root/a;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/miui/permcenter/root/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->d:Lcom/miui/permcenter/root/a;

    iget-object p2, p2, Lcom/miui/permcenter/root/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/permcenter/root/RootManagementActivity;->d:Lcom/miui/permcenter/root/a;

    iget-object p2, p2, Lcom/miui/permcenter/root/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/miui/permcenter/root/RootManagementActivity;->f0()V

    new-instance p1, Lcom/miui/permcenter/root/RootManagementActivity$b;

    invoke-direct {p1, p0, v0}, Lcom/miui/permcenter/root/RootManagementActivity$b;-><init>(Lcom/miui/permcenter/root/RootManagementActivity;Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e0429

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lnb/f;

    invoke-direct {v0, p0}, Lnb/f;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->a:Lnb/f;

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060b72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lmiuix/recyclerview/card/f;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->a:Lnb/f;

    invoke-virtual {p1, p0}, Lnb/f;->n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->a:Lnb/f;

    invoke-virtual {p1, p0}, Lwb/a;->k(Lwb/b;)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->a:Lnb/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Lcom/miui/permcenter/root/a;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/permcenter/root/RootManagementActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/miui/permcenter/root/RootManagementActivity$a;-><init>(Lcom/miui/permcenter/root/RootManagementActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v1, v0, Lmiuix/recyclerview/card/f;

    if-eqz v1, :cond_0

    int-to-float p1, p1

    sget v1, Ltm/e;->d:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/root/RootManagementActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method
