.class public Lw6/f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lx6/b;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx6/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw6/f;->h:Ljava/util/List;

    iput-object p1, p0, Lw6/f;->d:Landroid/content/Context;

    iput-object p2, p0, Lw6/f;->a:Ljava/lang/String;

    iput p3, p0, Lw6/f;->b:I

    invoke-direct {p0}, Lw6/f;->n()V

    invoke-direct {p0}, Lw6/f;->o()V

    invoke-virtual {p0}, Lw6/f;->t()V

    return-void
.end method

.method public static synthetic a(Lw6/f;)V
    .locals 0

    invoke-direct {p0}, Lw6/f;->p()V

    return-void
.end method

.method public static synthetic b(Lw6/f$b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw6/f;->s(Lw6/f$b;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lw6/f;)V
    .locals 0

    invoke-direct {p0}, Lw6/f;->q()V

    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lw6/f;->r(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic e(Lw6/f;Lw6/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lw6/f;->w(Lw6/f$b;)V

    return-void
.end method

.method static synthetic f(Lw6/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw6/f;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lw6/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw6/f;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lw6/f;)V
    .locals 0

    invoke-direct {p0}, Lw6/f;->x()V

    return-void
.end method

.method static synthetic i(Lw6/f;)Lx6/b;
    .locals 0

    iget-object p0, p0, Lw6/f;->c:Lx6/b;

    return-object p0
.end method

.method static synthetic j(Lw6/f;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lw6/f;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lw6/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw6/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method private l()V
    .locals 5

    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6/c;

    iget-object v3, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-direct {p0, v2, v4}, Lw6/f;->m(Lx6/c;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private m(Lx6/c;Z)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a51

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07066c

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    invoke-virtual {v0, v1, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lw6/f;->d:Landroid/content/Context;

    const v1, 0x7f0e01ec

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0b0629

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0cbf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p1, Lx6/c;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p1, Lx6/c;->b:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lw6/f$a;

    invoke-direct {v1, p0, p1}, Lw6/f$a;-><init>(Lw6/f;Lx6/c;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lw6/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p1, Lx6/c;->d:Z

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private n()V
    .locals 8

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lw6/f;->h:Ljava/util/List;

    new-instance v2, Lx6/c;

    if-eqz v0, :cond_0

    const v3, 0x7f0806bd

    goto :goto_0

    :cond_0
    const v3, 0x7f0806c0

    :goto_0
    if-eqz v0, :cond_1

    const v4, 0x7f120a55

    goto :goto_1

    :cond_1
    const v4, 0x7f120a59

    :goto_1
    sget v5, Lx6/a;->c:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lx6/c;-><init>(IIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lw6/f;->h:Ljava/util/List;

    new-instance v2, Lx6/c;

    if-eqz v0, :cond_2

    const v3, 0x7f0806be

    goto :goto_2

    :cond_2
    const v3, 0x7f0806bf

    :goto_2
    const v4, 0x7f120a56

    sget v5, Lx6/a;->a:I

    const/4 v7, 0x1

    invoke-direct {v2, v3, v4, v5, v7}, Lx6/c;-><init>(IIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lw6/f;->h:Ljava/util/List;

    new-instance v2, Lx6/c;

    if-eqz v0, :cond_3

    const v3, 0x7f0806c2

    goto :goto_3

    :cond_3
    const v3, 0x7f0806c1

    :goto_3
    if-eqz v0, :cond_4

    const v0, 0x7f120a5b

    goto :goto_4

    :cond_4
    const v0, 0x7f120a5a

    :goto_4
    sget v4, Lx6/a;->b:I

    invoke-direct {v2, v3, v0, v4, v6}, Lx6/c;-><init>(IIIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01f1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lw6/f;->e:Landroid/view/View;

    const v0, 0x7f0b0bfe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iput-object v0, p0, Lw6/f;->f:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    const v0, 0x7f0b0629

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lw6/f;->i:Landroid/widget/ImageView;

    const v0, 0x7f0b0944

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lw6/f;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b094b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lw6/f;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b0954

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120a57

    goto :goto_0

    :cond_0
    const v2, 0x7f120a58

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw6/f;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080651

    goto :goto_1

    :cond_1
    const v1, 0x7f08060d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lw6/f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lw6/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lw6/f;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/k0;->o(Landroid/view/View;Z)V

    iget-object v0, p0, Lw6/f;->e:Landroid/view/View;

    const v1, 0x7f0b0297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lw6/f;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lw6/f;->l()V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v0}, Ls8/h;->I0(Landroid/content/Context;)V

    iget-object v0, p0, Lw6/f;->j:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->c:Lx6/b;

    sget v1, Lx6/a;->f:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx6/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lw6/f;->c:Lx6/b;

    sget v1, Lx6/a;->a:I

    iput v1, v0, Lx6/b;->c:I

    invoke-direct {p0}, Lw6/f;->v()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lw6/f;->c:Lx6/b;

    invoke-static {v0, v1}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    invoke-direct {p0}, Lw6/f;->x()V

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    iget-object v1, p0, Lw6/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lw6/i;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v0}, Ls8/h;->I0(Landroid/content/Context;)V

    iget-object v0, p0, Lw6/f;->k:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->c:Lx6/b;

    sget v1, Lx6/a;->i:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx6/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lw6/f;->c:Lx6/b;

    sget v1, Lx6/a;->a:I

    iput v1, v0, Lx6/b;->c:I

    invoke-direct {p0}, Lw6/f;->u()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lw6/f;->c:Lx6/b;

    invoke-static {v0, v1}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    invoke-direct {p0}, Lw6/f;->x()V

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    iget-object v1, p0, Lw6/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lw6/i;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic r(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic s(Lw6/f$b;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lw6/f$b;->a()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6/c;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    iput-boolean v3, v2, Lx6/c;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6/c;

    iput-boolean v0, v2, Lx6/c;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w(Lw6/f$b;)V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lw6/f;->d:Landroid/content/Context;

    const v2, 0x7f130023

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120a4a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120a48

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lw6/c;

    invoke-direct {v1}, Lw6/c;-><init>()V

    const v2, 0x7f120499

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lw6/d;

    invoke-direct {v1, p1}, Lw6/d;-><init>(Lw6/f$b;)V

    const p1, 0x7f120a47

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lx4/d1;->a(Landroid/view/Window;)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lw6/f;->d:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lw6/f;->g:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lw6/f;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_2
    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/c;

    iget-object v1, p0, Lw6/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lw6/f;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, v0, Lx6/c;->d:Z

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0944

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b094b

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lw6/b;

    invoke-direct {p1, p0}, Lw6/b;-><init>(Lw6/f;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lw6/a;

    invoke-direct {p1, p0}, Lw6/a;-><init>(Lw6/f;)V

    :goto_0
    invoke-direct {p0, p1}, Lw6/f;->w(Lw6/f$b;)V

    :goto_1
    return-void
.end method

.method public setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V
    .locals 1

    iget-object v0, p0, Lw6/f;->f:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 5

    iget-object v0, p0, Lw6/f;->a:Ljava/lang/String;

    iget v1, p0, Lw6/f;->b:I

    invoke-static {v0, v1}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v0

    iput-object v0, p0, Lw6/f;->c:Lx6/b;

    iget-object v1, p0, Lw6/f;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lw6/f;->c:Lx6/b;

    invoke-virtual {v1}, Lx6/b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lw6/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx6/c;

    iget-object v3, p0, Lw6/f;->c:Lx6/b;

    invoke-virtual {v3}, Lx6/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lx6/c;->c:I

    iget-object v4, p0, Lw6/f;->c:Lx6/b;

    iget v4, v4, Lx6/b;->c:I

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v1, Lx6/c;->d:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lw6/f;->x()V

    return-void
.end method
