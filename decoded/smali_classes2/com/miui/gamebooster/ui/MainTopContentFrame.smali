.class public Lcom/miui/gamebooster/ui/MainTopContentFrame;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/model/u;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lw4/e;

.field public d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/ui/MainTopContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e02a4

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/ui/MainTopContentFrame;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/gamebooster/ui/MainTopContentFrame;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->c:Lw4/e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-string p1, "key_gamebooster_red_point_press_day"

    invoke-static {p1, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->e:Ljava/lang/Runnable;

    invoke-static {p1}, Lc7/c;->H(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0a7a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Q(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0a7c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    const v2, 0x7f0b0a7d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public f(Ln6/f;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->a:Landroid/widget/ImageView;

    sget-object v1, Ln6/f;->b:Ln6/f;

    if-ne p1, v1, :cond_0

    const v1, 0x7f080736

    goto :goto_0

    :cond_0
    const v1, 0x7f080735

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/miui/gamebooster/ui/MainTopContentFrame$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "show"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "overdue"

    goto :goto_1

    :cond_2
    const-string p1, "activat"

    goto :goto_1

    :cond_3
    const-string p1, "not_open"

    :goto_1
    invoke-static {v1, p1}, Lcom/miui/gamebooster/utils/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b0dea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0de8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0de9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ly7/f;

    invoke-direct {v1, p0}, Ly7/f;-><init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0a7a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    const v2, 0x7f0b0a7b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ly7/g;

    invoke-direct {v1, p0}, Ly7/g;-><init>(Lcom/miui/gamebooster/ui/MainTopContentFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "key_gamebooster_red_point_press_day"

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0a7a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBusinessText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "show"

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/MainTopContentFrame;->c:Lw4/e;

    return-void
.end method
