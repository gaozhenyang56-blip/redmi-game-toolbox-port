.class public Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/permissions/b$b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$k;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$l;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$g;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$j;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$c;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$f;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$o;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$i;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$h;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$d;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$n;,
        Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

.field private c:Lmiuix/recyclerview/widget/RecyclerView;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/miui/permission/PermissionGroupInfo;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;

.field private j:Z

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lmiuix/view/l;

.field private p:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field private q:Lcom/miui/permcenter/permissions/l;

.field private r:Landroid/text/TextWatcher;

.field private s:Lmiuix/view/l$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$a;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$b;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s:Lmiuix/view/l$b;

    return-void
.end method

.method private A0(Lcc/g;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppPermissionChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcc/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermAppsEditorActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcc/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcc/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->q:Lcom/miui/permcenter/permissions/l;

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/permcenter/permissions/l;->f(ILjava/util/List;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcc/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->N(Lcc/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private B0(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppsLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermAppsEditorActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->t(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/lang/String;ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method private C0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private D0(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f1200e6

    const v1, 0x7f12055c

    goto :goto_0

    :cond_2
    const v0, 0x7f12152f

    const v1, 0x7f120565

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    const-wide v4, 0x4000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-static {}, Lxc/k;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f1200cf

    const v1, 0x7f12055b

    goto :goto_0

    :cond_3
    const v0, 0x7f121564

    const v1, 0x7f120566

    :cond_4
    :goto_0
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f48

    new-instance v2, Lcc/j;

    invoke-direct {v2, p0, p1}, Lcc/j;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;I)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_5
    :goto_1
    return-void
.end method

.method private E0(II)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->isDisableSociality()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/appmanager/AppManageUtils;->p0(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq p1, v8, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne p2, v7, :cond_2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lxc/u;->a:Lxc/u;

    iget v6, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    invoke-virtual {v5, v6}, Lxc/u;->n(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide v5, 0x200000000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    new-instance p2, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;

    invoke-direct {p2, p0, v0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/util/ArrayList;I)V

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->i:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Lcc/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->A0(Lcc/g;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->B0(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->z0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    return p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->y0()Z

    move-result p0

    return p0
.end method

.method static synthetic k0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->E0(II)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->C0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->r:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->p:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    return-wide v0
.end method

.method static synthetic s0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->k:Z

    return p0
.end method

.method static synthetic t0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    return p0
.end method

.method static synthetic u0(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    return p1
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->C0()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPyInfo()Le3/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    if-eqz v2, :cond_0

    iget-object v3, v2, Le3/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Le3/g;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->F0()V

    return-void
.end method

.method private v0(Landroid/content/Intent;)J
    .locals 3

    const-string v0, "extra_permission_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private x0(Lcom/miui/permcenter/AppPermissionInfo;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private y0()Z
    .locals 2

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/miui/permcenter/o$a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic z0(ILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->E0(II)V

    return-void
.end method


# virtual methods
.method public F0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->n:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->w(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/util/ArrayList;)V

    return-void
.end method

.method public X(IILandroid/view/View;Lcom/miui/permcenter/AppPermissionInfo;)V
    .locals 1

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/miui/permcenter/permissions/PermissionAppsModifyActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->d:Ljava/lang/String;

    const-string v0, "permission_name"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    const-string v0, "group_id"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p4}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->x0(Lcom/miui/permcenter/AppPermissionInfo;)Ljava/util/ArrayList;

    move-result-object p3

    const-string v0, "permission_id"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "permission_action"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_permission_info"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->o:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->o:Lmiuix/view/l;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->k:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->w(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->s:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v1, 0x7f0e0425

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    const p1, 0x7f0b027f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->p:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const p1, 0x7f0b00bd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120c5e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->w0(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->i:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$m;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, p1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

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

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->w0(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00a8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x7f0b0916

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0972

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->D0(I)V

    return v2

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    iget-wide v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    invoke-static {p0, v0, v1, v2}, Lcom/miui/permcenter/n;->i(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    const-wide v2, 0x4000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/permcenter/o;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->s(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;Ljava/util/ArrayList;Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->k:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->o:Lmiuix/view/l;

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->o:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public w0(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "extra_permission_group"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionGroupInfo;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->f:Lcom/miui/permission/PermissionGroupInfo;

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->f:Lcom/miui/permission/PermissionGroupInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->f:Lcom/miui/permission/PermissionGroupInfo;

    :goto_0
    invoke-virtual {v0}, Lcom/miui/permission/PermissionGroupInfo;->getRelativePermissionIds()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lhc/a;->c()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permission/PermissionGroupInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionGroupInfo;->getId()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permission/PermissionGroupInfo;

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->v0(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    const-wide v3, 0x400000000L

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    invoke-static {}, Lxc/k;->c()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->j:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-wide v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->a:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_5
    const-string v0, "extra_permission_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-virtual {p1, p0}, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;->Q(Lcom/miui/permcenter/permissions/b$b;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->b:Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity$e;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result p1

    if-le p1, v2, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060b72

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lmiuix/recyclerview/card/f;

    invoke-direct {p1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->h:Ljava/util/ArrayList;

    new-instance p1, Landroidx/lifecycle/u0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/miui/permcenter/permissions/l;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/l;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->q:Lcom/miui/permcenter/permissions/l;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/l;->c()Landroidx/lifecycle/a0;

    move-result-object p1

    new-instance v0, Lcc/k;

    invoke-direct {v0, p0}, Lcc/k;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->q:Lcom/miui/permcenter/permissions/l;

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/l;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object p1

    new-instance v0, Lcc/l;

    invoke-direct {v0, p0}, Lcc/l;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->q:Lcom/miui/permcenter/permissions/l;

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->e:I

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/permcenter/permissions/l;->f(ILjava/util/List;Z)V

    return-void
.end method
