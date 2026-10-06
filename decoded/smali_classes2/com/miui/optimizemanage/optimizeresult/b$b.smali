.class public Lcom/miui/optimizemanage/optimizeresult/b$b;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lrh/c;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Lcom/miui/securitycenter/ad/view/AdDownloadView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->a:Lrh/c;

    instance-of v0, p1, Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    :cond_0
    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->d:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->j:Landroid/widget/Button;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->f:Landroid/widget/ImageView;

    const v0, 0x7f0b053a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b053b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->i:Landroid/widget/ImageView;

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060cdc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->h:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_5
    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method private b(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/b;ILandroid/view/View$OnClickListener;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/miui/optimizemanage/optimizeresult/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->a:Lrh/c;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/b$b;->f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iget-object v2, p2, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iget-object v2, p2, Lcom/miui/optimizemanage/optimizeresult/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->d(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDeveloper(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12152e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/b$b;->h(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->e(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDsp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->f(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1200aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/b$b;->h(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1200a9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/miui/optimizemanage/optimizeresult/b$b;->h(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBigImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v4, Lx4/o0;->c:Lrh/c;

    invoke-direct {p0, v1, v2, v4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg1()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2, v4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg2()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p2, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg3()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p2, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget v2, p2, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v3, 0x7f0804be

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v3, 0x7f0804bd

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v3, 0x7f0804bf

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    instance-of v2, v0, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast v0, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v1, v0, p3, p2}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    goto :goto_2

    :cond_3
    instance-of v0, v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v0, v1, p3, p2}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->g(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->g(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->g(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIntroduceView()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->g(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getCancelView()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->g(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p3

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result p3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l()V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->o()V

    :goto_3
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBtnView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/b$b;->e(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/optimizemanage/optimizeresult/b;Z)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/view/View;ILcom/miui/optimizemanage/optimizeresult/b;Landroid/view/View$OnClickListener;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x3

    const-string v2, ""

    if-eqz v0, :cond_4

    iget v3, p3, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    if-eq v3, v1, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p3, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p3, Lcom/miui/optimizemanage/optimizeresult/b;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->c(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->c(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p3, Lcom/miui/optimizemanage/optimizeresult/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v2

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p3, Lcom/miui/optimizemanage/optimizeresult/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->j:Landroid/widget/Button;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->j:Landroid/widget/Button;

    invoke-direct {p0, p1, v0, p3, v4}, Lcom/miui/optimizemanage/optimizeresult/b$b;->e(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/optimizemanage/optimizeresult/b;Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->j:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->k:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->e:Landroid/widget/ImageView;

    const v0, 0x7f0804c9

    if-eqz p4, :cond_a

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->f:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->a:Lrh/c;

    invoke-static {p4, v2, v3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->e:Landroid/widget/ImageView;

    instance-of v2, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v2, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v2, p4, p2, p3}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_a
    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->g:Landroid/widget/ImageView;

    if-eqz p4, :cond_b

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p4, p4, v4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_b

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p4, p4, v4

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->g:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->c:Lrh/c;

    invoke-static {p4, v2, v3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->g:Landroid/widget/ImageView;

    instance-of v2, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v2, :cond_b

    move-object v2, p1

    check-cast v2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v2, p4, p2, p3}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_b
    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->h:Landroid/widget/ImageView;

    if-eqz p4, :cond_c

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p4, p4, v2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p4, p4, v2

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->h:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->c:Lrh/c;

    invoke-static {p4, v2, v3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->h:Landroid/widget/ImageView;

    instance-of v2, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v2, :cond_c

    move-object v2, p1

    check-cast v2, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v2, p4, p2, p3}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_c
    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->i:Landroid/widget/ImageView;

    if-eqz p4, :cond_d

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p4, p4, v2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p4, p4, v2

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->i:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->c:Lrh/c;

    invoke-static {p4, v2, v3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->i:Landroid/widget/ImageView;

    instance-of v0, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v0, p4, p2, p3}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_d
    iget-object p4, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->f:Landroid/widget/ImageView;

    if-eqz p4, :cond_f

    iget v0, p3, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    if-ne v0, v1, :cond_e

    instance-of v0, p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    check-cast p4, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v0, p4, p2, p3}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->p0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/optimizemanage/optimizeresult/b;)V

    :cond_e
    iget-object p2, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p2, p2, v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    new-instance p2, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f080494

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p3, Lcom/miui/optimizemanage/optimizeresult/b;->j:[Ljava/lang/String;

    aget-object p1, p1, v4

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->f:Landroid/widget/ImageView;

    sget-object p4, Lx4/o0;->c:Lrh/c;

    invoke-static {p1, p3, p4, p2}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/widget/TextView;ZZLcom/miui/optimizemanage/optimizeresult/b;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget p4, p5, Lcom/miui/optimizemanage/optimizeresult/b;->T:I

    if-eqz p4, :cond_3

    iget v2, p5, Lcom/miui/optimizemanage/optimizeresult/b;->U:I

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v0, p4, v2}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    iget p4, p5, Lcom/miui/optimizemanage/optimizeresult/b;->V:I

    if-eqz p4, :cond_3

    invoke-static {v0, p4, p4}, Lof/f;->a(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget p4, p5, Lcom/miui/optimizemanage/optimizeresult/b;->R:I

    if-eqz p4, :cond_3

    iget v2, p5, Lcom/miui/optimizemanage/optimizeresult/b;->S:I

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p4, 0x0

    if-eqz p3, :cond_4

    iget p3, p5, Lcom/miui/optimizemanage/optimizeresult/b;->P:I

    if-eqz p3, :cond_5

    :goto_2
    move p4, p3

    goto :goto_3

    :cond_4
    iget p3, p5, Lcom/miui/optimizemanage/optimizeresult/b;->Q:I

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_6
    const p3, 0x7f060159

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_7
    const p1, 0x7f0809da

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    return-void
.end method

.method private e(Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/optimizemanage/optimizeresult/b;Z)V
    .locals 8

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->g(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsf/h;->d(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0b0c4d

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v5, :cond_1

    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->h(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v2

    goto :goto_6

    :cond_3
    :goto_2
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p4

    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->g(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Lsf/e;->c(Ljava/lang/String;)I

    move-result p4

    const v3, 0x7f1206d5

    const/4 v4, -0x1

    if-eq p4, v4, :cond_7

    const/4 v6, 0x5

    if-eq p4, v6, :cond_6

    const/16 v6, 0xa

    if-eq p4, v6, :cond_5

    if-eq p4, v1, :cond_7

    const/4 v6, 0x2

    if-eq p4, v6, :cond_6

    const/4 v3, 0x3

    if-eq p4, v3, :cond_4

    iget-object p4, p3, Lcom/miui/optimizemanage/optimizeresult/b;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const p4, 0x7f120c6c

    :goto_4
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_5
    const p4, 0x7f12058f

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p4

    invoke-static {p3}, Lcom/miui/optimizemanage/optimizeresult/b;->g(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lsf/e;->e(Ljava/lang/String;)I

    move-result p4

    if-eq p4, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    move v6, v1

    move v1, v2

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/miui/optimizemanage/optimizeresult/b$b;->d(Landroid/content/Context;Landroid/widget/TextView;ZZLcom/miui/optimizemanage/optimizeresult/b;)V

    if-nez v0, :cond_8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private f(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0804c9

    invoke-static {p2, p1, p3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_0
    return-void
.end method

.method private g(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private h(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/b;

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/b$b$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/optimizemanage/optimizeresult/b$b$a;-><init>(Lcom/miui/optimizemanage/optimizeresult/b$b;Lcom/miui/optimizemanage/optimizeresult/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->l:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/optimizemanage/optimizeresult/b$b;->b(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/b;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/miui/optimizemanage/optimizeresult/b$b;->c(Landroid/view/View;ILcom/miui/optimizemanage/optimizeresult/b;Landroid/view/View$OnClickListener;)V

    :goto_0
    iget p1, p2, Lcom/miui/optimizemanage/optimizeresult/b;->i:I

    const/16 p3, 0x28

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->a(Lcom/miui/optimizemanage/optimizeresult/b;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->d:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->d:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->b(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->b:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->c(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->b(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Ll4/n;->h(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/b$b;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
