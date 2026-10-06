.class public Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lx6/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Lw6/g;

.field protected f:Lmiuix/view/l;

.field private g:Ljava/lang/Object;

.field private h:Landroid/content/pm/PackageManager;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx6/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/text/TextWatcher;

.field private l:Lmiuix/view/l$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$b;-><init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$c;-><init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->k:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$d;-><init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->l:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->k0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->l:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->k:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private k0()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-static {p0, v1}, La8/j0;->k(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "package_name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "package_uid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v6, "game_gravity"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "game_ratio"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->g:Ljava/lang/Object;

    invoke-static {v8, v2, v4}, Lx4/f1;->i(Ljava/lang/Object;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_0

    const/16 v9, 0x3e7

    if-eq v4, v9, :cond_0

    invoke-static {v8}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {p0, v2, v1}, Lx4/t;->y(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Lx6/d;

    iget-object v10, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v8, v3, v10, v11}, Lx6/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput v6, v9, Lx6/d;->f:I

    iput-object v7, v9, Lx6/d;->g:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-object v5, v2

    :catch_1
    :try_start_2
    invoke-static {p0, v2, v4, v3, v3}, La8/j0;->b(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v5

    :goto_3
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {p0, v3}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->m0(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->l0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->f:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->f:Lmiuix/view/l;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->m0(Ljava/util/List;)V

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->f:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l0(Lq0/c;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;>;",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x1a5

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    const p1, 0x7f120a54

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->i:Ljava/util/List;

    invoke-static {p2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->m0(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public m0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->e:Lw6/g;

    invoke-virtual {v0, p1}, Lw6/g;->o(Ljava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {}, Lw6/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "GameModeSettingsActivity"

    const-string v0, "unsupport game size mode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->h:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.AppGlobals"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const v1, 0x7f0b06d4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p1, 0x7f0b0a23

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    const v1, 0x7f0b0379

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->d:Landroid/view/View;

    new-instance v1, Lw6/g;

    invoke-direct {v1, p0}, Lw6/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->e:Lw6/g;

    iget-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Lmiuix/recyclerview/card/f;

    invoke-direct {v2, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->e:Lw6/g;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0x1a5

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060b0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

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
            "Lx6/d;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;

    invoke-direct {p1, p0, p0}, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity$a;-><init>(Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;Landroid/content/Context;)V

    return-object p1
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/gamebooster/gamemode/GameModeSettingsActivity;->f:Lmiuix/view/l;

    return-void
.end method
