.class public Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$p;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$c;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$e;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$g;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$l;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$j;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$n;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;,
        Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$o;
    }
.end annotation


# static fields
.field private static final N:Landroid/os/Handler;


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lmiuix/appcompat/app/AlertDialog;

.field private C:Landroidx/recyclerview/widget/z;

.field private D:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

.field private final G:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final I:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final L:Luc/b$a;

.field private M:Ltb/b$d;

.field private a:Landroid/view/View;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lsb/c;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Landroid/animation/AnimatorSet;

.field private n:I

.field private o:Ltb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb/b<",
            "Lcom/miui/permcenter/detection/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/miui/common/customview/AutoPasteRecyclerView;

.field private q:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/permcenter/detection/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lub/b;

.field private t:Lub/d;

.field private u:Lub/c;

.field private v:Lub/e;

.field private w:Luc/b;

.field private x:Lub/a;

.field private y:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->N:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z:Ljava/util/List;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$h;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->G:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$l;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$l;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$k;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$f;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->J:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$g;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$g;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->K:Lbc/a$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$e;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$e;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->L:Luc/b$a;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$i;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->M:Ltb/b$d;

    return-void
.end method

.method static synthetic A0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->O0()V

    return-void
.end method

.method static synthetic B0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic C0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic D0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->Z0(Z)V

    return-void
.end method

.method static synthetic E0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    return p0
.end method

.method static synthetic F0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    return p1
.end method

.method static synthetic G0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    return-object p0
.end method

.method static synthetic I0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/common/customview/AutoPasteRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    return-object p0
.end method

.method static synthetic J0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->D:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;

    return-object p0
.end method

