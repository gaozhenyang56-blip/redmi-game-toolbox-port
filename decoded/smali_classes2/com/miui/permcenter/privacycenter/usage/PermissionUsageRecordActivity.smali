.class public Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionUsageRecordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUsageRecordActivity.kt\ncom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,518:1\n41#2,7:519\n*S KotlinDebug\n*F\n+ 1 PermissionUsageRecordActivity.kt\ncom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity\n*L\n48#1:519,7\n*E\n"
    }
.end annotation


# static fields
.field public static final z:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljc/e;

.field private c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

.field private e:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private f:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private g:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private h:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private i:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Lmiuix/recyclerview/widget/RecyclerView;

.field private m:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private n:Lmiuix/springback/view/SpringBackLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/Button;

.field private r:Z

.field private s:Landroid/view/MenuItem;

.field private t:Landroid/view/MenuItem;

.field private final u:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final v:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final w:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final x:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final y:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->z:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$h;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$h;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/t0;

    const-class v2, Ljc/m;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$i;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$i;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->a:Loj/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->u:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;

    new-instance v0, Ljc/i;

    invoke-direct {v0, p0}, Ljc/i;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->w:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;

    new-instance v0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->x:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;

    invoke-direct {v1, p0, v0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->y:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->t0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->u0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic f0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    return p0
.end method

.method public static final synthetic h0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j:I

    return p0
.end method

.method public static final synthetic i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic k0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic l0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Lmiuix/springback/view/SpringBackLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->n:Lmiuix/springback/view/SpringBackLayout;

    return-object p0
.end method

.method public static final synthetic m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->s0()V

    return-void
.end method

.method public static final synthetic o0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic p0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j:I

    return-void
.end method

.method public static final synthetic q0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Lmiuix/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->z0(Lmiuix/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final r0()Ljc/m;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/m;

    return-object v0
.end method

.method private final s0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

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
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

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
    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->n:Lmiuix/springback/view/SpringBackLayout;

    if-nez v4, :cond_4

    const-string v4, "mSpringLayout"

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    if-nez v5, :cond_5

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_5
    invoke-virtual {v5, v0}, Ljc/e;->l(I)Ljc/f;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    if-nez v6, :cond_6

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljc/e;->l(I)Ljc/f;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

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

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v1, :cond_9

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_9
    invoke-virtual {v5}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j:I

    if-ge v1, v3, :cond_b

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v1, :cond_a

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v2, v1

    :goto_0
    iget v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr v4, v0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v0, :cond_c

    :goto_1
    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v2, v0

    goto :goto_3

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v0, :cond_e

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v1}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v0, :cond_c

    goto :goto_1

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    :cond_f
    return-void
.end method

.method private static final t0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBtnOpenBehavior"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->w0(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->e:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v0, :cond_2

    const-string v0, "tabAll"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    const/16 p1, 0x7e

    :goto_0
    invoke-virtual {p0, p1}, Ljc/m;->t(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v0, :cond_4

    const-string v0, "tabLocation"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->g:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v0, :cond_6

    const-string v0, "tabCamera"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v0, :cond_8

    const-string v0, "tabMic"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    const/16 p1, 0x8

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v0, :cond_a

    const-string v0, "tabTerminal"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v1, v0

    :goto_1
    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p0

    const/16 p1, 0x10

    goto :goto_0

    :cond_b
    :goto_2
    return-void
.end method

.method private static final u0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->w0(Z)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private final v0(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljc/f;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionUsageLoad cur size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIUIPrivacy-AllUsage1"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x14

    const-string v3, "mProgressBar"

    const-string v4, "mEmptyView"

    const-string v5, "mFloatTimeTitle"

    const-string v6, "mList"

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    invoke-virtual {v0}, Ljc/m;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "The size is less than 20, try loading more..."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {v5}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez p1, :cond_3

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v7, v7, v0, v9}, Ljc/m;->C(Ljc/m;ZIILjava/lang/Object;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_6

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v9

    :cond_6
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    if-nez v0, :cond_7

    const-string v0, "mAdapter"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v9

    :cond_7
    invoke-virtual {v0, p1}, Ljc/e;->r(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    if-nez p1, :cond_8

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_8
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_9

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_a

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->u:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez p1, :cond_b

    invoke-static {v5}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    move-object v9, p1

    :goto_0
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    if-nez p1, :cond_d

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_d
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_e

    invoke-static {v6}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v9

    :cond_e
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez p1, :cond_f

    invoke-static {v5}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    move-object v9, p1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final w0(Z)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->p:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mCloseView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_1

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v0, :cond_2

    const-string v0, "filerSortView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->e:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_3

    const-string v3, "tabAll"

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    const/16 v3, 0x7e

    invoke-virtual {v0, v3}, Ljc/m;->t(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v3, v1}, Ljc/m;->E(Ljc/m;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Ljc/m;->C(Ljc/m;ZIILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->y0()V

    :goto_0
    iput-boolean p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/permission/PermissionManager;->setAppBehaviorRecordEnable(Z)V

    return-void
.end method

.method private final x0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120150

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120133

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120135

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private final y0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mEmptyView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v0, "mList"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_2

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, "mFloatTimeTitle"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v0, :cond_4

    const-string v0, "filerSortView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->p:Landroid/view/View;

    if-nez v0, :cond_5

    const-string v0, "mCloseView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final z0(Lmiuix/recyclerview/widget/RecyclerView;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v0, 0x7f1301a7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const/16 v0, 0x7e

    const-string v2, "extra_menu_with"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const v2, 0x7f0b03e0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.filter_group)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lmiuix/miuixbasewidget/widget/FilterSortView2;

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    invoke-static {}, Lx4/y;->s()Z

    move-result v2

    const-string v3, "filerSortView"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v2, :cond_2

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v5

    :cond_2
    invoke-virtual {v2, v4}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setLayoutConfig(I)V

    :cond_3
    const v2, 0x7f0b0b45

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v7, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v7, "findViewById<FilterSortV\u2026er(onMenuClick)\n        }"

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->e:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    const v2, 0x7f0b0b4a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    const v2, 0x7f0b0b46

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->g:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    const v2, 0x7f0b0b4b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    const v2, 0x7f0b0b4c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2, v7}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    const v2, 0x7f0b016a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v6, "findViewById(R.id.behavior_loading)"

    invoke-static {v2, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v2, 0x7f0b0d46

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    invoke-static {}, Lbl/l;->a()I

    move-result v7

    const v8, 0x7f060b72

    if-le v7, v1, :cond_4

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v9, "findViewById<TextView?>(\u2026ity = View.GONE\n        }"

    invoke-static {v2, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    const v2, 0x7f0b0ae7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v6, "findViewById(R.id.springbacklayout)"

    invoke-static {v2, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lmiuix/springback/view/SpringBackLayout;

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->n:Lmiuix/springback/view/SpringBackLayout;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v2, Ljc/e;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6, v4, v5}, Ljc/e;-><init>(Lmiuix/appcompat/app/AppCompatActivity;ZILbk/g;)V

    iget-object v9, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->x:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$e;

    invoke-virtual {v2, v9}, Ljc/e;->p(Ljc/c;)V

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    const v2, 0x7f0b08b4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v10, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v10, :cond_5

    const-string v10, "mLayoutManager"

    invoke-static {v10}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v10, v5

    :cond_5
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v10, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->b:Ljc/e;

    if-nez v10, :cond_6

    const-string v10, "mAdapter"

    invoke-static {v10}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v10, v5

    :cond_6
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-static {}, Lbl/l;->a()I

    move-result v10

    if-le v10, v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v11, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lmiuix/recyclerview/card/f;

    invoke-direct {v8, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_7
    iget-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->w:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    const-string v8, "findViewById<RecyclerVie\u2026ScrollListener)\n        }"

    invoke-static {v2, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b0168

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v8, "findViewById(R.id.behavior_empty_view)"

    invoke-static {v2, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    const v2, 0x7f0b0166

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v8, "findViewById(R.id.behavior_close_layout)"

    invoke-static {v2, v8}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->p:Landroid/view/View;

    const v2, 0x7f0b01ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    iget-object v9, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v9, "findViewById<Button?>(R.\u2026er(onMenuClick)\n        }"

    invoke-static {v2, v9}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->q:Landroid/widget/Button;

    invoke-static {p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/permission/PermissionManager;->isAppBehaviorRecordEnable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v2

    invoke-virtual {v2}, Ljc/m;->w()Landroidx/lifecycle/c0;

    move-result-object v2

    new-instance v8, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;

    invoke-direct {v8, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$c;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    new-instance v9, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;

    invoke-direct {v9, v8}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;-><init>(Lak/l;)V

    invoke-virtual {v2, p0, v9}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v2

    invoke-virtual {v2}, Ljc/m;->x()Landroidx/lifecycle/a0;

    move-result-object v2

    new-instance v8, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$d;

    invoke-direct {v8, p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$d;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;

    invoke-direct {v9, v8}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$g;-><init>(Lak/l;)V

    invoke-virtual {v2, p0, v9}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "content://com.miui.permcenter.privacycenter"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->y:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;

    invoke-virtual {v2, v8, v1, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v2, :cond_8

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v5

    :cond_8
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eq v0, v4, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    if-eq v0, v7, :cond_a

    const/16 v3, 0x10

    if-eq v0, v3, :cond_9

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->e:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_d

    const-string v3, "tabAll"

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_d

    const-string v3, "tabTerminal"

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_d

    const-string v3, "tabMic"

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->g:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_d

    const-string v3, "tabCamera"

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    if-nez v3, :cond_d

    const-string v3, "tabLocation"

    :goto_1
    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v3, v5

    :cond_d
    invoke-virtual {v2, v3}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljc/m;->r(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "MIUIPrivacy-AllUsage1"

    const-string v2, "onCreate load all behavior now..."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljc/m;->t(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v5, v5, v0, v5}, Ljc/m;->E(Ljc/m;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object p1

    invoke-static {p1, v1, v6, v4, v5}, Ljc/m;->C(Ljc/m;ZIILjava/lang/Object;)V

    goto :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->y0()V

    :cond_f
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->y:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v0, "mList"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->u:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 7

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    const-string v2, "filerSortView"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, p0, v1}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    const-string v4, "mFloatTimeTitle"

    if-nez v1, :cond_1

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, p0, v1}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    const-string v1, "mList"

    if-nez v0, :cond_2

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    const-string v5, "mList.getItemDecorationAt(0)"

    invoke-static {v0, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v0, Lmiuix/recyclerview/card/f;

    if-eqz v5, :cond_b

    int-to-float p1, p1

    sget v5, Ltm/e;->d:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    add-float/2addr p1, v5

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v0, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v5, :cond_4

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->d:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-nez v6, :cond_5

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v3

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v5, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0714b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0714b3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v5, :cond_6

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_6
    add-int/2addr v0, p1

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v6, :cond_7

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v3

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->k:Landroid/widget/TextView;

    if-nez v2, :cond_8

    invoke-static {v4}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v5, v0, v6, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_9

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_a

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->t:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    const-string v0, "menuDisableBehavior"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_2

    :sswitch_0
    invoke-static {}, Lmc/c;->A()V

    invoke-static {}, Lmc/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120159

    goto :goto_0

    :cond_0
    const v0, 0x7f120160

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_1

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    const-string v0, "mList"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, "mEmptyView"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljc/m;->B(ZI)V

    goto/16 :goto_4

    :sswitch_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120158

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100010

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120157

    new-instance v2, Ljc/j;

    invoke-direct {v2, p0, p1}, Ljc/j;-><init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120156

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_4

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.bugreport"

    const-string v2, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->x0()V

    goto :goto_4

    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    if-eqz v4, :cond_5

    invoke-static {p0}, Lmc/c;->z(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    :cond_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->s:Landroid/view/MenuItem;

    if-nez v0, :cond_6

    const-string v0, "menuShowSystemBehavior"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v3, v0

    :goto_3
    iget-boolean v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_4
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0b0163 -> :sswitch_3
        0x7f0b0164 -> :sswitch_2
        0x7f0b0167 -> :sswitch_1
        0x7f0b016e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0167

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "menu.findItem(R.id.behavior_disable)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->t:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    const-string v0, "menuDisableBehavior"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lmc/c;->z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0b016e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lmc/c;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120159

    goto :goto_1

    :cond_2
    const v1, 0x7f120160

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const-string v1, "menu.findItem(R.id.behav\u2026          )\n            }"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->s:Landroid/view/MenuItem;

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->r0()Ljc/m;

    move-result-object v0

    invoke-virtual {v0}, Ljc/m;->y()I

    move-result v0

    const-string v1, "extra_menu_with"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
