.class public Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ll8/e;
.implements Landroidx/loader/app/a$a;
.implements Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;,
        Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;,
        Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;,
        Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Ll8/e;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "Lu7/a;",
        ">;>;",
        "Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lmiuix/recyclerview/widget/RecyclerView;

.field private e:Landroid/view/View;

.field private f:Ll8/f;

.field private g:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;

.field private h:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;

.field private i:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;

.field private j:Landroid/content/pm/PackageManager;

.field private k:Landroid/os/UserManager;

.field private l:Landroid/app/usage/UsageStatsManager;

.field private m:Lq6/f;

.field private n:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu7/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu7/a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/app/Activity;

.field private r:Lmiuix/appcompat/app/ProgressDialog;

.field private s:Lmiuix/appcompat/app/ProgressDialog;

.field private t:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

.field private final u:Landroid/content/pm/IPackageStatsObserver$Stub;

.field v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    new-instance v0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$a;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->u:Landroid/content/pm/IPackageStatsObserver$Stub;

    new-instance v0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$b;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$e;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->w:Ljava/lang/Runnable;

    return-void
.end method

.method private A0(Landroid/content/Context;ILjava/lang/String;J)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu7/a;

    invoke-virtual {v2}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lu7/a;->f()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-static {p1, p4, p5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu7/a;->o(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1}, Lq6/f;->q()V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1, v0}, Lq6/f;->p(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method private B0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    const v1, 0x7f120a23

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private C0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    const/4 v1, 0x0

    const v2, 0x7f120a22

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private D0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-static {v0}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q0()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$d;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$d;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$c;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$c;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method private E0(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEmptyUi: isEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameUninstallFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s0()V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;ILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->z0(ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lq6/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Landroid/content/Context;ILjava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->A0(Landroid/content/Context;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->y0()V

    return-void
.end method

.method static synthetic h0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->v0()V

    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->n:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->B0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->j:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/content/pm/IPackageStatsObserver$Stub;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->u:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->t0()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Landroid/util/SparseArray;Ljava/lang/String;I)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r0(Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private o0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->r:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private p0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->s:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private q0()[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-static {v2}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu7/a;

    iget-object v4, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f120a25

    const v6, 0x7f120a24

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120a26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lu7/a;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v2}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    goto :goto_5

    :cond_2
    iget-object v4, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10003a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lu7/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-virtual {v8, v9, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    move v0, v3

    :goto_1
    if-ge v3, v4, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu7/a;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    :goto_5
    return-object v1
.end method

.method private r0(Landroid/util/SparseArray;Ljava/lang/String;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            "I)J"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v2, 0x125e5770400L

    cmp-long p3, p1, v2

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private synthetic s0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p0()V

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->E0(Z)V

    return-void
.end method

.method private t0()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->k:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->l:Landroid/app/usage/UsageStatsManager;

    invoke-static {v3, v2}, Lcom/miui/appmanager/AppManageUtils;->l0(Landroid/app/usage/UsageStatsManager;I)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private v0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->C0()V

    invoke-static {}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->d()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->e()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$PackageDeleteObserver;->s8(I)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->w:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private w0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu7/a;

    invoke-virtual {v1}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private x0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu7/a;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lu7/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private y0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->p:Ljava/util/List;

    invoke-static {v1}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private z0(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "packageName"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-string p3, "size"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->n:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
            "Lu7/a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public H(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->x0(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->w0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {p1}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    new-instance v0, Lv7/a;

    invoke-direct {v0, p0}, Lv7/a;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->f:Ll8/f;

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->u0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method protected initView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->j:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->k:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->l:Landroid/app/usage/UsageStatsManager;

    new-instance v0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->n:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$i;

    const v0, 0x7f0b0bcd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f120ad4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0b0d3a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->c:Landroid/view/View;

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->q:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    new-instance v1, Lv7/b;

    iget-object v2, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v1, v2}, Lv7/b;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->d()Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->t:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->a(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x145

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->f:Ll8/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll8/f;->pop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0d3a

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->D0()V

    :cond_1
    :goto_0
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;)V

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->g:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;

    return-object p1
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01da

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->g:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->h:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->i:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->t:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->g(Lcom/miui/gamebooster/storage/utils/UninstallAppsManager$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->t:Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;

    invoke-virtual {v0}, Lcom/miui/gamebooster/storage/utils/UninstallAppsManager;->c()V

    return-void
.end method

.method public u0(Lq0/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;>;",
            "Ljava/util/List<",
            "Lu7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x145

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o0()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1}, Lq6/f;->q()V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1}, Lq6/f;->q()V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1, p2}, Lq6/f;->p(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->m:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    new-instance p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->h:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$g;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;

    iget-object v0, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->o:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;-><init>(Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->i:Lcom/miui/gamebooster/storage/ui/GameUninstallFragment$h;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/storage/ui/GameUninstallFragment;->E0(Z)V

    return-void
.end method
