.class public Lr3/o;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/o$a;,
        Lr3/o$g;,
        Lr3/o$c;,
        Lr3/o$f;,
        Lr3/o$b;,
        Lr3/o$d;,
        Lr3/o$e;,
        Lr3/o$i;,
        Lr3/o$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lr3/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lr3/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lr3/o;->b:Ljava/util/List;

    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    return-void
.end method

.method private static synthetic A(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic B(Lr3/o$f;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lr3/o;->c:Lr3/o$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lr3/o$a;->c(I)V

    :cond_0
    return-void
.end method

.method private synthetic C(Lr3/o$f;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lr3/o;->c:Lr3/o$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lr3/o$a;->b(I)V

    :cond_0
    return-void
.end method

.method private synthetic D(Lr3/o$g;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    iget-object p2, p0, Lr3/o;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/j;

    invoke-virtual {p2, p3}, Lcom/miui/autotask/bean/j;->d(Z)V

    iget-object p2, p0, Lr3/o;->c:Lr3/o$a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3}, Lr3/o$a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic k(Lr3/o;Lr3/o$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/o;->C(Lr3/o$f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lr3/o;Lr3/o$f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/o;->B(Lr3/o$f;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lr3/o;Lr3/o$g;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/o;->D(Lr3/o$g;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n(Lr3/o;Lcom/miui/autotask/bean/e;Lr3/o$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/o;->z(Lcom/miui/autotask/bean/e;Lr3/o$c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lr3/o;Lr3/o$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/o;->y(Lr3/o$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lr3/o;->A(Landroid/view/View;)V

    return-void
.end method

.method static synthetic q(Lr3/o;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr3/o;->b:Ljava/util/List;

    return-object p0
.end method

.method private r(Lr3/o$i;Lcom/miui/autotask/bean/k;)V
    .locals 2

    invoke-static {p1}, Lr3/o$i;->a(Lr3/o$i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/bean/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lr3/o$i;->b(Lr3/o$i;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/k;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private s(Lr3/o$b;Lcom/miui/autotask/bean/d;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lr3/i;

    invoke-direct {v1, p0, p1}, Lr3/i;-><init>(Lr3/o;Lr3/o$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lr3/o$b;->a(Lr3/o$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lr3/o$b;->b(Lr3/o$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1}, Lr3/o$b;->c(Lr3/o$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    invoke-static {p1}, Lr3/o$b;->c(Lr3/o$b;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lr3/o$b;->c(Lr3/o$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f060dbc

    goto :goto_1

    :cond_2
    const p2, 0x7f060db5

    :goto_1
    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lr3/o$b;->c(Lr3/o$b;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_0

    :goto_2
    return-void
.end method

.method private t(Lr3/o$c;Lcom/miui/autotask/bean/e;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lr3/n;

    invoke-direct {v1, p0, p2, p1}, Lr3/n;-><init>(Lr3/o;Lcom/miui/autotask/bean/e;Lr3/o$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lr3/o$c;->a(Lr3/o$c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lr3/o$c;->b(Lr3/o$c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1}, Lr3/o$c;->c(Lr3/o$c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    invoke-static {p1}, Lr3/o$c;->c(Lr3/o$c;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lr3/o$c;->c(Lr3/o$c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f060dbc

    goto :goto_1

    :cond_2
    const p2, 0x7f060db5

    :goto_1
    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lr3/o$c;->c(Lr3/o$c;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_0

    :goto_2
    return-void
.end method

.method private u(Lr3/o$d;Lcom/miui/autotask/bean/g;)V
    .locals 0

    invoke-static {p1}, Lr3/o$d;->a(Lr3/o$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/g;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private v(Lr3/o$e;Lcom/miui/autotask/bean/h;)V
    .locals 3

    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lr3/o$h;

    if-eqz v1, :cond_0

    check-cast v0, Lr3/o$h;

    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Lr3/o$h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lr3/o$h;->b(Lr3/o$e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr3/o$h;

    invoke-direct {v0, p0, p1}, Lr3/o$h;-><init>(Lr3/o;Lr3/o$e;)V

    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lr3/o$e;->b(Lr3/o$e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Lr3/o$e;->a(Lr3/o$e;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lr3/k;

    invoke-direct {p2}, Lr3/k;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private w(Lr3/o$f;Lcom/miui/autotask/bean/i;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lr3/l;

    invoke-direct {v1, p0, p1}, Lr3/l;-><init>(Lr3/o;Lr3/o$f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lr3/o$f;->d(Lr3/o$f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lr3/o$f;->a(Lr3/o$f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lr3/o$f;->b(Lr3/o$f;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of p2, p2, Lcom/miui/autotask/taskitem/DefaultResultItem;

    invoke-static {p1}, Lr3/o$f;->c(Lr3/o$f;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lr3/o;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/autotask/bean/g;

    invoke-static {p1}, Lr3/o$f;->b(Lr3/o$f;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-static {p1}, Lr3/o$f;->b(Lr3/o$f;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lr3/o$f;->c(Lr3/o$f;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Lr3/m;

    invoke-direct {v0, p0, p1}, Lr3/m;-><init>(Lr3/o;Lr3/o$f;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x(Lr3/o$g;Lcom/miui/autotask/bean/j;)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/autotask/bean/j;->c()Z

    move-result v0

    invoke-static {p1}, Lr3/o$g;->a(Lr3/o$g;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lr3/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v3, 0x7f060dbd

    goto :goto_0

    :cond_0
    const v3, 0x7f060dbe

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lr3/o$g;->b(Lr3/o$g;)Lmiuix/slidingwidget/widget/SlidingSwitch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p1}, Lr3/o$g;->b(Lr3/o$g;)Lmiuix/slidingwidget/widget/SlidingSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lr3/o$g;->b(Lr3/o$g;)Lmiuix/slidingwidget/widget/SlidingSwitch;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/bean/j;->b()Z

    move-result p2

    invoke-virtual {v0, p2}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    invoke-static {p1}, Lr3/o$g;->b(Lr3/o$g;)Lmiuix/slidingwidget/widget/SlidingSwitch;

    move-result-object p2

    new-instance v0, Lr3/j;

    invoke-direct {v0, p0, p1}, Lr3/j;-><init>(Lr3/o;Lr3/o$g;)V

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic y(Lr3/o$b;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lr3/o;->c:Lr3/o$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lr3/o$a;->d(I)V

    :cond_0
    return-void
.end method

.method private synthetic z(Lcom/miui/autotask/bean/e;Lr3/o$c;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lr3/o;->c:Lr3/o$a;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr3/o;->c:Lr3/o$a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lr3/o$a;->d(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public E(Lr3/o$a;)V
    .locals 0

    iput-object p1, p0, Lr3/o;->c:Lr3/o$a;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lr3/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lr3/o;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0xdf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xe4

    if-ne p1, v0, :cond_1

    const/16 p1, 0xe5

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lr3/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/c;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/c;->a()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lr3/o;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/c;

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lr3/o$i;

    if-eqz v0, :cond_1

    check-cast p1, Lr3/o$i;

    check-cast p2, Lcom/miui/autotask/bean/k;

    invoke-direct {p0, p1, p2}, Lr3/o;->r(Lr3/o$i;Lcom/miui/autotask/bean/k;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lr3/o$e;

    if-eqz v0, :cond_2

    check-cast p1, Lr3/o$e;

    check-cast p2, Lcom/miui/autotask/bean/h;

    invoke-direct {p0, p1, p2}, Lr3/o;->v(Lr3/o$e;Lcom/miui/autotask/bean/h;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lr3/o$d;

    if-eqz v0, :cond_3

    check-cast p1, Lr3/o$d;

    check-cast p2, Lcom/miui/autotask/bean/g;

    invoke-direct {p0, p1, p2}, Lr3/o;->u(Lr3/o$d;Lcom/miui/autotask/bean/g;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lr3/o$b;

    if-eqz v0, :cond_4

    check-cast p1, Lr3/o$b;

    check-cast p2, Lcom/miui/autotask/bean/d;

    invoke-direct {p0, p1, p2}, Lr3/o;->s(Lr3/o$b;Lcom/miui/autotask/bean/d;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lr3/o$f;

    if-eqz v0, :cond_5

    check-cast p1, Lr3/o$f;

    check-cast p2, Lcom/miui/autotask/bean/i;

    invoke-direct {p0, p1, p2}, Lr3/o;->w(Lr3/o$f;Lcom/miui/autotask/bean/i;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lr3/o$g;

    if-eqz v0, :cond_6

    check-cast p1, Lr3/o$g;

    check-cast p2, Lcom/miui/autotask/bean/j;

    invoke-direct {p0, p1, p2}, Lr3/o;->x(Lr3/o$g;Lcom/miui/autotask/bean/j;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lr3/o$c;

    if-eqz v0, :cond_7

    check-cast p1, Lr3/o$c;

    check-cast p2, Lcom/miui/autotask/bean/e;

    invoke-direct {p0, p1, p2}, Lr3/o;->t(Lr3/o$c;Lcom/miui/autotask/bean/e;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0113

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$d;

    invoke-direct {p2, p1}, Lr3/o$d;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_1
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0112

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$c;

    invoke-direct {p2, p1}, Lr3/o$c;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_2
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0116

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$g;

    invoke-direct {p2, p1}, Lr3/o$g;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_3
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0115

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$f;

    invoke-direct {p2, p1}, Lr3/o$f;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_4
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0111

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$b;

    invoke-direct {p2, p1}, Lr3/o$b;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_5
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0114

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$e;

    invoke-direct {p2, p1}, Lr3/o$e;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_6
    iget-object p2, p0, Lr3/o;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e0117

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/o$i;

    invoke-direct {p2, p1}, Lr3/o$i;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xdf
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
