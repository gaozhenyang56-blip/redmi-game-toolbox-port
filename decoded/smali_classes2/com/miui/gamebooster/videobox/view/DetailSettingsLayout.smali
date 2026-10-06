.class public Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lg8/a;

.field private h:Ld8/c;

.field private i:Ld8/l;

.field private j:Ld8/d;

.field private k:Ld8/b;

.field private l:Ld8/g;

.field private m:Ld8/q;

.field private n:Ld8/e;

.field private o:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;

.field private p:Z

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$a;-><init>(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->q:Ljava/lang/Runnable;

    new-instance p1, Ld8/c;

    invoke-direct {p1}, Ld8/c;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->h:Ld8/c;

    new-instance p1, Ld8/l;

    invoke-direct {p1}, Ld8/l;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i:Ld8/l;

    new-instance p1, Ld8/d;

    invoke-direct {p1}, Ld8/d;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    new-instance p1, Ld8/b;

    invoke-direct {p1}, Ld8/b;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->k:Ld8/b;

    new-instance p1, Ld8/g;

    invoke-direct {p1}, Ld8/g;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->l:Ld8/g;

    new-instance p1, Ld8/q;

    invoke-direct {p1}, Ld8/q;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->m:Ld8/q;

    new-instance p1, Ld8/e;

    invoke-direct {p1}, Ld8/e;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->n:Ld8/e;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->p:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Ld8/l;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i:Ld8/l;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->o:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)Lg8/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->g:Lg8/a;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->h()V

    return-void
.end method

.method private g()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/videobox/view/MarqueeTextView;

    invoke-direct {v1, v0}, Lcom/miui/gamebooster/videobox/view/MarqueeTextView;-><init>(Landroid/content/Context;)V

    const-string v2, "#66FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071d17

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    invoke-static {}, Lj8/u;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lj8/u;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lj8/g;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f121b4b    # 1.94209E38f

    goto :goto_1

    :cond_1
    const v2, 0x7f121b4a

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lj8/g;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f121b4c

    goto :goto_1

    :cond_3
    const v2, 0x7f121b4d

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071e0c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object v1
.end method

.method private h()V
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$e;->a:[I

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->g:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->h:Ld8/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld8/c;->c(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentFunctionType()Lg8/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->g:Lg8/a;

    return-object v0
.end method

.method public i(Lg8/a;)V
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    invoke-virtual {p1}, Ld8/d;->d()V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i:Ld8/l;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public j(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->p:Z

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->q:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->n:Ld8/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld8/e;->b()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0cf3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v0, 0x7f0b05e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0732

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->e:Landroid/view/View;

    const v0, 0x7f0b05f9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$b;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$b;-><init>(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->f:Landroid/view/View;

    new-instance v1, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$c;-><init>(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$d;-><init>(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFunctionType(Lg8/a;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->g:Lg8/a;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    sget-object v0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f121b85

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->n:Ld8/e;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f121b76

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->m:Ld8/q;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->l:Ld8/g;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f121b2f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->k:Ld8/b;

    invoke-virtual {p1}, Ld8/b;->c()V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->k:Ld8/b;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f121b55

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    invoke-virtual {p1}, Ld8/d;->d()V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->j:Ld8/d;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v2, 0x7f121b75

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->i:Ld8/l;

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->h:Ld8/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ld8/c;->c(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->a:Landroid/widget/TextView;

    const v0, 0x7f121b54

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->h:Ld8/c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->d:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->g()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->d:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lj8/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entertainment_pkg"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "video_aipq_show"

    invoke-static {v0, p1}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setmOnDetailEventListener(Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout;->o:Lcom/miui/gamebooster/videobox/view/DetailSettingsLayout$f;

    return-void
.end method
