.class public Lcom/miui/autotask/view/RecyclerViewPreference;
.super Lcom/miui/autotask/view/AutoTaskPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/view/RecyclerViewPreference$d;,
        Lcom/miui/autotask/view/RecyclerViewPreference$b;,
        Lcom/miui/autotask/view/RecyclerViewPreference$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lr3/q;

.field private d:Lcom/miui/autotask/fragment/NewTaskFragment$d;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/miui/autotask/view/RecyclerViewPreference$c;

.field private j:Lr3/q$a;

.field private k:Lcom/miui/autotask/view/RecyclerViewPreference$d;

.field private l:Lcom/miui/autotask/view/RecyclerViewPreference$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    new-instance v0, Lr3/q;

    invoke-direct {v0, p1}, Lr3/q;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    new-instance p1, Lcom/miui/autotask/view/RecyclerViewPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/autotask/view/RecyclerViewPreference$a;-><init>(Lcom/miui/autotask/view/RecyclerViewPreference;)V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->j:Lr3/q$a;

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    new-instance p2, Lr3/q;

    invoke-direct {p2, p1}, Lr3/q;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    new-instance p1, Lcom/miui/autotask/view/RecyclerViewPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/autotask/view/RecyclerViewPreference$a;-><init>(Lcom/miui/autotask/view/RecyclerViewPreference;)V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->j:Lr3/q$a;

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    new-instance p2, Lr3/q;

    invoke-direct {p2, p1}, Lr3/q;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    new-instance p1, Lcom/miui/autotask/view/RecyclerViewPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/autotask/view/RecyclerViewPreference$a;-><init>(Lcom/miui/autotask/view/RecyclerViewPreference;)V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->j:Lr3/q$a;

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->v()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/autotask/view/AutoTaskPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    new-instance p2, Lr3/q;

    invoke-direct {p2, p1}, Lr3/q;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    new-instance p1, Lcom/miui/autotask/view/RecyclerViewPreference$a;

    invoke-direct {p1, p0}, Lcom/miui/autotask/view/RecyclerViewPreference$a;-><init>(Lcom/miui/autotask/view/RecyclerViewPreference;)V

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->j:Lr3/q$a;

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->v()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->k:Lcom/miui/autotask/view/RecyclerViewPreference$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->u()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/autotask/view/RecyclerViewPreference$d;->a(I)V

    :cond_0
    return-void
.end method

.method private F(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/taskitem/DefaultTaskItem;->w(Z)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/miui/autotask/view/RecyclerViewPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/autotask/view/RecyclerViewPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->A()V

    return-void
.end method

.method static synthetic g(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/fragment/NewTaskFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->d:Lcom/miui/autotask/fragment/NewTaskFragment$d;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/autotask/view/RecyclerViewPreference;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    return p1
.end method

.method static synthetic i(Lcom/miui/autotask/view/RecyclerViewPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->i:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/autotask/view/RecyclerViewPreference;)Lr3/q;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->l:Lcom/miui/autotask/view/RecyclerViewPreference$b;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/autotask/view/RecyclerViewPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    return p0
.end method

.method static synthetic n(Lcom/miui/autotask/view/RecyclerViewPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->F(Z)V

    return-void
.end method

.method private v()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    return-void
.end method

.method private w()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_exit_condition_list"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public B(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->a:Landroid/app/Activity;

    return-void
.end method

.method public C(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->F(Z)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    return-void
.end method

.method public G(Lcom/miui/autotask/view/RecyclerViewPreference$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->l:Lcom/miui/autotask/view/RecyclerViewPreference$b;

    return-void
.end method

.method public H(Lcom/miui/autotask/view/RecyclerViewPreference$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->i:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    return-void
.end method

.method public I(Lcom/miui/autotask/view/RecyclerViewPreference$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->k:Lcom/miui/autotask/view/RecyclerViewPreference$d;

    return-void
.end method

.method public J(Lcom/miui/autotask/fragment/NewTaskFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->d:Lcom/miui/autotask/fragment/NewTaskFragment$d;

    return-void
.end method

.method public o(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-static {p1, v0}, La4/f2;->e(Lcom/miui/autotask/taskitem/TaskItem;Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->i:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    invoke-interface {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/autotask/view/AutoTaskPreference;->onBindViewHolder(Landroidx/preference/h;)V

    const v0, 0x7f0b05c2

    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget-boolean v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->g:Z

    invoke-virtual {v1, v2}, Lr3/q;->q(Z)V

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget-boolean v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    invoke-virtual {v1, v2}, Lr3/q;->p(Z)V

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget-boolean v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    invoke-virtual {v1, v2}, Lr3/q;->r(Z)V

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->j:Lr3/q$a;

    invoke-virtual {v1, v2}, Lr3/q;->s(Lr3/q$a;)V

    iget-boolean v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/autotask/taskitem/DefaultConditionItem;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/autotask/taskitem/DefaultResultItem;

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La4/f2;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_condition_list"

    goto :goto_0

    :cond_1
    const-string v1, "key_result_list"

    :goto_0
    invoke-static {v1}, La4/f2;->B(Ljava/lang/String;)Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    invoke-virtual {v2, v0}, Lcom/miui/autotask/taskitem/DefaultTaskItem;->w(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->A()V

    :cond_3
    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public q()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public r(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v3, p1}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public s(I)Lcom/miui/autotask/taskitem/TaskItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/TaskItem;

    return-object p1
.end method

.method public u()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public x(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public y(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    return-void

    :cond_0
    const-string p2, "taskItem"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of p3, p2, Lcom/miui/autotask/taskitem/TaskItem;

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    if-eqz p1, :cond_2

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {p0, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->o(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void

    :cond_2
    iget p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    if-ltz p1, :cond_a

    iget-boolean v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_a

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    iget p3, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    iget p3, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iput v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->e:I

    goto/16 :goto_4

    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p3, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->F(Z)V

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    :goto_1
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->h:Z

    if-eqz p1, :cond_8

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-static {p2}, La4/f2;->t(Lcom/miui/autotask/taskitem/TaskItem;)Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1, p3}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    iget-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    iget-object p2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :goto_3
    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->A()V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public z(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, La4/f2;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {p1, v1}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference;->c:Lr3/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/autotask/view/RecyclerViewPreference;->A()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
