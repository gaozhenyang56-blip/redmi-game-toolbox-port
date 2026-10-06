.class public Lw6/g;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lw6/g$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx6/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

.field private d:[I

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw6/g;->b:Ljava/util/List;

    iput-object p1, p0, Lw6/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Lw6/g;->l()V

    return-void
.end method

.method static synthetic k(Lw6/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw6/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method private l()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lw6/g;->d:[I

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lw6/g;->a:Landroid/content/Context;

    const v2, 0x7f120a4f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lw6/g;->a:Landroid/content/Context;

    const v2, 0x7f120a52

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lw6/g;->e:[Ljava/lang/String;

    new-instance v0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    iget-object v1, p0, Lw6/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lw6/g;->e:[Ljava/lang/String;

    iget-object v3, p0, Lw6/g;->d:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iput-object v0, p0, Lw6/g;->c:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0806ec
        0x7f0806ed
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lw6/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m(Lw6/g$d;I)V
    .locals 5

    iget-object v0, p0, Lw6/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx6/d;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const v1, 0x7f0806a8

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon://"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lw6/g$d;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->f:Lrh/c;

    iget-object v4, p0, Lw6/g;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lw6/g$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lw6/g;->c:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p2}, Lx6/d;->k()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContextClickable(Z)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    new-instance v1, Lw6/g$a;

    invoke-direct {v1, p0, p2}, Lw6/g$a;-><init>(Lw6/g;Lx6/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p2, p1, Lw6/g$d;->c:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lw6/g$b;

    invoke-direct {v0, p0, p1}, Lw6/g$b;-><init>(Lw6/g;Lw6/g$d;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lw6/g$c;

    invoke-direct {v0, p0, p1}, Lw6/g$c;-><init>(Lw6/g;Lw6/g$d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lw6/g$d;
    .locals 2

    iget-object p2, p0, Lw6/g;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0199

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lw6/g$d;

    invoke-direct {p2, p1}, Lw6/g$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx6/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lw6/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lw6/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lw6/g$d;

    invoke-virtual {p0, p1, p2}, Lw6/g;->m(Lw6/g$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw6/g;->n(Landroid/view/ViewGroup;I)Lw6/g$d;

    move-result-object p1

    return-object p1
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
