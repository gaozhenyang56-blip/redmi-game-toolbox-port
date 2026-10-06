.class public Lfe/j;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/j$i;,
        Lfe/j$f;,
        Lfe/j$g;,
        Lfe/j$h;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lw4/e;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfe/j;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfe/j;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfe/j;->e:Ljava/util/List;

    new-instance v0, Lfe/j$a;

    invoke-direct {v0, p0}, Lfe/j$a;-><init>(Lfe/j;)V

    iput-object v0, p0, Lfe/j;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lfe/j$b;

    invoke-direct {v0, p0}, Lfe/j$b;-><init>(Lfe/j;)V

    iput-object v0, p0, Lfe/j;->j:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lfe/j;->b:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lfe/j;->f:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lfe/j;->g:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lfe/j;->h:I

    return-void
.end method

.method static synthetic k(Lfe/j;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0, p1}, Lfe/j;->s(Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic l(Lfe/j;)Lw4/e;
    .locals 0

    iget-object p0, p0, Lfe/j;->c:Lw4/e;

    return-object p0
.end method

.method static synthetic m(Lfe/j;)Z
    .locals 0

    iget-boolean p0, p0, Lfe/j;->d:Z

    return p0
.end method

.method static synthetic n(Lfe/j;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfe/j;->e:Ljava/util/List;

    return-object p0
.end method

.method private o(Lfe/g;Landroid/widget/CheckBox;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lfe/j;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212c4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1212c6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lfe/j;->b:Landroid/content/Context;

    const v2, 0x7f1212c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfe/j$e;

    invoke-direct {v2, p0, p2, p1}, Lfe/j$e;-><init>(Lfe/j;Landroid/widget/CheckBox;Lfe/g;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lfe/j$d;

    invoke-direct {v1, p0, p2, p1}, Lfe/j$d;-><init>(Lfe/j;Landroid/widget/CheckBox;Lfe/g;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lfe/j$c;

    invoke-direct {v1, p0, p2, p1}, Lfe/j$c;-><init>(Lfe/j;Landroid/widget/CheckBox;Lfe/g;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private s(Landroid/widget/CheckBox;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/g;

    if-eqz v0, :cond_0

    iget v0, v1, Lfe/g;->a:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p1}, Lfe/j;->o(Lfe/g;Landroid/widget/CheckBox;)V

    return-void

    :cond_0
    iget v0, v1, Lfe/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lfe/p;->b(Ljava/lang/Object;Z)V

    iget-object v0, v1, Lfe/g;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhe/a;

    iget-object v1, v1, Lhe/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lfe/p;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private t(I)I
    .locals 3

    iget-object v0, p0, Lfe/j;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lfe/j;->p(I)I

    move-result v0

    iget-object v1, p0, Lfe/j;->g:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method private u()I
    .locals 1

    iget v0, p0, Lfe/j;->h:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lfe/j;->q()I

    move-result v0

    iput v0, p0, Lfe/j;->h:I

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 2

    iget-object v0, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfe/g;

    invoke-virtual {p1}, Lfe/g;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfe/g;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lfe/g;->b()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfe/g;

    invoke-virtual {p1}, Lfe/g;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lfe/g;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-virtual {p0, p2}, Lfe/j;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfe/g;

    invoke-virtual {p0, p2}, Lfe/j;->r(I)I

    move-result v2

    iget-object v3, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfe/h;

    invoke-virtual {v3}, Lfe/h;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    check-cast p1, Lfe/j$f;

    iget-object p1, p1, Lfe/j$f;->a:Landroid/widget/TextView;

    iget-object p2, v1, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_9

    check-cast p1, Lfe/j$i;

    iget-object v0, p1, Lfe/j$i;->a:Landroid/widget/TextView;

    iget-object v6, v1, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lfe/j$i;->h:Landroid/widget/TextView;

    iget-object v6, v1, Lfe/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lfe/j$h;

    invoke-direct {v0}, Lfe/j$h;-><init>()V

    iput v2, v0, Lfe/j$h;->a:I

    iput p2, v0, Lfe/j$h;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder taskName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lfe/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",getTaskType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lfe/g;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lfe/g;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OptimizeTaskListAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-nez v3, :cond_6

    iget-object v3, p1, Lfe/j$i;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    iget-object v3, p0, Lfe/j;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    invoke-static {p2, v1}, Lfe/i;->b(Landroid/content/Context;Lfe/g;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-lez p2, :cond_1

    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    invoke-static {p2, v5, v6}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p1, Lfe/j$i;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lfe/j$i;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lfe/j$i;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget p2, v1, Lfe/g;->a:I

    const/16 v3, 0xd

    if-eq p2, v3, :cond_2

    iget-object p2, p1, Lfe/j$i;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lfe/j;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p2, p1, Lfe/j$i;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lfe/j;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lfe/j$i;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lfe/g;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lfe/g;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    invoke-virtual {v1, v2}, Lfe/g;->f(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lfe/g;->d()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v1}, Lfe/g;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    :goto_2
    iget p2, v1, Lfe/g;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lfe/p;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    :cond_6
    iget-object v3, p1, Lfe/j$i;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lfe/j$i;->c:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p1, Lfe/j$i;->f:Landroid/widget/ImageView;

    const v3, 0x7f080f11

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Lfe/j$i;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lfe/j$i;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_3
    iget-object p2, v1, Lfe/g;->c:Ljava/lang/Object;

    if-eqz p2, :cond_8

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    iget-object p2, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071799

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0, v3, p2, v4, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    new-instance p2, Lfe/e;

    iget-object v0, p0, Lfe/j;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lfe/e;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lfe/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Lfe/e;->a(Ljava/util/List;)V

    iget-object p1, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5

    :cond_8
    :goto_4
    iget-object p2, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget-object p1, p1, Lfe/j$i;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    invoke-virtual {p2, v0, v2, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_9
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    const v0, 0x7f0e040a

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lfe/j$g;

    invoke-direct {p2, p0, p1}, Lfe/j$g;-><init>(Lfe/j;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    const v0, 0x7f0e03ea

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lfe/j$f;

    invoke-direct {p2, p0, p1}, Lfe/j$f;-><init>(Lfe/j;Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lfe/j;->b:Landroid/content/Context;

    const v0, 0x7f0e0403

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lfe/j$i;

    invoke-direct {p2, p0, p1}, Lfe/j$i;-><init>(Lfe/j;Landroid/view/View;)V

    return-object p2
.end method

.method public p(I)I
    .locals 1

    iget-object v0, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfe/h;

    invoke-virtual {p1}, Lfe/h;->b()I

    move-result p1

    return p1
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final r(I)I
    .locals 4

    iget-object v0, p0, Lfe/j;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lfe/j;->u()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-direct {p0, v1}, Lfe/j;->t(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    iget-object v0, p0, Lfe/j;->f:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method public v(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lfe/j;->c:Lw4/e;

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lfe/j;->d:Z

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfe/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lfe/j;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance p1, Lfe/g;

    invoke-direct {p1}, Lfe/g;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfe/g;->h(I)V

    iget-object v0, p0, Lfe/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfe/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/h;

    iget-object v1, p0, Lfe/j;->e:Ljava/util/List;

    invoke-virtual {v0}, Lfe/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
