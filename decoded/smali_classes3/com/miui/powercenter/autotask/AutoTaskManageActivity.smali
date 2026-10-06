.class public Lcom/miui/powercenter/autotask/AutoTaskManageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lcom/miui/antispam/ui/view/RecyclerViewExt$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;,
        Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/miui/antispam/ui/view/RecyclerViewExt$e;"
    }
.end annotation


# static fields
.field public static final g:Z


# instance fields
.field private a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

.field private b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

.field private c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic d0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lcom/miui/powercenter/autotask/FloatActionButtonView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->l0(I)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method private g0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setCustomExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method private h0()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setTranslucentStatus(I)V

    return-void
.end method

.method private i0(Landroid/view/ActionMode;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    check-cast p1, Lmiuix/view/g;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lx4/r0;->b(Z)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lx4/r0;->c(Z)I

    move-result p2

    :goto_0
    const v0, 0x102001a

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method private j0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/autotask/AutoTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1, p1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private l0(I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {v1, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "task"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Lhd/b;->q()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    invoke-static {}, Lhd/b;->r()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lhd/b;->s()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lhd/b;->t()V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->w(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;Ljava/util/List;)V

    return-void
.end method

.method public H(Landroid/view/ActionMode;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {v0, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p2}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    if-eqz p3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2, p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->v(Landroid/content/Context;Landroid/view/ActionMode;)V

    sget-boolean p2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->g:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->o()I

    move-result p2

    iget-object p3, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p3}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->i0(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->k0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public k0(Lq0/c;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-direct {p0, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->j0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->w(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;Ljava/util/List;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f12031a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120644

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;

    invoke-direct {v2, p0, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$c;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/view/ActionMode;)V

    invoke-static {p0, p2, v1, v2}, Lcom/miui/powercenter/autotask/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v0

    :sswitch_1
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->p()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->r(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2, p0, p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->v(Landroid/content/Context;Landroid/view/ActionMode;)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->getItemCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {v3, v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_1
    sget-boolean p2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->g:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->p()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->i0(Landroid/view/ActionMode;Z)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_3
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_2
        0x102001a -> :sswitch_1
        0x7f0b035d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0x12c

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljg/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "openFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljg/a;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0e03c7

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->g0()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const v0, 0x7f0b06cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {v0, p0, p0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->u(Landroid/app/Activity;Lcom/miui/antispam/ui/view/RecyclerViewExt$e;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/FloatActionButtonView;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lx4/y1;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x12c

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lhd/a;->R()V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->l()V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->h0()V

    sget-boolean p2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->g:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    check-cast p1, Lmiuix/view/g;

    const v1, 0x1020019

    invoke-static {p2}, Lx4/r0;->a(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    const v1, 0x102001a

    invoke-static {p2}, Lx4/r0;->c(Z)I

    move-result p2

    invoke-interface {p1, v1, v3, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance p1, Lq0/b;

    sget-object v2, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/powercenter/autotask/AutoTask;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->b:Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->m()V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->c:Lcom/miui/powercenter/autotask/FloatActionButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->h0()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method
