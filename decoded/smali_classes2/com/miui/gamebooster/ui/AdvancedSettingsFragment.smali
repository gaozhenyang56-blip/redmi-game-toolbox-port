.class public Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lq6/f$a;
.implements Ll8/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/BaseFragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/d;",
        ">;>;",
        "Lq6/f$a;",
        "Ll8/e;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ll8/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->c:Ll8/f;

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b0(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Landroid/view/View;Lq6/i;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    invoke-virtual {p2}, Lq6/f;->s()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->c:Ll8/f;

    if-eqz v1, :cond_2

    invoke-static {p3, v0, p2}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h0(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->c:Ll8/f;

    invoke-interface {p2, p1}, Ll8/f;->C(Lmiuix/appcompat/app/Fragment;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/ui/AdvanceSettingsDetailActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "label"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pkg"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pkg_uid"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pkg_uid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, -0x4d2

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdvancedSettingsFrag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b0(Lq0/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    invoke-virtual {p1, p2}, Lq6/f;->p(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;Lq6/i;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initView()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b06d7

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v1, Lq6/f;

    invoke-direct {v1, v0}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    invoke-virtual {v1, p0}, Lq6/f;->H(Lq6/f$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    new-instance v5, Lu5/b;

    invoke-direct {v5}, Lu5/b;-><init>()V

    invoke-virtual {v4, v1, v5}, Lq6/f;->n(ILq6/b;)Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    new-instance v4, Lcom/miui/gamebooster/model/d;

    invoke-direct {v4, v3, v2, v3, v3}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lq6/f;->m(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment;->b:Lq6/f;

    const/4 v2, 0x2

    new-instance v4, Lu5/a;

    invoke-direct {v4, v0}, Lu5/a;-><init>(Z)V

    invoke-virtual {v1, v2, v4}, Lq6/f;->n(ILq6/b;)Lq6/f;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130429

    goto :goto_0

    :cond_0
    const p1, 0x7f13043e

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;

    iget-object p2, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$b;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/ui/AdvancedSettingsFragment$a;)V

    return-object p1
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01d5

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    const-string v2, "speed_set_3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gs_event_pv"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
