.class Lcom/miui/applicationlock/AppLockManageFragment$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/AppLockManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lc3/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/AppLockManageFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$w;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment$w;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/AppLockManageFragment$w;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment$w;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/AppLockManageFragment$w;->b(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Lq0/c;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/AppLockManageFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/miui/applicationlock/AppLockManageFragment;->o0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10002c

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->F0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->F0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->L0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->n0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

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
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/AppLockManageFragment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/miui/applicationlock/AppLockManageFragment$w$a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment$w$a;-><init>(Lcom/miui/applicationlock/AppLockManageFragment$w;Landroid/content/Context;)V

    return-object p2
.end method
