.class public Lcom/miui/antivirus/whitelist/WhiteListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/whitelist/WhiteListActivity$e;,
        Lcom/miui/antivirus/whitelist/WhiteListActivity$d;,
        Lcom/miui/antivirus/whitelist/WhiteListActivity$c;,
        Lcom/miui/antivirus/whitelist/WhiteListActivity$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/miui/antivirus/whitelist/WhiteListActivity$f;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/Button;

.field private f:Lcom/miui/optimizecenter/storage/view/EmptyView;

.field private g:Lmiuix/recyclerview/widget/RecyclerView;

.field private h:Landroidx/recyclerview/widget/RecyclerView$m;

.field private i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

.field private j:Lcom/miui/antivirus/whitelist/d;

.field private k:Lcom/miui/antivirus/whitelist/WhiteListActivity$e;

.field private l:Lcom/miui/antivirus/whitelist/WhiteListActivity$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->a:Z

    const-string v0, "key_show_toast"

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d:Ljava/util/List;

    new-instance v0, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$c;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->l:Lcom/miui/antivirus/whitelist/WhiteListActivity$c;

    return-void
.end method

.method static synthetic d0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->j:Lcom/miui/antivirus/whitelist/d;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e:Landroid/widget/Button;

    return-object p0
.end method

.method private h0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->h:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-static {v4}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->m(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-static {v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->m(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/antivirus/whitelist/b;

    iget-object v5, v5, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-static {v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->m(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/antivirus/whitelist/b;

    iget-object v5, v5, Lcom/miui/antivirus/whitelist/b;->a:Lx2/b;

    add-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lx2/b;->a()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-static {v4}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->m(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antivirus/whitelist/b;

    iget-object v4, v4, Lcom/miui/antivirus/whitelist/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Ljava/util/Map;)V

    invoke-static {v1}, Ls4/c$b;->b(Lu4/c;)Ls4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c$b;->a()Ls4/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->h:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method private j0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;->s(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->h0()V

    return-void
.end method

.method private l0()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lx2/a;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->k:Lcom/miui/antivirus/whitelist/WhiteListActivity$e;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhiteListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->k0(Lq0/c;Ljava/lang/Boolean;)V

    return-void
.end method

.method public varargs i0(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x22

    invoke-virtual {v0, v5, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WhiteListActivity"

    const-string p3, "msg"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public k0(Lq0/c;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->j0()V

    iget-boolean p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->a:Z

    if-eqz p1, :cond_0

    const p1, 0x7f121a80

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0d60

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->l:Lcom/miui/antivirus/whitelist/WhiteListActivity$c;

    const/16 v0, 0x3fd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e050d

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/antivirus/whitelist/d;->d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->j:Lcom/miui/antivirus/whitelist/d;

    const p1, 0x7f0b0d60

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0379

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f120722

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    const p1, 0x7f0b0d5f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p1, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->i:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-boolean p1, p0, Lcom/miui/common/base/BaseActivity;->isFloatingTheme:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0b0dba

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e78

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v2, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    new-instance p1, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->l:Lcom/miui/antivirus/whitelist/WhiteListActivity$c;

    invoke-direct {p1, p0, v1, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$e;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lw4/e;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->k:Lcom/miui/antivirus/whitelist/WhiteListActivity$e;

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->l0()V

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->a:Z

    new-instance p1, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity$f;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->c:Lcom/miui/antivirus/whitelist/WhiteListActivity$f;

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->k:Lcom/miui/antivirus/whitelist/WhiteListActivity$e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhiteListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
