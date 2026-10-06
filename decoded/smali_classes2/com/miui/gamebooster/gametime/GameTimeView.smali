.class public Lcom/miui/gamebooster/gametime/GameTimeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xe10

    iput v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->g:I

    new-instance v0, Lcom/miui/gamebooster/gametime/GameTimeView$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gametime/GameTimeView$a;-><init>(Lcom/miui/gamebooster/gametime/GameTimeView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->h:Ljava/lang/Runnable;

    sget-object v0, Lef/y;->q1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->a:I

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gametime/GameTimeView;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/gametime/GameTimeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/gametime/GameTimeView;)I
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->e:I

    return v0
.end method

.method static synthetic c(Lcom/miui/gamebooster/gametime/GameTimeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gametime/GameTimeView;->i()V

    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/gametime/GameTimeView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->g:I

    return p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/gametime/GameTimeView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/gametime/GameTimeView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->d:Landroid/os/Handler;

    const v0, 0x7f0e01fc

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0cf0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0637

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/gamebooster/gametime/GameTimeView;->i()V

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key_currentbooster_pkg_uid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "entertainment_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gamebox_time_view_click"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->f:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->f:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->e:I

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v2, v1}, Lme/b0;->k(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->d:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/gametime/GameTimeView;->h()V

    iget-boolean p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->e:I

    iget-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->f:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView;->f:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/gametime/GameTimeView;->i()V

    return-void
.end method
