.class public final Lyc/j;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWakePathAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakePathAdapter.kt\ncom/miui/permcenter/wakepath/WakePathAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,201:1\n256#2,2:202\n*S KotlinDebug\n*F\n+ 1 WakePathAdapter.kt\ncom/miui/permcenter/wakepath/WakePathAdapter\n*L\n120#1:202,2\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lyc/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Lyc/r;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Lyc/r;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyc/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyc/j$a;-><init>(Lbk/g;)V

    sput-object v0, Lyc/j;->g:Lyc/j$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/permcenter/wakepath/WakePathManagerActivity;Ljava/util/ArrayList;ZLak/l;Lak/l;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1    # Lcom/miui/permcenter/wakepath/WakePathManagerActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/wakepath/WakePathManagerActivity;",
            "Ljava/util/ArrayList<",
            "Lyc/r;",
            ">;Z",
            "Lak/l<",
            "-",
            "Lyc/r;",
            "Loj/t;",
            ">;",
            "Lak/l<",
            "-",
            "Lyc/r;",
            "Loj/t;",
            ">;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    iput-object p2, p0, Lyc/j;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lyc/j;->c:Z

    iput-object p4, p0, Lyc/j;->d:Lak/l;

    iput-object p5, p0, Lyc/j;->e:Lak/l;

    iput-object p6, p0, Lyc/j;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/permcenter/wakepath/WakePathManagerActivity;Ljava/util/ArrayList;ZLak/l;Lak/l;Landroid/widget/CompoundButton$OnCheckedChangeListener;ILbk/g;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v3, p3

    and-int/lit8 p2, p7, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move-object v4, p3

    goto :goto_0

    :cond_2
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move-object v5, p3

    goto :goto_1

    :cond_3
    move-object v5, p5

    :goto_1
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move-object v6, p3

    goto :goto_2

    :cond_4
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lyc/j;-><init>(Lcom/miui/permcenter/wakepath/WakePathManagerActivity;Ljava/util/ArrayList;ZLak/l;Lak/l;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic k(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyc/j;->n(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lyc/j;Lyc/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyc/j;->p(Lyc/j;Lyc/r;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lyc/j;Lyc/r;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lyc/j;->o(Lyc/j;Lyc/r;Landroid/view/View;)V

    return-void
.end method

.method private static final n(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;Landroid/view/View;)V
    .locals 2

    const-string p2, "$holder"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/a;

    invoke-virtual {p0}, Lyc/a;->b()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p0}, Lyc/a;->b()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p1, Lyc/j;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyc/a;->b()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p0

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p0, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private static final o(Lyc/j;Lyc/r;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$info"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/j;->d:Lak/l;

    invoke-interface {p0, p1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final p(Lyc/j;Lyc/r;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$info"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/j;->e:Lak/l;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic r(Lyc/j;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lyc/j;->q(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 3

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "data[position]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lyc/r;

    invoke-virtual {p1}, Lyc/r;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyc/r;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lyc/r;->m()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lyc/r;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :cond_3
    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "data[position]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lyc/r;

    invoke-virtual {p1}, Lyc/r;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyc/r;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyc/r;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lyc/r;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v2, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v4, "holder.itemView"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lxc/v$a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "data[position]"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lyc/r;

    instance-of v2, p1, Lyc/a;

    const-string v3, "format(format, *args)"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    move-object p2, p1

    check-cast p2, Lyc/a;

    invoke-virtual {p2}, Lyc/a;->a()Landroid/widget/TextView;

    move-result-object p2

    sget-object v2, Lbk/b0;->a:Lbk/b0;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f121bcd

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "holder.itemView.context.\u2026th_manager_checkbox_desc)"

    invoke-static {v2, v6}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p2, p1

    check-cast p2, Lyc/a;

    invoke-virtual {p2}, Lyc/a;->b()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p2

    invoke-virtual {v0}, Lyc/r;->h()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lyc/r;->h()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {p2, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lyc/j;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lyc/g;

    invoke-direct {v0, p1, p0}, Lyc/g;-><init>(Landroidx/recyclerview/widget/RecyclerView$c0;Lyc/j;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_4
    instance-of v2, p1, Lyc/d;

    if-eqz v2, :cond_5

    check-cast p1, Lyc/d;

    invoke-virtual {p1}, Lyc/d;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyc/r;

    invoke-virtual {p2}, Lyc/r;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_5
    instance-of p2, p1, Lyc/e;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lyc/j;->d:Lak/l;

    if-eqz p2, :cond_6

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Lyc/h;

    invoke-direct {v2, p0, v0}, Lyc/h;-><init>(Lyc/j;Lyc/r;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object p2

    move-object v2, p1

    check-cast v2, Lyc/e;

    invoke-virtual {v2}, Lyc/e;->b()Landroid/widget/ImageView;

    move-result-object v6

    iget-boolean v7, p0, Lyc/j;->c:Z

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lyc/r;->b()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {p2, v6, v7}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-boolean p2, p0, Lyc/j;->c:Z

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lyc/r;->h()I

    move-result p2

    if-ne p2, v1, :cond_8

    invoke-virtual {v2}, Lyc/e;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lyc/e;->a()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lyc/e;->a()Landroid/widget/TextView;

    move-result-object p2

    sget-object v4, Lbk/b0;->a:Lbk/b0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f100149

    invoke-virtual {v0}, Lyc/r;->g()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "holder.itemView.context.\u2026rt_app_count, info.count)"

    invoke-static {p1, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lyc/r;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v2}, Lyc/e;->c()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Lyc/r;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lyc/e;->e()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080c59

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v2}, Lyc/e;->a()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lyc/e;->c()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lyc/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lyc/e;->d()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lyc/e;->d()Landroid/view/View;

    move-result-object p2

    new-instance v2, Lyc/i;

    invoke-direct {v2, p0, v0}, Lyc/i;-><init>(Lyc/j;Lyc/r;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    invoke-virtual {p2}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    if-eqz p2, :cond_a

    const p2, 0x7f0607a6

    goto :goto_5

    :cond_a
    const p2, 0x7f0607a7

    :goto_5
    new-array v0, v1, [Landroid/view/View;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    aput-object v2, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-array v3, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v2, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-interface {v0, p2}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    invoke-interface {p2, v1}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    check-cast p1, Lyc/e;

    invoke-virtual {p1}, Lyc/e;->d()Landroid/view/View;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, v0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    iget-object p2, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    invoke-virtual {p2}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    invoke-virtual {p1}, Lyc/e;->e()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p2, :cond_b

    const p2, 0x7f080beb

    goto :goto_4

    :cond_b
    const p2, 0x7f080bec

    goto/16 :goto_4

    :cond_c
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    new-instance p2, Lyc/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0447

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026path_item, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lyc/e;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lyc/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026mpty_tips, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lyc/b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lyc/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e02aa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026or_header, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lyc/d;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lyc/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e043a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026s_divider, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lyc/f;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lyc/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e044c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026ox_layout, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lyc/a;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public final q(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "allowListInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rejectListInfo"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calleeListInfo"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lyc/j;->c:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lyc/j;->b:Ljava/util/ArrayList;

    new-instance v10, Lyc/r;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x5f

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lyc/j;->b:Ljava/util/ArrayList;

    new-instance v10, Lyc/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    const v3, 0x7f121bcb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "activity.getString(R.str\u2026epath_manager_allow_list)"

    invoke-static {v3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x79

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p3, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_3

    iget-object p1, p0, Lyc/j;->b:Ljava/util/ArrayList;

    new-instance p3, Lyc/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p4, p0, Lyc/j;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity;

    const v0, 0x7f121bd0

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p4, "activity.getString(R.str\u2026path_manager_reject_list)"

    invoke-static {v3, p4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x79

    const/4 v9, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v9}, Lyc/r;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZZIILbk/g;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lyc/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
