.class public Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;
.super Lr7/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;,
        Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

.field private k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

.field private l:Landroid/content/res/Resources;

.field private m:Z

.field private n:Landroid/widget/RadioGroup;

.field private o:Landroid/widget/RadioButton;

.field private p:Landroid/widget/RadioButton;

.field private q:Lr7/c;

.field private r:Z

.field private s:Lp7/c;

.field private t:Landroid/os/Handler;

.field private u:Lp7/d$b;

.field private v:Z

.field private w:Landroid/graphics/drawable/TransitionDrawable;

.field private x:Landroid/graphics/drawable/TransitionDrawable;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v:Z

    new-instance p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$a;-><init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)V

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->y:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic i(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u()V

    return-void
.end method

.method static synthetic j(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v:Z

    return p0
.end method

.method static synthetic k(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v:Z

    return p1
.end method

.method static synthetic l(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private r()V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    const v1, 0x7f120ac6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f120abf

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u:Lp7/d$b;

    if-eqz v6, :cond_0

    iget-boolean v6, v6, Lp7/d$b;->h:Z

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v8, 0x7f120aaa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u:Lp7/d$b;

    if-eqz v6, :cond_2

    iget-boolean v6, v6, Lp7/d$b;->m:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v5, 0x7f120aad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private s(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->g:Landroid/widget/ImageView;

    const v1, 0x7f08071e

    const v2, 0x7f08071d

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private u()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->w:Landroid/graphics/drawable/TransitionDrawable;

    const v1, 0x7f08071d

    const/4 v2, 0x1

    const v3, 0x7f08071e

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->w:Landroid/graphics/drawable/TransitionDrawable;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->x:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-direct {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->x:Landroid/graphics/drawable/TransitionDrawable;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->w:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v(Landroid/widget/ImageView;Landroid/graphics/drawable/TransitionDrawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->x:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v(Landroid/widget/ImageView;Landroid/graphics/drawable/TransitionDrawable;)V

    return-void
.end method

.method private v(Landroid/widget/ImageView;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->v:Z

    const/16 v0, 0x3e8

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    iget-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b094f

    goto :goto_0

    :cond_0
    const v1, 0x7f0b094e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public f(Lp7/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u:Lp7/d$b;

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 12

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_1

    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->a:Landroid/widget/Button;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->c:Landroid/widget/TextView;

    aput-object v1, v0, v7

    invoke-static {v5, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v9, 0x7f120bce

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->g:Landroid/widget/ImageView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->i:Landroid/view/View;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->d:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v8, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    const/16 v0, 0x8

    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o:Landroid/widget/RadioButton;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->p:Landroid/widget/RadioButton;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s:Lp7/c;

    invoke-virtual {v0, v8}, Lp7/c;->b(I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s:Lp7/c;

    invoke-virtual {v1, v7}, Lp7/c;->b(I)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    move v5, v8

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r()V

    goto :goto_1

    :cond_1
    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->a:Landroid/widget/Button;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->c:Landroid/widget/TextView;

    aput-object v1, v0, v7

    invoke-static {v8, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v9, 0x7f120ac1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    iget-boolean v11, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    if-eqz v11, :cond_2

    const v11, 0x7f120aaa

    goto :goto_0

    :cond_2
    const v11, 0x7f120aad

    :goto_0
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v9, 0x7f120a64

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->g:Landroid/widget/ImageView;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->i:Landroid/view/View;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->d:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-static {v5, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    new-array v0, v6, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o:Landroid/widget/RadioButton;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->p:Landroid/widget/RadioButton;

    aput-object v1, v0, v7

    invoke-static {v8, v0}, Ldb/i;->m(I[Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x7f0b094f

    if-ne p2, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz p2, :cond_1

    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    :goto_1
    iput-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v2, 0x7f120ac1

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v2, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    iget-boolean v4, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    if-eqz v4, :cond_2

    const v4, 0x7f120aaa

    goto :goto_2

    :cond_2
    const v4, 0x7f120aad

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    const v2, 0x7f120aa1

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    sget-object v3, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    move p1, v0

    :goto_4
    invoke-interface {p2, v1, p1}, Lr7/c;->e(ZZ)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lr7/c;->c()V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    iget-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    invoke-interface {p1, v1, v0}, Lr7/c;->e(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lr7/c;->h()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->p()Z

    move-result v0

    invoke-static {p1, v0}, Lp7/e;->c(ZZ)V

    goto :goto_5

    :sswitch_1
    iput-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t()V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->w()V

    iget-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    :goto_1
    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    invoke-interface {p1, v0, v1}, Lr7/c;->e(ZZ)V

    :cond_4
    const-string p1, "shoulder_key_shoulder_right_set"

    goto :goto_3

    :sswitch_2
    iput-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t()V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->w()V

    iget-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    :goto_2
    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    invoke-interface {p1, v0, v1}, Lr7/c;->e(ZZ)V

    :cond_6
    const-string p1, "shoulder_key_shoulder_left_set"

    :goto_3
    invoke-static {p1}, Lp7/e;->a(Ljava/lang/String;)V

    goto :goto_5

    :sswitch_3
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iget-boolean p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->b:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    :goto_4
    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->m:Z

    invoke-interface {p1, v1, v0}, Lr7/c;->e(ZZ)V

    :cond_8
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b01a5 -> :sswitch_3
        0x7f0b01b2 -> :sswitch_2
        0x7f0b01c0 -> :sswitch_1
        0x7f0b01c2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->l:Landroid/content/res/Resources;

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s:Lp7/c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t()V

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->c:Landroid/widget/TextView;

    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->a:Landroid/widget/Button;

    const v0, 0x7f0b01c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->b:Landroid/widget/Button;

    const v0, 0x7f0b0cd0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->d:Landroid/view/View;

    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0617

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b01c0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    const v0, 0x7f0b062d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b0624

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->i:Landroid/view/View;

    const v0, 0x7f0b0940

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    const v0, 0x7f0b094f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o:Landroid/widget/RadioButton;

    const v1, 0x7f0b094e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->p:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->a:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->b:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r()V

    iget-object v2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    iget-boolean v3, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->h()V

    invoke-static {}, Lp7/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lp7/d;->k()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->x()V

    :goto_1
    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->k:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    sget-object v1, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()V
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->j:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout$c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->t()V

    return-void
.end method

.method public setOnTriggerEvent(Lr7/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->q:Lr7/c;

    return-void
.end method

.method public t()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u:Lp7/d$b;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lp7/d$b;->g:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->u:Lp7/d$b;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lp7/d$b;->l:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->r:Z

    return-void
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s:Lp7/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp7/c;->b(I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s:Lp7/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lp7/c;->b(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderSsConfigLayout;->s(ZZ)V

    return-void
.end method
