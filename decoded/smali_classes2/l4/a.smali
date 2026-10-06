.class public Ll4/a;
.super Ll4/b;
.source "SourceFile"

# interfaces
.implements Lw9/b$a;
.implements Lx4/p$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field private D:I

.field private E:Ljava/lang/String;

.field private F:[Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private transient H:Ljava/lang/Object;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:I

.field private M:Landroid/os/Handler;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field protected k:[Ljava/lang/String;

.field private l:J

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ll4/b;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ll4/a;->k:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ll4/a;->z:I

    iput v0, p0, Ll4/a;->B:I

    new-instance v0, Ll4/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll4/a$a;-><init>(Ll4/a;Landroid/os/Looper;)V

    iput-object v0, p0, Ll4/a;->M:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ll4/b;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ll4/a;->k:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ll4/a;->z:I

    iput v0, p0, Ll4/a;->B:I

    new-instance v0, Ll4/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll4/a$a;-><init>(Ll4/a;Landroid/os/Looper;)V

    iput-object v0, p0, Ll4/a;->M:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Ll4/a;->z(Lorg/json/JSONObject;)V

    return-void
.end method

.method private C(Landroid/content/Context;Landroid/widget/Button;Z)V
    .locals 7

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p0, Ll4/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Ll4/a;->A:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120f71

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ll4/a;->A:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v3, v2

    goto :goto_3

    :cond_1
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v4

    iget-object v5, p0, Ll4/a;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lsf/e;->c(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f1206d5

    if-eq v4, v1, :cond_4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_3

    if-eq v4, v2, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Ll4/a;->y:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    const v2, 0x7f120c6c

    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    const v2, 0x7f12058f

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    move v2, v3

    :goto_3
    iget v4, p0, Ll4/a;->i:I

    const/16 v5, 0x19

    const v6, 0x7f06002d

    if-ne v4, v5, :cond_9

    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    iget p3, p0, Ll4/a;->B:I

    if-eq p3, v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06014d

    goto :goto_5

    :cond_6
    iget p3, p0, Ll4/a;->z:I

    if-eq p3, v1, :cond_7

    :goto_4
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06014c

    :goto_5
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_9
    if-eqz p3, :cond_c

    if-eqz v3, :cond_a

    const p3, 0x7f0804e8

    goto :goto_7

    :cond_a
    const p3, 0x7f0804e5

    :goto_7
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v2, :cond_b

    const p3, 0x7f060cdd

    goto :goto_5

    :cond_b
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_6

    :cond_c
    :goto_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private M(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v2, Ll4/a$b;

    invoke-direct {v2, p0}, Ll4/a$b;-><init>(Ll4/a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const-string p1, "com.miui.securitycenter_globaladevent"

    goto :goto_0

    :cond_0
    const-string p1, "com.miui.securitycenter_datamodel"

    :goto_0
    move-object v4, p1

    invoke-virtual {p0}, Ll4/a;->m()Ljava/lang/String;

    move-result-object v5

    const-string v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Advertisement"

    const-string v0, "connect fail, maybe not support dislike window"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private N(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Ll4/a;->H:Ljava/lang/Object;

    invoke-static {p1, v0}, Ll4/j;->d(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private P(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Ll4/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$c;

    const-string v2, "APP_LAUNCH_SUCCESS_DEEPLINK"

    invoke-direct {v1, v2, p0}, Lqf/a$c;-><init>(Ljava/lang/String;Ll4/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Ll4/a;)V
    .locals 0

    invoke-direct {p0}, Ll4/a;->h()V

    return-void
.end method

.method static synthetic e(Ll4/a;)I
    .locals 0

    iget p0, p0, Ll4/a;->i:I

    return p0
.end method

.method static synthetic f(Ll4/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll4/a;->H:Ljava/lang/Object;

    return-object p0
.end method

.method private h()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ll4/a$c;

    invoke-direct {v1, p0}, Ll4/a$c;-><init>(Ll4/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static j(J)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    cmp-long v4, p0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    div-long/2addr p0, v2

    long-to-int p0, p0

    const p1, 0x7f1000a4

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const v1, 0x7f1000a3

    long-to-int p0, p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Ll4/a;->K:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll4/a;->L:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll4/a;->I:Ljava/lang/String;

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Ll4/a;->L:I

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Ll4/a;->d:I

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Ll4/a;->K:Z

    return-void
.end method

.method public G([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll4/a;->k:[Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ll4/a;->H:Ljava/lang/Object;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll4/a;->f:Ljava/lang/String;

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll4/a;->e:Ljava/lang/String;

    return-void
.end method

.method public O(Lcom/miui/securitycenter/ad/view/AdImageView;ILl4/a;)V
    .locals 1

    iget-object v0, p0, Ll4/a;->M:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/securitycenter/ad/view/AdImageView;->startTime(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0702c2

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p4, v0, p4}, Landroid/view/View;->setPadding(IIII)V

    iget p4, p0, Ll4/a;->i:I

    const/4 v1, 0x3

    const v2, 0x7f080f91

    if-eq p4, v1, :cond_c

    const/4 v1, 0x4

    if-eq p4, v1, :cond_b

    const/4 v1, 0x5

    const v3, 0x7f080954

    const/4 v4, 0x1

    if-eq p4, v1, :cond_a

    const/16 v1, 0x19

    if-eq p4, v1, :cond_8

    const/16 v1, 0x1f

    const/4 v5, 0x2

    if-eq p4, v1, :cond_7

    const/16 v1, 0x28

    if-eq p4, v1, :cond_6

    const/16 p1, 0x2711

    if-eq p4, p1, :cond_0

    const/16 p1, 0x7531

    if-eq p4, p1, :cond_0

    const/16 p1, 0x7532

    if-eq p4, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw9/c;

    invoke-virtual {p0}, Ll4/a;->s()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ll4/j;->i(Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "International Ads reportPV : "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll4/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "Advertisement"

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p4, p0, Ll4/a;->K:Z

    if-eqz p4, :cond_5

    iget-boolean p4, p1, Lw9/c;->j:Z

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Ll4/a;->L:I

    iget-object p4, p0, Ll4/a;->H:Ljava/lang/Object;

    invoke-static {p1, p2, p4}, Ll4/j;->a(Lw9/c;ILjava/lang/Object;)V

    iget-object p2, p1, Lw9/c;->h:Landroid/view/View;

    const p4, 0x7f0804c3

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Lw9/c;->a:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->e:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lw9/c;->e:Landroid/widget/Button;

    iget-object p4, p0, Ll4/a;->I:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lw9/c;->b:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lw9/c;->b:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lw9/c;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p2, p1, Lw9/c;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v0

    sget-object v0, Lx4/o0;->h:Lrh/c;

    invoke-static {p4, p2, v0, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_3
    iget-object p2, p1, Lw9/c;->c:Landroid/view/View;

    instance-of p4, p2, Landroid/widget/ImageView;

    if-eqz p4, :cond_4

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v4

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4, p2, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p2, p1, Lw9/c;->f:Landroid/widget/RelativeLayout;

    iget p4, p0, Ll4/a;->L:I

    iget-object v0, p0, Ll4/a;->H:Ljava/lang/Object;

    iget-object v1, p1, Lw9/c;->i:Landroid/view/View;

    invoke-static {p3, p2, p4, v0, v1}, Ll4/j;->j(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;Landroid/view/View;)V

    iget-object p1, p1, Lw9/c;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_5
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/t;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p2, Ll4/t;->b:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->g:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ll4/t;->c:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ll4/t;->d:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->n:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ll4/t;->b:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->g:Ljava/lang/String;

    iget-object v1, p0, Ll4/a;->n:Ljava/lang/String;

    invoke-static {p3, p4, v1}, Ll4/n;->h(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p3, p3, v0

    iget-object p4, p2, Ll4/t;->e:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p3, p3, v4

    iget-object p4, p2, Ll4/t;->f:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p3, p3, v5

    iget-object p4, p2, Ll4/t;->g:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p2, Ll4/t;->e:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/p;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Ll4/p;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ll4/a;->e:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p2, Ll4/p;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v0

    iget-object v1, p2, Ll4/p;->d:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v4

    iget-object v1, p2, Ll4/p;->e:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v5

    iget-object v1, p2, Ll4/p;->f:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Ll4/p;->g:Landroid/widget/Button;

    invoke-direct {p0, p3, p4, v0}, Ll4/a;->C(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object p2, p2, Ll4/p;->d:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/y;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Ll4/y;->e:Landroid/widget/TextView;

    iget-object v2, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p2, Ll4/y;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ll4/a;->e:Ljava/lang/String;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p4, p4, v0

    iget-object v2, p2, Ll4/y;->c:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p4, v2, v5}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Ll4/a;->j:Ljava/lang/String;

    iget-object v2, p2, Ll4/y;->b:Landroid/widget/ImageView;

    sget-object v5, Lx4/o0;->h:Lrh/c;

    invoke-static {p4, v2, v5, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p2, Ll4/y;->f:Landroid/widget/Button;

    iget v2, p0, Ll4/a;->i:I

    if-eq v2, v1, :cond_9

    move v0, v4

    :cond_9
    invoke-direct {p0, p3, p4, v0}, Ll4/a;->C(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object p2, p2, Ll4/y;->b:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/b0;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Ll4/b0;->d:Landroid/widget/TextView;

    iget-object v0, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p2, Ll4/b0;->c:Landroid/widget/TextView;

    iget-object v0, p0, Ll4/a;->e:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Ll4/a;->j:Ljava/lang/String;

    iget-object v0, p2, Ll4/b0;->b:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {p4, v0, v1, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p2, Ll4/b0;->e:Landroid/widget/Button;

    invoke-direct {p0, p3, p4, v4}, Ll4/a;->C(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object p2, p2, Ll4/b0;->b:Landroid/widget/ImageView;

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/s;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p2, Ll4/s;->d:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ll4/s;->c:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->g:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p3, p3, v0

    iget-object p4, p2, Ll4/s;->b:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p2, Ll4/s;->b:Landroid/widget/ImageView;

    goto :goto_2

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/c0;

    iget-object p4, p2, Ll4/d0;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p2, Ll4/c0;->c:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->f:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Ll4/c0;->b:Landroid/widget/TextView;

    iget-object p4, p0, Ll4/a;->g:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Ll4/a;->k:[Ljava/lang/String;

    aget-object p3, p3, v0

    iget-object p4, p2, Ll4/c0;->d:Landroid/widget/ImageView;

    invoke-static {}, Ll4/o;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, p4, v0}, Lx4/o0;->c(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p2, Ll4/c0;->d:Landroid/widget/ImageView;

    :goto_2
    check-cast p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p0, p2, p1, p0}, Ll4/a;->O(Lcom/miui/securitycenter/ad/view/AdImageView;ILl4/a;)V

    :goto_3
    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Ll4/a;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7531

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7532

    if-eq v0, v1, :cond_0

    const v0, 0x7f0e0525

    goto :goto_0

    :cond_0
    iget v0, p0, Ll4/a;->L:I

    invoke-static {v0}, Ll4/j;->e(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0488

    goto :goto_0

    :cond_2
    const v0, 0x7f0e0486

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0484

    goto :goto_0

    :cond_4
    const v0, 0x7f0e0489

    goto :goto_0

    :cond_5
    const v0, 0x7f0e0487

    goto :goto_0

    :cond_6
    const v0, 0x7f0e0485

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/String;Ll4/a;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$c;

    invoke-direct {v1, p1, p2}, Lqf/a$c;-><init>(Ljava/lang/String;Ll4/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public getAdAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Ll4/a;->C:Z

    return v0
.end method

.method public getAdDeeplink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFloatCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ll4/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Advertisement"

    const-string v1, "fill ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ll4/a;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Ll4/a;->E(I)V

    invoke-virtual {p1}, Ll4/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll4/a;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Ll4/a;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll4/a;->H(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ll4/a;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll4/a;->K(Ljava/lang/String;)V

    invoke-virtual {p1}, Ll4/a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll4/a;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Ll4/a;->q()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll4/a;->G([Ljava/lang/String;)V

    invoke-virtual {p1}, Ll4/a;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Ll4/a;->D(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll4/a;->F(Z)V

    invoke-static {}, Lw9/b;->b()Lw9/b;

    move-result-object v0

    invoke-virtual {p1}, Ll4/a;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lw9/b;->a(Ljava/lang/Object;Lw9/b$a;)V

    return-void
.end method

.method public isDownloadPause()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Ll4/a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Ll4/a;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->G:[Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->I:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Ll4/a;->L:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Ll4/a;->d:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Ll4/a;->i:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0b01d8

    if-eq p1, v1, :cond_2

    const v1, 0x7f0b025b

    if-eq p1, v1, :cond_1

    invoke-static {p0, v0}, Lx4/p;->c(Lx4/p$a;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Ll4/a;->M(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0}, Lx4/p;->b(Lx4/p$a;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p1}, Ll4/j;->h(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Ll4/a;->N(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ll4/a;->s()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ll4/a;->H:Ljava/lang/Object;

    invoke-static {p1, v0}, Ll4/j;->f(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll4/a;->H:Ljava/lang/Object;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public trackAdDeeplinkLauncher(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ll4/a;->P(Landroid/content/Context;)V

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Ll4/a;->i:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public y()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/a;->F:[Ljava/lang/String;

    return-object v0
.end method

.method public z(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ll4/a;->d:I

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->e:Ljava/lang/String;

    :cond_1
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->f:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->g:Ljava/lang/String;

    const-string v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->h:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ll4/a;->i:I

    const-string v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ll4/a;->l:J

    const/4 v0, -0x1

    const-string v1, "appRatingScore"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ll4/a;->m:I

    iget-wide v0, p0, Ll4/a;->l:J

    invoke-static {v0, v1}, Ll4/a;->j(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->n:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->j:Ljava/lang/String;

    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->o:Ljava/lang/String;

    const-string v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->p:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->q:Ljava/lang/String;

    const-string v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->r:Ljava/lang/String;

    const-string v0, "appRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->s:Ljava/lang/String;

    const-string v0, "appClientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->t:Ljava/lang/String;

    const-string v0, "appSignature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->u:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->v:Ljava/lang/String;

    const-string v0, "appChannel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->w:Ljava/lang/String;

    const-string v0, "floatCardData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->x:Ljava/lang/String;

    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "trackingStrategy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll4/a;->E:Ljava/lang/String;

    :cond_2
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/a;->y:Ljava/lang/String;

    const-string v1, "buttonColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll4/a;->z:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const-string v1, "buttonOpenColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ll4/a;->B:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    const-string v1, "buttonOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ll4/a;->A:Ljava/lang/String;

    const-string v1, "autoOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ll4/a;->C:Z

    :cond_5
    const-string v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    if-ge v3, v2, :cond_6

    iget-object v4, p0, Ll4/a;->k:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ll4/a;->D:I

    const-string v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ll4/a;->F:[Ljava/lang/String;

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Ll4/a;->F:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ll4/a;->G:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Ll4/a;->G:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method
