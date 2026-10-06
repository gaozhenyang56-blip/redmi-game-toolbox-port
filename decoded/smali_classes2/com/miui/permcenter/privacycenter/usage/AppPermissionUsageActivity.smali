.class public final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppPermissionUsageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPermissionUsageActivity.kt\ncom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,533:1\n41#2,7:534\n41#2,7:541\n*S KotlinDebug\n*F\n+ 1 AppPermissionUsageActivity.kt\ncom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity\n*L\n57#1:534,7\n58#1:541,7\n*E\n"
    }
.end annotation


# static fields
.field public static final v:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljc/e;

.field private e:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lmiuix/recyclerview/widget/RecyclerView;

.field private i:Lmiuix/springback/view/SpringBackLayout;

.field private j:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/permission/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/permission/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lz4/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final s:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final u:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->v:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$j;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$j;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/t0;

    const-class v2, Ljc/m;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$k;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$k;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->b:Loj/f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$l;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$l;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/t0;

    const-class v2, Lcom/miui/permcenter/permissions/a;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$m;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$m;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->c:Loj/f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->s:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->t:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;

    invoke-direct {v1, p0, v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->u:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;

    return-void
.end method

.method private final A0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    const-string v1, "mAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Ljc/e;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v3, "mLayoutManager"

    if-nez v0, :cond_2

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-gez v0, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i:Lmiuix/springback/view/SpringBackLayout;

    if-nez v4, :cond_4

    const-string v4, "mSpringLayout"

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    if-nez v5, :cond_5

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    invoke-virtual {v5, v0}, Ljc/e;->l(I)Ljc/f;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    if-nez v6, :cond_6

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljc/e;->l(I)Ljc/f;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v6, :cond_7

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_7
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v5, Ljc/k;

    const-string v6, "mFloatTimeTitle"

    if-nez v3, :cond_d

    instance-of v3, v5, Ljc/g;

    if-eqz v3, :cond_8

    instance-of v3, v1, Ljc/g;

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    instance-of v1, v1, Ljc/k;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v1, :cond_9

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_9
    invoke-virtual {v5}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->a:I

    if-ge v1, v3, :cond_b

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v1, :cond_a

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v2, v1

    :goto_0
    iget v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr v4, v0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v0, :cond_c

    :goto_1
    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v2, v0

    goto :goto_3

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v0, :cond_e

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v1}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v0, :cond_c

    goto :goto_1

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    :cond_f
    return-void
.end method

