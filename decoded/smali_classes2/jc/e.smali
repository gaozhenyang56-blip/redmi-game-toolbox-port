.class public final Ljc/e;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljc/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljc/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lmiuix/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljc/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljc/c;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljc/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljc/e$a;-><init>(Lbk/g;)V

    sput-object v0, Ljc/e;->g:Ljc/e$a;

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Z)V
    .locals 1
    .param p1    # Lmiuix/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    iput-boolean p2, p0, Ljc/e;->b:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljc/e;->c:Ljava/util/ArrayList;

    new-instance p1, Ljc/d;

    invoke-direct {p1, p0}, Ljc/d;-><init>(Ljc/e;)V

    iput-object p1, p0, Ljc/e;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;ZILbk/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljc/e;-><init>(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    return-void
.end method

.method public static synthetic k(Ljc/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ljc/e;->o(Ljc/e;Landroid/view/View;)V

    return-void
.end method

.method private static final o(Ljc/e;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljc/e;->n()Ljc/c;

    move-result-object p0

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljc/c;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

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

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljc/k;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljc/k;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final l(I)Ljc/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mBehaviorInfo[index]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljc/f;

    return-object p1
.end method

.method public final m(I)Ljc/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljc/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljc/f;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final n()Ljc/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/e;->d:Ljc/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "onItemClick"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mBehaviorInfo[position]"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljc/f;

    instance-of v1, p1, Ljc/n;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast p1, Ljc/n;

    invoke-virtual {p1}, Ljc/n;->a()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    if-le v1, v2, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljc/n;->a()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljc/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljc/n;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    const v0, 0x7f060b72

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljc/n;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    const v0, 0x7f060b76

    :goto_1
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    :cond_2
    instance-of v1, p1, Ljc/o;

    if-eqz v1, :cond_10

    check-cast v0, Ljc/g;

    iget-boolean v1, p0, Ljc/e;->b:Z

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Ljc/o;

    invoke-virtual {v1}, Ljc/o;->c()Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Ljc/g;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljc/o;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_4
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljc/g;->d(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljc/e;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljc/g;->i()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljc/g;->i()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Ljc/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljc/g;->i()J

    move-result-wide v7

    invoke-static {v3, v5, v7, v8}, Lxc/u;->f(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_6
    invoke-virtual {v1}, Ljc/o;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move-object v1, p1

    check-cast v1, Ljc/o;

    invoke-virtual {v1}, Ljc/o;->c()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Ljc/g;->d(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Ljc/o;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljc/g;->j()I

    move-result v3

    const v5, 0x7f08051b

    if-eq v3, v2, :cond_b

    const/4 v6, 0x2

    if-eq v3, v6, :cond_a

    const/4 v6, 0x4

    if-eq v3, v6, :cond_9

    const/4 v6, 0x5

    if-eq v3, v6, :cond_8

    goto :goto_2

    :cond_8
    const v5, 0x7f080518

    goto :goto_2

    :cond_9
    const v5, 0x7f08051a

    goto :goto_2

    :cond_a
    const v5, 0x7f080519

    :cond_b
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Ljc/g;->f()I

    move-result v3

    const/16 v5, 0x3e7

    if-ne v3, v5, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg_icon_xspace://"

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg_icon://"

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljc/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljc/o;->c()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v5, Lx4/o0;->f:Lrh/c;

    const v6, 0x7f08092f

    invoke-static {v3, v1, v5, v6}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :goto_4
    move-object v1, p1

    check-cast v1, Ljc/o;

    invoke-virtual {v1}, Ljc/o;->d()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljc/g;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljc/o;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljc/g;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljc/o;->b()Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Ljc/g;->n()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f060c47

    goto :goto_5

    :cond_e
    const v0, 0x7f060b77

    :goto_5
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Ljc/o;->a()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    move v2, v4

    :goto_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_10
    :goto_7
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

    const-string v0, "view"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0e0257

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljc/n;

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Ljc/n;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljc/e;->a:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0e0256

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Ljc/e;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljc/o;

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Ljc/o;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public final p(Ljc/c;)V
    .locals 1
    .param p1    # Ljc/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ljc/e;->d:Ljc/c;

    return-void
.end method

.method public final q(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljc/e;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljc/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "behaviorInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Ljc/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
