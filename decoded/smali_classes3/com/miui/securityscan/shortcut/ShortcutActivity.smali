.class public Lcom/miui/securityscan/shortcut/ShortcutActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/shortcut/ShortcutActivity$a;,
        Lcom/miui/securityscan/shortcut/ShortcutActivity$b;,
        Lcom/miui/securityscan/shortcut/ShortcutActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lcom/miui/securityscan/shortcut/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

.field private c:Lcom/miui/securityscan/shortcut/ShortcutActivity$b;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/securityscan/shortcut/ShortcutActivity;->d0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public d0(Lq0/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->o(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->d:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->e:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->e:I

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->setScreenSize(I)V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->f:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->f:I

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->n(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const p1, 0x7f0e03b8

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const p1, 0x7f0b06d4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-direct {p1, p0, p0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->m(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->p(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->e:I

    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->d:Z

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iget v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->f:I

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->n(I)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iget v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->e:I

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->setScreenSize(I)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iget-boolean v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->d:Z

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->setFoldDevice(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0xa0

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
            "Ljava/util/List<",
            "Lcom/miui/securityscan/shortcut/c;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/shortcut/ShortcutActivity$b;-><init>(Lcom/miui/securityscan/shortcut/ShortcutActivity;)V

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->c:Lcom/miui/securityscan/shortcut/ShortcutActivity$b;

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->c:Lcom/miui/securityscan/shortcut/ShortcutActivity$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

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

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
