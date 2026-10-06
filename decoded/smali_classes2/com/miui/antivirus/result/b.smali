.class public Lcom/miui/antivirus/result/b;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"

# interfaces
.implements Lw9/b$a;
.implements Lx4/p$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field private F:I

.field private G:[Ljava/lang/String;

.field private H:[Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private transient O:Ljava/lang/Object;

.field private transient P:Landroid/view/View;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:I

.field private U:Z

.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field protected i:[Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

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

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/b;->B:I

    iput v0, p0, Lcom/miui/antivirus/result/b;->D:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/b;->B:I

    iput v0, p0, Lcom/miui/antivirus/result/b;->D:I

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->r(Lorg/json/JSONObject;)V

    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/result/b;->P:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->O:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/antivirus/result/i;->e(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lqf/a$e;

    const-string v2, "APP_LAUNCH_SUCCESS_DEEPLINK"

    invoke-direct {v1, v2, p0}, Lqf/a$e;-><init>(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lqf/a;->h(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/result/b;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->s(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/antivirus/result/b;)I
    .locals 0

    iget p0, p0, Lcom/miui/antivirus/result/b;->g:I

    return p0
.end method

.method static synthetic c(Lcom/miui/antivirus/result/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/b;->O:Ljava/lang/Object;

    return-object p0
.end method

.method private d(Landroid/content/Context;Lcom/miui/securitycenter/ad/view/AdDownloadView;)V
    .locals 7

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->h:Ljava/lang/String;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/antivirus/result/b;->w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->I:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDeveloper(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12152e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/antivirus/result/b;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->N:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDsp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->J:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1200aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/antivirus/result/b;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1200a9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/antivirus/result/b;->z(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBigImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v4, Lx4/o0;->c:Lrh/c;

    invoke-direct {p0, v1, v2, v4}, Lcom/miui/antivirus/result/b;->w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg1()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2, v4}, Lcom/miui/antivirus/result/b;->w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg2()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/antivirus/result/b;->w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg3()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/antivirus/result/b;->w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    const v2, 0x7f0804c3

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget v2, p0, Lcom/miui/antivirus/result/b;->g:I

    const/4 v3, 0x5

    const v4, 0x7f0719d9

    if-eq v2, v3, :cond_1

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0719ec

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0719ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0719d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/miui/antivirus/activity/MainActivity;

    check-cast v0, Lcom/miui/securitycenter/ad/view/AdImageView;

    iget v2, p0, Lcom/miui/antivirus/result/c;->position:I

    invoke-virtual {v1, v0, v2, p0}, Lcom/miui/antivirus/activity/MainActivity;->Q1(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    check-cast v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    iget v2, p0, Lcom/miui/antivirus/result/c;->position:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/antivirus/activity/MainActivity;->Q1(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V

    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/antivirus/result/b;->x(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/antivirus/result/b;->x(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/antivirus/result/b;->x(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIntroduceView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/antivirus/result/b;->x(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getCancelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/miui/antivirus/result/b;->x(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBtnView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l()V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->o()V

    :goto_3
    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/antivirus/result/b;->v(Landroid/content/Context;Landroid/widget/TextView;Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/miui/antivirus/result/b$c;

    invoke-direct {v2, p0, v1}, Lcom/miui/antivirus/result/b$c;-><init>(Lcom/miui/antivirus/result/b;Ljava/lang/ref/WeakReference;)V

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
    const-string p1, "com.miui.securitycenter_virusresult"

    :goto_0
    move-object v4, p1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/b;->l()Ljava/lang/String;

    move-result-object v5

    const-string v3, "com.miui.securitycenter"

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "Advertisement"

    const-string v0, "connect fail,maybe not support dislike window"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/antivirus/result/c;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "template"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7532

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-object v0

    :cond_1
    :pswitch_0
    invoke-static {p0, p1, v1}, Lcom/miui/antivirus/result/i;->c(Lorg/json/JSONObject;Ljava/lang/String;I)Lcom/miui/antivirus/result/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V
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

    new-instance v2, Lcom/miui/antivirus/result/b$b;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/antivirus/result/b$b;-><init>(Lcom/miui/antivirus/result/b;Landroid/widget/PopupWindow;Lcom/miui/antivirus/activity/MainActivity;)V

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

.method public static h(J)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    cmp-long v4, p0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_0

    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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

    :cond_0
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

.method private j(Ljava/lang/String;)Lv2/a;
    .locals 7

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lv2/a;

    iget-object v2, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/antivirus/result/b;->z:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/antivirus/result/b;->A:Ljava/lang/String;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private r(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/b;->a:I

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    :cond_1
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    const-string v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->f:Ljava/lang/String;

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/b;->g:I

    const-string v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/antivirus/result/b;->j:J

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/b;->h(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->k:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->h:Ljava/lang/String;

    const-string v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->l:Ljava/lang/String;

    const-string v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->m:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    const-string v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->p:Ljava/lang/String;

    const-string v0, "appRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->q:Ljava/lang/String;

    const-string v0, "appClientId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->r:Ljava/lang/String;

    const-string v0, "appSignature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->s:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->t:Ljava/lang/String;

    const-string v0, "appChannel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->u:Ljava/lang/String;

    const-string v0, "floatCardData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->v:Ljava/lang/String;

    const-string v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/b;->b:Z

    const-string v0, "source4tail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->y:Ljava/lang/String;

    const-string v0, "channel4Tail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->z:Ljava/lang/String;

    const-string v0, "traceKv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->A:Ljava/lang/String;

    const-string v0, "appDeveloper"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->I:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->J:Ljava/lang/String;

    const-string v0, "appPermission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->K:Ljava/lang/String;

    const-string v0, "appPrivacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->L:Ljava/lang/String;

    const-string v0, "appIntroduction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->M:Ljava/lang/String;

    const-string v0, "dspName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/miui/antivirus/result/b;->N:Ljava/lang/String;

    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "trackingStrategy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->o:Ljava/lang/String;

    :cond_3
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/b;->x:Ljava/lang/String;

    const-string v1, "buttonColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/b;->B:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    const-string v1, "buttonOpenColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/b;->D:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    const-string v1, "buttonOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/b;->C:Ljava/lang/String;

    const-string v1, "autoOpen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/b;->E:Z

    :cond_6
    const-string v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    if-ge v3, v2, :cond_7

    iget-object v4, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/antivirus/result/b;->F:I

    const-string v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/antivirus/result/b;->G:[Ljava/lang/String;

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/miui/antivirus/result/b;->G:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const-string v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antivirus/result/b;->H:[Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->H:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method private s(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/antivirus/result/b$d;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/result/b$d;-><init>(Lcom/miui/antivirus/result/b;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private v(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 3

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/result/b;->C:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120f71

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/result/b;->C:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    if-nez p3, :cond_6

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lsf/e;->c(Ljava/lang/String;)I

    move-result p3

    const v0, 0x7f1206d5

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    const/4 v2, 0x5

    if-eq p3, v2, :cond_4

    const/16 v2, 0xa

    if-eq p3, v2, :cond_3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 p1, 0x3

    if-eq p3, p1, :cond_2

    iget-object p1, p0, Lcom/miui/antivirus/result/b;->x:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const p1, 0x7f120c6c

    goto :goto_0

    :cond_3
    const p1, 0x7f12058f

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lsf/e;->e(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private w(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0804c9

    invoke-static {p2, p1, p3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_0
    return-void
.end method

.method private x(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private z(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;Landroid/view/ViewGroup;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/miui/antivirus/result/b;->g:I

    const/4 v2, 0x0

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_0

    :goto_0
    invoke-virtual {p2, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget v0, p0, Lcom/miui/antivirus/result/b;->g:I

    const/4 v1, 0x3

    const v3, 0x7f080f91

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    const/16 v1, 0x19

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_12

    const/16 v1, 0x28

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_a

    const/16 v1, 0x7531

    if-eq v0, v1, :cond_a

    const/16 v1, 0x7532

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/o;

    iget-boolean p4, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    const p5, 0x7f07066c

    const v0, 0x7f070a70

    if-eqz p4, :cond_4

    iget-boolean v1, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    if-eqz v1, :cond_4

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-virtual {p4, v2, v0, v2, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v1, 0x7f080f90

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-virtual {p4, v2, p5, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_5
    iget-boolean p4, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    if-eqz p4, :cond_6

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080f8c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-virtual {p4, v2, v2, v2, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_6
    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f080f8d

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p4, v2, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_2
    iget-object p4, p2, Lcom/miui/antivirus/result/o;->c:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/o;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/miui/antivirus/result/b;->h:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const p5, 0x7f0804c9

    if-nez p4, :cond_7

    iget-object p4, p0, Lcom/miui/antivirus/result/b;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/antivirus/result/o;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    sget-object v1, Lx4/o0;->h:Lrh/c;

    invoke-static {p4, v0, v1, p5}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto :goto_3

    :cond_7
    iget-object p4, p2, Lcom/miui/antivirus/result/o;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p4, p5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_3
    iget-object p4, p2, Lcom/miui/antivirus/result/o;->b:Lcom/miui/securitycenter/ad/view/AdImageView;

    instance-of p5, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p5, :cond_8

    move-object p5, p3

    check-cast p5, Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p5, p4, p1, p0}, Lcom/miui/antivirus/activity/MainActivity;->Q1(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V

    iget p1, p0, Lcom/miui/antivirus/result/b;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq2/b$b;->r(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p2, Lcom/miui/antivirus/result/o;->d:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/miui/antivirus/result/b;->I:Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->e:Landroid/widget/TextView;

    const p4, 0x7f1200cc

    new-array p5, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->J:Ljava/lang/String;

    aput-object v0, p5, v2

    invoke-virtual {p3, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object p4, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result p1

    iget-object p4, p2, Lcom/miui/antivirus/result/o;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p2, Lcom/miui/antivirus/result/o;->i:Landroid/widget/Button;

    const p5, 0x7f1200a6

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p4, p0, Lcom/miui/antivirus/result/b;->x:Ljava/lang/String;

    if-eqz p4, :cond_15

    iget-object p4, p2, Lcom/miui/antivirus/result/o;->i:Landroid/widget/Button;

    invoke-direct {p0, p3, p4, p1}, Lcom/miui/antivirus/result/b;->v(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-object p1, p2, Lcom/miui/antivirus/result/o;->i:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw9/c;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/antivirus/result/i;->j(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "International Ads reportPV : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Advertisement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/antivirus/result/b;->S:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lw9/c;->j:Z

    if-nez v0, :cond_b

    goto/16 :goto_6

    :cond_b
    iget v0, p0, Lcom/miui/antivirus/result/b;->T:I

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->O:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/miui/antivirus/result/i;->b(Lw9/c;ILjava/lang/Object;)V

    iget-object v0, p1, Lw9/c;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lw9/c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lw9/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lw9/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v0, p1, Lw9/c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lw9/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, p1, Lw9/c;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object v1, v1, v2

    sget-object v3, Lx4/o0;->h:Lrh/c;

    const v4, 0x7f080954

    invoke-static {v1, v0, v3, v4}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_d
    iget-object v0, p1, Lw9/c;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object v1, v1, v6

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v1, v0, v3, p4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object p4, p1, Lw9/c;->f:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/miui/antivirus/result/b;->T:I

    iget-object v1, p0, Lcom/miui/antivirus/result/b;->O:Ljava/lang/Object;

    iget-object v3, p1, Lw9/c;->i:Landroid/view/View;

    invoke-static {p3, p4, v0, v1, v3}, Lcom/miui/antivirus/result/i;->k(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;Landroid/view/View;)V

    iget-object p4, p1, Lw9/c;->g:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->bringToFront()V

    iget-object p1, p1, Lw9/c;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/miui/antivirus/result/b;->U:Z

    if-eqz p1, :cond_15

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-virtual {p2, p1, p4}, Landroid/view/View;->measure(II)V

    new-instance p1, Lcom/miui/antivirus/result/b$a;

    const-string p4, "height"

    invoke-direct {p1, p0, p4}, Lcom/miui/antivirus/result/b$a;-><init>(Lcom/miui/antivirus/result/b;Ljava/lang/String;)V

    new-array p4, v5, [I

    aput v2, p4, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    aput p5, p4, v6

    invoke-static {p2, p1, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p4, 0x190

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-array p1, v5, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p2, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v2, p0, Lcom/miui/antivirus/result/b;->U:Z

    goto/16 :goto_b

    :cond_f
    :goto_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_b

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/u;

    iget-object p5, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/u;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/u;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object p5, p5, v2

    iget-object v0, p2, Lcom/miui/antivirus/result/u;->e:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p5, v0, v1, v3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object p5, p5, v6

    iget-object v0, p2, Lcom/miui/antivirus/result/u;->f:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p5, v0, v1, v3}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object p5, p5, v5

    iget-object v0, p2, Lcom/miui/antivirus/result/u;->g:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p5, v0, v1, p4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    iget-wide p4, p0, Lcom/miui/antivirus/result/b;->j:J

    const-wide/16 v0, -0x1

    cmp-long p4, p4, v0

    if-eqz p4, :cond_11

    iget-object p4, p2, Lcom/miui/antivirus/result/u;->d:Landroid/widget/TextView;

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p2, Lcom/miui/antivirus/result/u;->d:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->k:Ljava/lang/String;

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p2, Lcom/miui/antivirus/result/u;->b:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->k:Ljava/lang/String;

    invoke-static {p4, p5, v0}, Ll4/n;->h(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget-object p4, p2, Lcom/miui/antivirus/result/u;->d:Landroid/widget/TextView;

    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    move-object p4, p3

    check-cast p4, Lcom/miui/antivirus/activity/MainActivity;

    iget-object p2, p2, Lcom/miui/antivirus/result/u;->e:Landroid/widget/ImageView;

    goto :goto_9

    :cond_12
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/w;

    iget-object p1, p1, Lcom/miui/antivirus/result/w;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-direct {p0, p3, p1}, Lcom/miui/antivirus/result/b;->d(Landroid/content/Context;Lcom/miui/securitycenter/ad/view/AdDownloadView;)V

    goto :goto_a

    :cond_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/x;

    iget-object p5, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/x;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/x;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object p5, p5, v2

    iget-object v0, p2, Lcom/miui/antivirus/result/x;->d:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_8

    :cond_14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/x;

    iget-object p5, p2, Lcom/miui/antivirus/result/y;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/x;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->d:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p2, Lcom/miui/antivirus/result/x;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->e:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/miui/antivirus/result/b;->i:[Ljava/lang/String;

    aget-object p5, p5, v2

    iget-object v0, p2, Lcom/miui/antivirus/result/x;->d:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :goto_8
    invoke-static {p5, v0, v1, p4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    move-object p4, p3

    check-cast p4, Lcom/miui/antivirus/activity/MainActivity;

    iget-object p2, p2, Lcom/miui/antivirus/result/x;->d:Landroid/widget/ImageView;

    :goto_9
    check-cast p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p4, p2, p1, p0}, Lcom/miui/antivirus/activity/MainActivity;->Q1(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V

    :goto_a
    iget p1, p0, Lcom/miui/antivirus/result/b;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq2/b$b;->r(Ljava/lang/String;)V

    :cond_15
    :goto_b
    const-string p1, "-41"

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->j(Ljava/lang/String;)Lv2/a;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lw2/a;->d(Landroid/content/Context;Lv2/a;)V

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAdAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAppSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAdAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/b;->E:Z

    return v0
.end method

.method public getAdDeeplink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFloatCardData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/result/b;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

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

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e0525

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0e0483

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/antivirus/result/b;->T:I

    invoke-static {v0}, Lcom/miui/antivirus/result/i;->f(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0e0488

    goto :goto_0

    :cond_2
    :pswitch_1
    invoke-static {v0}, Lcom/miui/securitycenter/ad/view/b;->a(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0487

    goto :goto_0

    :cond_4
    const v0, 0x7f0e0485

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadPause()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antivirus/result/b;->getAdPackageName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/miui/antivirus/result/b;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/e;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->H:[Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/b;->b:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    iget v1, p0, Lcom/miui/antivirus/result/b;->g:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7531

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "CLICK"

    sparse-switch v2, :sswitch_data_0

    invoke-static {p0, v0}, Lx4/p;->c(Lx4/p$a;Landroid/content/Context;)V

    const-string p1, "-421"

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/miui/antivirus/result/b;->L:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/antivirus/result/b;->K:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/antivirus/result/b;->M:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Leg/i;->e(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    :sswitch_3
    invoke-static {p0}, Lx4/p;->a(Lx4/p$a;)V

    goto :goto_2

    :sswitch_4
    invoke-static {}, Lef/d0;->a()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/b;->m()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/antivirus/result/b;->e(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/miui/antivirus/result/b;->g(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V

    goto :goto_2

    :sswitch_5
    invoke-static {p0, v0}, Lx4/p;->b(Lx4/p$a;Landroid/content/Context;)V

    const-string p1, "-422"

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->j(Ljava/lang/String;)Lv2/a;

    move-result-object v1

    invoke-static {v3, p0}, Lcom/miui/antivirus/result/c0;->d(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lw2/a;->d(Landroid/content/Context;Lv2/a;)V

    goto :goto_4

    :cond_2
    :goto_3
    invoke-static {p1}, Lcom/miui/antivirus/result/i;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->A(Landroid/view/View;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/miui/antivirus/result/b;->i()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->O:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/antivirus/result/i;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b01d8 -> :sswitch_5
        0x7f0b025b -> :sswitch_4
        0x7f0b0c25 -> :sswitch_4
        0x7f0b0c4d -> :sswitch_5
        0x7f0b0c4f -> :sswitch_3
        0x7f0b0c89 -> :sswitch_2
        0x7f0b0cb3 -> :sswitch_1
        0x7f0b0cb9 -> :sswitch_0
    .end sparse-switch
.end method

.method public q()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/b;->G:[Ljava/lang/String;

    return-object v0
.end method

.method public trackAdDeeplinkLauncher(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/b;->B(Landroid/content/Context;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b;->Q:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b;->w:Ljava/lang/String;

    return-void
.end method
