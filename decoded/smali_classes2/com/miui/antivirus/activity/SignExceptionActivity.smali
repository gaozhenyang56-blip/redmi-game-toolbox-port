.class public Lcom/miui/antivirus/activity/SignExceptionActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/SignExceptionActivity$b;,
        Lcom/miui/antivirus/activity/SignExceptionActivity$c;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/miui/optimizecenter/storage/view/EmptyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lw2/t;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/model/a;

    move-object v4, v3

    check-cast v4, Lcom/miui/antivirus/model/d;

    invoke-virtual {v4}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->g0(Ljava/util/List;)V

    return-void
.end method

.method private e0(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lo2/h;->T(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->d0()V

    const p1, 0x7f12173f

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/antivirus/activity/SignExceptionActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    return-object p0
.end method

.method private g0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10006f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->c:Landroid/widget/TextView;

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v3, v6}, Lx4/y1;->a(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {v2, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {v1, v2}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-virtual {v2}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->l()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->o(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0250

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-virtual {p1}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;->l()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/SignExceptionActivity;->e0(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e04cf

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0b0250

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->d:Landroid/widget/Button;

    const v0, 0x7f12046f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0b0379

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f121708

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    new-instance p1, Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-direct {p1, p0, p0}, Lcom/miui/antivirus/activity/SignExceptionActivity$c;-><init>(Lcom/miui/antivirus/activity/SignExceptionActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    const p1, 0x7f0b00e9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->a:Lcom/miui/antivirus/activity/SignExceptionActivity$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const p1, 0x7f0b04e1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/activity/SignExceptionActivity;->c:Landroid/widget/TextView;

    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/SignExceptionActivity;->d0()V

    return-void
.end method
