.class public Lcom/miui/antivirus/result/e;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/result/e;->d:I

    const-string v1, "item"

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->f:Ljava/lang/String;

    iput v0, p0, Lcom/miui/antivirus/result/e;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->a:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->b:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->c:Ljava/lang/String;

    const-string v1, "cornerTip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->e:Ljava/lang/String;

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/e;->d:I

    const-string v1, "rowType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->f:Ljava/lang/String;

    const-string v1, "perpage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/e;->g:I

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/e;->k:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antivirus/result/e;->j:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/result/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/e;->m(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method private d(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/miui/antivirus/result/e$b;

    invoke-direct {v2, p0, v1}, Lcom/miui/antivirus/result/e$b;-><init>(Lcom/miui/antivirus/result/e;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/result/b;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/b;->l()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    const-string p1, "com.miui.securitycenter_globaladevent"

    goto :goto_0

    :cond_1
    const-string p1, "com.miui.securitycenter_virusresult"

    :goto_0
    move-object v4, p1

    const-string v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "AntivirusBaseModel"

    const-string v0, "connect fail,maybe not support dislike window"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private e(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0492

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v5, 0xa

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/miui/antivirus/result/e$a;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/antivirus/result/e$a;-><init>(Lcom/miui/antivirus/result/e;Landroid/widget/PopupWindow;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v4, 0x7f0719fb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v4, 0x0

    aget v5, v2, v4

    sub-int/2addr v5, p1

    aget p1, v2, v0

    sub-int/2addr p1, v1

    invoke-virtual {v3, p2, v4, v5, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public static j(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x6d

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private m(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/antivirus/result/e$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/result/e$c;-><init>(Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    iget p1, p0, Lcom/miui/antivirus/result/e;->d:I

    const/16 p3, 0x6d

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/a0;

    iget-object p2, p1, Lcom/miui/antivirus/result/a0;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/antivirus/result/e;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/antivirus/result/a0;->b:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/b0;

    iget-object p2, p1, Lcom/miui/antivirus/result/b0;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/antivirus/result/e;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/antivirus/result/e;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 p3, 0x8

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/miui/antivirus/result/b0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/miui/antivirus/result/b0;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/miui/antivirus/result/b0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget p2, p0, Lcom/miui/antivirus/result/e;->d:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/miui/antivirus/result/e;->g:I

    if-le p2, v0, :cond_2

    iget-object p2, p1, Lcom/miui/antivirus/result/b0;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/miui/antivirus/result/b0;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/miui/antivirus/result/b0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public c(Lcom/miui/antivirus/result/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/result/e;->g:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/result/e;->d:I

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_0

    const v0, 0x7f0e0523

    return v0

    :cond_0
    const v0, 0x7f0e0524

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/result/e;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/result/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/e;->j:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/miui/antivirus/result/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/miui/antivirus/result/e;->i:I

    :goto_0
    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/miui/antivirus/result/e;->i:I

    iget v4, p0, Lcom/miui/antivirus/result/e;->g:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/result/c;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/antivirus/result/e;->i:I

    iget v3, p0, Lcom/miui/antivirus/result/e;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/antivirus/result/e;->i:I

    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/antivirus/result/e;->i:I

    :cond_1
    iget v2, p0, Lcom/miui/antivirus/result/e;->i:I

    :goto_1
    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/miui/antivirus/result/e;->i:I

    iget v4, p0, Lcom/miui/antivirus/result/e;->g:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/antivirus/result/e;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/result/c;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->F1(Lcom/miui/antivirus/result/c;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0c25

    if-ne v1, v2, :cond_5

    invoke-static {}, Lef/d0;->a()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/e;->d(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/miui/antivirus/result/e;->e(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method