.method private final B0(Lcc/g;)V
    .locals 4

    invoke-virtual {p1}, Lcc/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcc/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->y0()Lcom/miui/permcenter/permissions/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcc/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    invoke-virtual {p1}, Lcc/g;->d()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppPermissionChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUIPrivacy-AppUsage2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcc/g;->c()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n:Ljava/util/HashMap;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n:Ljava/util/HashMap;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v3, "perm"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "action"

    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private final C0(Lcom/miui/permcenter/permissions/c;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/c;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/miui/permcenter/permissions/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o:Landroid/util/ArrayMap;

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v1

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$b;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcom/miui/permcenter/permissions/c;Ltj/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_5
    return-void
.end method

.method private final D0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljc/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    if-nez v0, :cond_1

    const-string v0, "mAdapter"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Ljc/e;->r(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "mFloatTimeTitle"

    const-string v3, "mEmptyView"

    const-string v4, "mList"

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->f:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_3

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_4

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v2, Ljc/a;

    invoke-direct {v2, p0}, Ljc/a;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez p1, :cond_5

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->f:Landroid/widget/TextView;

    if-nez p1, :cond_7

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_8

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez p1, :cond_9

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, p1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private static final E0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->A0()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->E0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    return-void
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    return-object p0
.end method

.method public static final synthetic f0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->r:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->a:I

    return p0
.end method

.method public static final synthetic h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic j0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static final synthetic k0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Lmiuix/springback/view/SpringBackLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i:Lmiuix/springback/view/SpringBackLayout;

    return-object p0
.end method

.method public static final synthetic l0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/m;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic n0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic o0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->o:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic p0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->p:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic q0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    return p0
.end method

.method public static final synthetic r0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->A0()V

    return-void
.end method

.method public static final synthetic s0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q:Z

    return p0
.end method

.method public static final synthetic t0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcc/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->B0(Lcc/g;)V

    return-void
.end method

.method public static final synthetic u0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Lcom/miui/permcenter/permissions/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->C0(Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method public static final synthetic v0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->D0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic w0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->r:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic x0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->a:I

    return-void
.end method

.method private final y0()Lcom/miui/permcenter/permissions/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/a;

    return-object v0
.end method

.method private final z0()Ljc/m;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/m;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "device_permission_select_action"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "device_permission"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v1, "device_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->r:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->r:Ljava/util/Map;

    invoke-static {p2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz4/a;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.APP_PRIVACY_DETAIL"

    invoke-static {v2, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.miui.permcenter.privacymanager.behaviorrecord.PrivacyDetailActivity"

    invoke-static {v3, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.USER"

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "privacy_pkg_info"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "privacy_userid"

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v0

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "IS_TERMINAL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    const/16 v3, 0x10c0

    iget v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    invoke-static {v1, v3, v4}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q:Z

    if-eqz v3, :cond_8

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move v2, v0

    :cond_7
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m:Landroid/content/pm/PackageInfo;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b016a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.behavior_loading)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v1, 0x7f0b0168

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.behavior_empty_view)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f0b0d46

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lbl/l;->a()I

    move-result v3

    const v4, 0x7f060b72

    if-le v3, v0, :cond_9

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "findViewById<TextView?>(\u2026ity = View.GONE\n        }"

    invoke-static {v1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b0ae7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.springbacklayout)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lmiuix/springback/view/SpringBackLayout;

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i:Lmiuix/springback/view/SpringBackLayout;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v1, Ljc/e;

    invoke-direct {v1, p0, v0}, Ljc/e;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->t:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$g;

    invoke-virtual {v1, v2}, Ljc/e;->p(Ljc/c;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    const v1, 0x7f0b08b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v6, 0x0

    if-nez v5, :cond_a

    const-string v5, "mLayoutManager"

    invoke-static {v5}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v6

    :cond_a
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d:Ljc/e;

    if-nez v5, :cond_b

    const-string v5, "mAdapter"

    invoke-static {v5}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v6

    :cond_b
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v3

    if-le v3, v0, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lmiuix/recyclerview/card/f;

    invoke-direct {v3, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_c
    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->s:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    const-string v3, "findViewById<RecyclerVie\u2026ScrollListener)\n        }"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object v1

    invoke-virtual {v1}, Ljc/m;->x()Landroidx/lifecycle/a0;

    move-result-object v1

    new-instance v2, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$c;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$c;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;

    invoke-direct {v3, v2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;-><init>(Lak/l;)V

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-boolean v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q:Z

    const-string v2, "MIUIPrivacy-AppUsage2"

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.miui.permcenter.privacycenter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->u:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->y0()Lcom/miui/permcenter/permissions/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/a;->c()Landroidx/lifecycle/a0;

    move-result-object v1

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$d;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$d;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;

    invoke-direct {v4, v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;-><init>(Lak/l;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->y0()Lcom/miui/permcenter/permissions/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/a;->d()Lcom/miui/permcenter/permissions/e;

    move-result-object v1

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$e;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$e;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;

    invoke-direct {v4, v3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$i;-><init>(Lak/l;)V

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->y0()Lcom/miui/permcenter/permissions/a;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m:Landroid/content/pm/PackageInfo;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/miui/permcenter/permissions/a;->e(Landroid/content/pm/PackageInfo;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljc/m;->r(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate load behavior for {"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "} now..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    iget v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljc/m;->D(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l:I

    invoke-virtual {p1, v1, v2, v0}, Ljc/m;->z(Ljava/lang/String;IZ)V

    goto :goto_5

    :cond_d
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;

    invoke-direct {v0, p0, v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ltj/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    if-nez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate loadTerminalPermissionUsage for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " now..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->z0()Ljc/m;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljc/m;->H(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->u:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 7

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    const-string v2, "mFloatTimeTitle"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, p0, v1}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    const-string v1, "mList"

    if-nez v0, :cond_1

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    const-string v4, "mList.getItemDecorationAt(0)"

    invoke-static {v0, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v0, Lmiuix/recyclerview/card/f;

    if-eqz v4, :cond_7

    int-to-float p1, p1

    sget v4, Ltm/e;->d:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr p1, v4

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0714b6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0714b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v5, :cond_2

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    add-int/2addr v0, p1

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v6, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v3

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr p1, v4

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g:Landroid/widget/TextView;

    if-nez v4, :cond_4

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v4, v3

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v5, v0, v6, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_5

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_6

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