.method private K0(I)V
    .locals 3

    const/16 v0, 0xb

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    invoke-static {p0, p1}, Lcom/miui/permcenter/detection/model/d;->h(Landroid/content/Context;I)Lcom/miui/permcenter/detection/model/d;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-direct {p0, v2}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->R0([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lsb/c;->setState(I)V

    new-instance p1, Lub/b;

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->K:Lbc/a$a;

    invoke-direct {p1, p0, v0}, Lub/b;-><init>(Landroid/content/Context;Lbc/a$a;)V

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->s:Lub/b;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private L0()V
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0ae4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071de5    # 1.79601E38f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private M0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07196d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private N0()V
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/miui/permcenter/detection/model/b;

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/detection/model/b;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/permcenter/detection/model/b;

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Lcom/miui/permcenter/detection/model/d;->e(Landroid/content/Context;[Lcom/miui/permcenter/detection/model/b;)Lcom/miui/permcenter/detection/model/d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/16 v3, 0x16

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->c(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->e(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->d(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/permcenter/detection/model/e;

    invoke-direct {v2}, Lcom/miui/permcenter/detection/model/e;-><init>()V

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v2, v1}, Ltb/b;->r(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->Z0(Z)V

    return-void
.end method

.method private O0()V
    .locals 9

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    invoke-interface {v0}, Lsb/c;->stop()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-interface {v1, v3}, Lsb/c;->b([F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d:Landroid/widget/ImageView;

    const v8, 0x3fdae148    # 1.71f

    if-eqz v3, :cond_0

    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Llb/a;->h()V

    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v4, v3}, Llb/a;->g(FF)V

    new-instance v3, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$p;

    invoke-direct {v3, p0, v8}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$p;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;F)V

    invoke-static {v3}, Llb/a;->c(Llb/a$c;)V

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v8, "alpha"

    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    const/4 v1, 0x1

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private Q0(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xf

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xe

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xc

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xb

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v0, p1}, Ltb/b;->m(I)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs R0([I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v3, p1, v0

    iget-object v4, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    if-nez v0, :cond_3

    const p1, 0x7f1214dd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p1, 0x7f100119

    invoke-static {p0, p1, v0}, Lsb/b;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private varargs S0([I)I
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const p1, 0x7f080f12

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f080f13

    return p1
.end method

.method private T0(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v0, p1}, Ltb/b;->q(I)V

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {p1}, Ltb/b;->n()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b1()V

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p0}, Lsb/b;->b(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-static {}, Lx4/a0;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070683

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07089d

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    iget v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    invoke-virtual {p1, v0}, Ltb/b;->s(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f10011a

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v1}, Ltb/b;->n()I

    move-result v1

    invoke-static {p1, v0, v1}, Lsb/b;->c(Landroid/widget/TextView;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private U0()V
    .locals 3

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->y:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_mi_ime_opened"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->y:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private V0()V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetResult mScrollY = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Privacy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    if-gt v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v2

    int-to-float v0, v0

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private Y0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltb/b;->r(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    new-instance v1, Luc/b;

    invoke-direct {v1}, Luc/b;-><init>()V

    iput-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->L:Luc/b$a;

    invoke-virtual {v1, v2}, Luc/b;->d(Luc/b$a;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lub/c;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->I:Lbc/a$a;

    invoke-direct {v1, v2}, Lub/c;-><init>(Lbc/a$a;)V

    iput-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->u:Lub/c;

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lub/d;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H:Lbc/a$a;

    invoke-direct {v1, p0, v2}, Lub/d;-><init>(Landroid/content/Context;Lbc/a$a;)V

    iput-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->t:Lub/d;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private Z0(Z)V
    .locals 2

    iget v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->a1()V

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->v:Lub/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->s:Lub/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->u:Lub/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->t:Lub/d;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_5
    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    invoke-virtual {p1}, Luc/b;->c()V

    :cond_6
    return-void
.end method

.method private a1()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b1()V

    sget-object v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->N:Landroid/os/Handler;

    new-instance v1, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$c;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b1()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->setHorizontalPadding(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v2}, Ltb/b;->n()I

    move-result v2

    if-lez v2, :cond_1

    const v2, 0x7f0602cd

    goto :goto_0

    :cond_1
    const v2, 0x7f0602cc

    :goto_0
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x4

    invoke-static {v0}, Lsb/a;->t(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f1214d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    const v1, 0x7f0805d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->c(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->e(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/permcenter/detection/model/c;->d(Landroid/content/Context;)Lcom/miui/permcenter/detection/model/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/permcenter/detection/model/e;

    invoke-direct {v2}, Lcom/miui/permcenter/detection/model/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v1, v0}, Ltb/b;->r(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v0}, Ltb/b;->n()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    const v1, 0x7f0805d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f10011a

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v3}, Ltb/b;->n()I

    move-result v3

    invoke-static {v0, v1, v3}, Lsb/b;->c(Landroid/widget/TextView;II)V

    invoke-static {v2}, Lsb/a;->t(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    const v2, 0x7f1214e8

    goto :goto_1

    :cond_4
    const v2, 0x7f1214e7

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f0805d2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x3

    :cond_5
    invoke-static {v1}, Lsb/a;->t(I)V

    :goto_2
    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->V0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->B:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->l:I

    return p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->r:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->u:Lub/c;

    return-object p0
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0b090f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->a:Landroid/view/View;

    const v0, 0x7f0b0900

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0b08fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const v2, 0x7f0b0d86

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    invoke-static {}, Lx4/a0;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07197a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    const v2, 0x7f0e0511

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v2, 0x7f0e0513

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071979

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07197c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->n:I

    const v2, 0x7f0e0510

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v2, 0x7f0e0512

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071e6b

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0707

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsb/c;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    const v0, 0x7f0b0708

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b05f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b0989

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b0ce4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    const v1, 0x7f0b08b7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    const v1, 0x7f0b0903

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    const v1, 0x7f0b00f8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->g:Ljava/util/List;

    const v1, 0x7f0b08b8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->g:Ljava/util/List;

    const v1, 0x7f0b0904

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->g:Ljava/util/List;

    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    const v1, 0x7f0b08b6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    const v1, 0x7f0b08fa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    const v1, 0x7f0b00ef

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const v0, 0x7f0b01c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalMargin(Landroid/view/View;)V

    const v0, 0x7f0b09a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalMargin(Landroid/view/View;)V

    const v0, 0x7f0b09a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteRecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-static {p0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->L0()V

    :cond_1
    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$o;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->C:Landroidx/recyclerview/widget/z;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->D:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$j;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$j;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$n;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$n;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->F:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

    new-instance v0, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->q:Lcom/miui/permcenter/detection/OffsetLinearLayoutManager;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Ltb/b;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->M:Ltb/b$d;

    invoke-direct {v0, v1}, Ltb/b;-><init>(Ltb/b$d;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->F:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteRecyclerView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteRecyclerView$c;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->C:Landroidx/recyclerview/widget/z;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {v0, p0}, Lwb/a;->k(Lwb/b;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteRecyclerView;->setAlignItemIndex(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f080f00

    invoke-static {v0, v1}, Lvc/b;->b(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lsb/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->R0([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;[I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->S0([I)I

    move-result p0

    return p0
.end method

.method static synthetic o0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->N0()V

    return-void
.end method

.method static synthetic q0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->x:Lub/a;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lub/a;)Lub/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->x:Lub/a;

    return-object p1
.end method

.method static synthetic s0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lbc/a$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->J:Lbc/a$a;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lub/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->v:Lub/e;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Lub/e;)Lub/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->v:Lub/e;

    return-object p1
.end method

.method static synthetic v0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Lbc/a$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->G:Lbc/a$a;

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->A:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->A:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic y0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->K0(I)V

    return-void
.end method

.method static synthetic z0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->T0(I)V

    return-void
.end method


# virtual methods
.method public P0()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-static {v0, v1, v2}, Leg/t;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lsb/b;->b(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->D:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$m;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public W0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    invoke-interface {v0}, Lsb/c;->a()V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->j:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->a:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->p:Lcom/miui/common/customview/AutoPasteRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->Y0()V

    return-void
.end method

.method public X0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1214d0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1214cf

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$a;-><init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V

    const v2, 0x7f1214ce

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->B:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->Q0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->T0(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->L0()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->M0()V

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->o:Ltb/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0e003f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lpg/i;->b(Landroid/app/Activity;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->U0()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->Y0()V

    invoke-static {}, Lsb/a;->s()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->c:Lsb/c;

    invoke-interface {v0}, Lsb/c;->release()V

    sget-object v0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->N:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {}, Llb/a;->f()V

    invoke-static {}, Llb/a;->e()V

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->y:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->v:Lub/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->s:Lub/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->u:Lub/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->t:Lub/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_5
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->w:Luc/b;

    invoke-virtual {v0}, Luc/b;->c()V

    :cond_6
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "1127.20.6.1.28285"

    invoke-static {v0}, Lmb/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isTabletSpitModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0716b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
