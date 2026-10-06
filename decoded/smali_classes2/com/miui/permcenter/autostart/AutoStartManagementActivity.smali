.class public Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lwb/b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/autostart/AutoStartManagementActivity$c;,
        Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;,
        Lcom/miui/permcenter/autostart/AutoStartManagementActivity$f;,
        Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;,
        Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Lcom/miui/permcenter/autostart/b;",
        ">;",
        "Lwb/b;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final y:Landroid/os/Handler;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Lcom/miui/permcenter/autostart/b;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/view/MenuItem;

.field private h:Landroid/view/MenuItem;

.field private i:Landroid/view/MenuItem;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnb/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Lcom/miui/permcenter/autostart/a;

.field private o:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field protected r:Lmiuix/view/l;

.field private s:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;

.field private t:Landroid/text/TextWatcher;

.field private u:Lmiuix/view/l$b;

.field private v:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/miui/permcenter/autostart/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->y:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->t:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$b;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->u:Lmiuix/view/l$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w:Ljava/util/List;

    return-void
.end method

.method private A0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private B0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lnb/b;

    invoke-direct {v1, p0}, Lnb/b;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private C0()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->g:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->f:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/miui/permcenter/autostart/b;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->i:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->h:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->i:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AutoStartManagementActivity"

    const-string v2, "updateMenu: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private D0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/a;->u(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->y0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->b:I

    return p0
.end method

.method static synthetic g0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->v:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;)Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->v:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/AppPermissionInfo;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->v0(Lcom/miui/permcenter/AppPermissionInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->A0()V

    return-void
.end method

.method static synthetic o0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->D0()V

    return-void
.end method

.method static synthetic p0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->t:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->o:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    return-object p0
.end method

.method static synthetic t0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->j:Z

    return p0
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->A0()V

    new-instance v0, Lnb/c;

    invoke-direct {v0}, Lnb/c;-><init>()V

    sget-object v1, Lnb/d;->c:Lnb/d;

    invoke-virtual {v0, v1}, Lnb/c;->d(Lnb/d;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lnb/c;->e(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/permcenter/autostart/h;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/permcenter/autostart/h;->a:Ljava/util/ArrayList;

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnb/c;

    invoke-virtual {v3}, Lnb/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getPyInfo()Le3/g;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    if-eqz v5, :cond_1

    iget-object v6, v5, Le3/g;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v5, v5, Le3/g;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->D0()V

    return-void
.end method

.method private v0(Lcom/miui/permcenter/AppPermissionInfo;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->isSystem()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$c;

    invoke-direct {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$c;-><init>()V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/permcenter/autostart/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->x0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/permcenter/autostart/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/permcenter/autostart/h;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->x0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v0

    iput-object p1, v0, Lcom/miui/permcenter/autostart/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object p1

    iput-object p2, p1, Lcom/miui/permcenter/autostart/h;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    return-void
.end method

.method private x0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
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

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lnb/c;

    invoke-direct {v2}, Lnb/c;-><init>()V

    sget-object v5, Lnb/d;->a:Lnb/d;

    invoke-virtual {v2, v5}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100053

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lnb/c;

    invoke-direct {p1}, Lnb/c;-><init>()V

    sget-object v2, Lnb/d;->b:Lnb/d;

    invoke-virtual {p1, v2}, Lnb/c;->d(Lnb/d;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100051

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v0, v2, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnb/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnb/c;->e(Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private synthetic y0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/permcenter/autostart/h;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w0()Lcom/miui/permcenter/autostart/h;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/permcenter/autostart/h;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/permcenter/autostart/a;->t(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/autostart/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/permcenter/autostart/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->z0(Lq0/c;Lcom/miui/permcenter/autostart/b;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r:Lmiuix/view/l;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->k:Z

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->u:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const v1, 0x7f0e0422

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v2, 0x7f0b0379

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->a:Landroid/view/View;

    const v2, 0x7f0b0133

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b00bd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    const v2, 0x7f0b027f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->o:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    const v3, 0x1020009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120c5e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/miui/permcenter/autostart/a;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/autostart/a;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    new-instance v2, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;)V

    iput-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->x:Lcom/miui/permcenter/autostart/a$f;

    iget-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v4, v2}, Lcom/miui/permcenter/autostart/a;->s(Lcom/miui/permcenter/autostart/a$f;)V

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v2, p0}, Lwb/a;->k(Lwb/b;)V

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n:Lcom/miui/permcenter/autostart/a;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060b72

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lmiuix/recyclerview/card/f;

    invoke-direct {v2, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v2

    const/16 v4, 0x70

    invoke-virtual {v2, v4, v3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    iget-object v2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    if-eqz p1, :cond_1

    const-string v1, "ShowSystemApp"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    const-string v1, "ShowWorkProfileApp"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/z;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/z;->V(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

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
            "Lcom/miui/permcenter/autostart/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;

    invoke-direct {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->s:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0a69

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->f:Landroid/view/MenuItem;

    const v0, 0x7f0b04f1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->g:Landroid/view/MenuItem;

    const v0, 0x7f0b0a6a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->h:Landroid/view/MenuItem;

    const v0, 0x7f0b04f2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->i:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->C0()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->s:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_0
    sget-object v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->v:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->p:Landroid/view/View;

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

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->C0()V

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    :cond_0
    return v1

    :sswitch_1
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->C0()V

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    :cond_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b04f1 -> :sswitch_1
        0x7f0b04f2 -> :sswitch_0
        0x7f0b0a69 -> :sswitch_1
        0x7f0b0a6a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->j:Z

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->j:Z

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d:Z

    const-string v1, "ShowSystemApp"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    const-string v1, "ShowWorkProfileApp"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->k:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r:Lmiuix/view/l;

    invoke-interface {p1, v0}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->r:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public w0()Lcom/miui/permcenter/autostart/h;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/b;->b:Lcom/miui/permcenter/autostart/h;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    iget-object v0, v0, Lcom/miui/permcenter/autostart/b;->a:Lcom/miui/permcenter/autostart/h;

    :goto_0
    return-object v0
.end method

.method public z0(Lq0/c;Lcom/miui/permcenter/autostart/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Lcom/miui/permcenter/autostart/b;",
            ">;",
            "Lcom/miui/permcenter/autostart/b;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->c:Lcom/miui/permcenter/autostart/b;

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->B0()V

    invoke-direct {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->C0()V

    return-void
.end method
