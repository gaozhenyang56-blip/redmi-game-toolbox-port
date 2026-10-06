.class public Lcom/miui/applicationlock/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/a$f;,
        Lcom/miui/applicationlock/a$d;,
        Lcom/miui/applicationlock/a$e;,
        Lcom/miui/applicationlock/a$g;
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
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc3/v;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/os/Handler;

.field private f:Landroid/app/NotificationManager;

.field private g:Lmiui/security/SecurityManager;

.field private h:Z

.field private i:Lcom/miui/applicationlock/a$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/a;->h:Z

    iput-object p1, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/applicationlock/a;->d:Z

    iput-object p3, p0, Lcom/miui/applicationlock/a;->e:Landroid/os/Handler;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/miui/applicationlock/a;->f:Landroid/app/NotificationManager;

    const-string p2, "security"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/a;->g:Lmiui/security/SecurityManager;

    return-void
.end method

.method public static synthetic k(Lcom/miui/applicationlock/a;ILc3/b;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/applicationlock/a;->o(ILc3/b;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic l(Lcom/miui/applicationlock/a;)Lcom/miui/applicationlock/a$f;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/a;->i:Lcom/miui/applicationlock/a$f;

    return-object p0
.end method

.method private m()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    invoke-virtual {v3}, Lc3/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    invoke-virtual {v3}, Lc3/b;->f()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private n()[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc3/b;

    invoke-virtual {v5}, Lc3/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lc3/b;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    aput v1, v0, v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private synthetic o(ILc3/b;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p3, p0, Lcom/miui/applicationlock/a;->i:Lcom/miui/applicationlock/a$f;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/miui/applicationlock/a$f;->a(ILc3/b;)V

    :cond_0
    return-void
.end method

.method private p(Lcom/miui/applicationlock/a$d;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc3/b;

    invoke-direct {p0}, Lcom/miui/applicationlock/a;->n()[I

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/a$c;->a:[I

    invoke-virtual {p2}, Lc3/b;->b()Lc3/p;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    aget p2, v0, v1

    aget v0, v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10002f

    invoke-virtual {v0, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120278

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f100088

    aget v4, v0, v2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f100085

    aget v4, v0, v1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1}, Lcom/miui/applicationlock/a$d;->a(Lcom/miui/applicationlock/a$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private q(Lcom/miui/applicationlock/a$e;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/v;

    invoke-static {p1}, Lcom/miui/applicationlock/a$e;->a(Lcom/miui/applicationlock/a$e;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lc3/v;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/miui/applicationlock/a$e;->b(Lcom/miui/applicationlock/a$e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lc3/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/applicationlock/a$e;->c(Lcom/miui/applicationlock/a$e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lc3/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/applicationlock/a$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/applicationlock/a$a;-><init>(Lcom/miui/applicationlock/a;ILc3/v;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private r(Lcom/miui/applicationlock/a$g;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/b;

    iget-object v1, p1, Lcom/miui/applicationlock/a$g;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc3/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/applicationlock/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc3/b;->d()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_icon://"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/applicationlock/a$g;->a:Landroid/widget/ImageView;

    invoke-static {}, Lc3/a;->a()Lrh/c;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    invoke-virtual {v0}, Lc3/b;->f()Z

    move-result v1

    iget-object v2, p1, Lcom/miui/applicationlock/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v3, Lz2/h;

    invoke-direct {v3, p0, p2, v0}, Lz2/h;-><init>(Lcom/miui/applicationlock/a;ILc3/b;)V

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p1, Lcom/miui/applicationlock/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v2, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/applicationlock/a$b;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/applicationlock/a$b;-><init>(Lcom/miui/applicationlock/a;ILc3/b;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private t(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V
    .locals 15

    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120286

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12020a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v4, 0x7f080938

    const v5, 0x7f0803ad

    const-string v10, "com.miui.applicationlock"

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p7

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p5

    invoke-static/range {v0 .. v14}, Lc3/f;->Y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;IZZ)V

    invoke-static {}, La3/a;->z()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/b;

    invoke-virtual {p1}, Lc3/b;->b()Lc3/p;

    move-result-object v0

    sget-object v1, Lc3/p;->c:Lc3/p;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lc3/b;->b()Lc3/p;

    move-result-object v0

    sget-object v1, Lc3/p;->a:Lc3/p;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lc3/b;->b()Lc3/p;

    move-result-object v0

    sget-object v1, Lc3/p;->b:Lc3/p;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lc3/b;->b()Lc3/p;

    move-result-object p1

    sget-object v0, Lc3/p;->e:Lc3/p;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    instance-of v0, p1, Lcom/miui/applicationlock/a$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/applicationlock/a$e;

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/a;->q(Lcom/miui/applicationlock/a$e;I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/miui/applicationlock/a$g;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/applicationlock/a$g;

    iget-object v0, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/a;->r(Lcom/miui/applicationlock/a$g;I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/miui/applicationlock/a$d;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/applicationlock/a$d;

    iget-object v0, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/a;->p(Lcom/miui/applicationlock/a$d;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/miui/applicationlock/a$e;

    iget-object v2, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0097

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/applicationlock/a$e;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0cf3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    new-instance p2, Lcom/miui/applicationlock/a$d;

    iget-object v1, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/applicationlock/a$d;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/miui/applicationlock/a$g;

    iget-object v2, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0056

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/applicationlock/a$g;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b00f1

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method s(ZLc3/b;Lmiui/security/SecurityManager;)V
    .locals 8

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/applicationlock/MaskNotificationActivity;->j:Landroid/util/ArraySet;

    invoke-virtual {p2}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lc3/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lc3/b;->d()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance v4, Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    const-class p2, Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {v4, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "enter_way"

    const-string p2, "mask_notification_push"

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/a;->a:Landroid/content/Context;

    const v2, 0x7f120f12

    const v3, 0x7f120f13

    const/16 v5, 0x65

    const/4 v6, 0x5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080938

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/a;->t(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method u(Lc3/b;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Lc3/b;->h(Z)V

    invoke-virtual {p1}, Lc3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/applicationlock/a;->h:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/a;->g:Lmiui/security/SecurityManager;

    invoke-virtual {p1}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc3/b;->d()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/applicationlock/a;->g:Lmiui/security/SecurityManager;

    invoke-virtual {p1}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc3/b;->d()I

    move-result p1

    invoke-static {p2, v0, p1}, Lc3/f;->W(Lmiui/security/SecurityManager;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public v(Lcom/miui/applicationlock/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/a;->i:Lcom/miui/applicationlock/a$f;

    return-void
.end method

.method public w(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc3/o;",
            ">;Z)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->c()Lc3/p;

    move-result-object v1

    sget-object v2, Lc3/p;->d:Lc3/p;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/a;->c:Ljava/util/List;

    invoke-virtual {v0}, Lc3/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lc3/b;

    invoke-virtual {v0}, Lc3/o;->c()Lc3/p;

    move-result-object v0

    invoke-direct {v1, v0}, Lc3/b;-><init>(Lc3/p;)V

    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
