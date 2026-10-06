.class public Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/AdvCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvViewHolder"
.end annotation


# instance fields
.field private downloadCount:Landroid/widget/TextView;

.field private ivBanner1:Landroid/widget/ImageView;

.field private ivBanner2:Landroid/widget/ImageView;

.field private ivBanner3:Landroid/widget/ImageView;

.field private ivBigBanner:Landroid/widget/ImageView;

.field private loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

.field option:Lrh/c;

.field private viewClose:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lx4/o0;->h:Lrh/c;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    instance-of v0, p1, Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    :cond_0
    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->viewClose:Landroid/view/View;

    const v0, 0x7f0b0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    const v0, 0x7f0b053a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    const v0, 0x7f0b053b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    const v0, 0x7f0b053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    const v0, 0x7f0b0341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->downloadCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060cdc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    invoke-static {p1}, Lx4/h0;->b(Landroid/view/View;)Z

    return-void
.end method

.method private bindLoadData(Lcom/miui/common/card/models/AdvCardModel;ILandroid/view/View$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v1}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iget-object v3, p1, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    iget-object v3, p1, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setSummary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p1}, Lcom/miui/common/card/models/AdvCardModel;->access$200(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDeveloper(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12152e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p1}, Lcom/miui/common/card/models/AdvCardModel;->access$300(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setDsp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {p1}, Lcom/miui/common/card/models/AdvCardModel;->access$400(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->setVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f1200aa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBigImageView()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v5, Lx4/o0;->c:Lrh/c;

    invoke-direct {p0, v2, v3, v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg1()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg2()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {v3}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getImg3()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V

    invoke-static {p1}, Lcom/miui/common/card/models/AdvCardModel;->access$500(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0x19

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v4, 0x7f0804be

    goto :goto_0

    :cond_1
    :pswitch_0
    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v4, 0x7f0804bd

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    const v4, 0x7f0804bf

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v3, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/miui/securityscan/BaseAdvActivity;

    check-cast v1, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v2, v1, p2, p1}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    instance-of v1, v2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/miui/securityscan/BaseAdvActivity;

    check-cast v2, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {v1, v2, p2, p1}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPermissionView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getPrivacyView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getAdXView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getIntroduceView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getCancelView()Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-virtual {p2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->getBtnView()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getAdPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsf/e;->g(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->l()V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->o()V

    :goto_3
    if-eqz p2, :cond_6

    invoke-static {p1, v0, p2, p1, v1}, Lcom/miui/common/card/models/AdvCardModel;->access$600(Lcom/miui/common/card/models/AdvCardModel;Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/common/card/models/AdvCardModel;Z)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method private fillNormalData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;ILcom/miui/common/card/models/AdvCardModel;Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    invoke-static {p4, v0, v2, p4, v1}, Lcom/miui/common/card/models/AdvCardModel;->access$600(Lcom/miui/common/card/models/AdvCardModel;Landroid/content/Context;Landroid/widget/TextView;Lcom/miui/common/card/models/AdvCardModel;Z)V

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->viewClose:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p5, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0804c9

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    invoke-static {p2, p5, v2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p2, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    instance-of p2, p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/BaseAdvActivity;

    iget-object p5, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    check-cast p5, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p2, p5, p3, p4}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_2
    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p2, p2, v1

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    invoke-static {p2, p5, v2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    instance-of p2, p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/BaseAdvActivity;

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    check-cast p5, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p2, p5, p3, p4}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_3
    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 p5, 0x1

    aget-object p2, p2, p5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p2, p2, p5

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    invoke-static {p2, p5, v2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    instance-of p2, p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/BaseAdvActivity;

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    check-cast p5, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p2, p5, p3, p4}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_4
    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 p5, 0x2

    aget-object p2, p2, p5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p2, p2, p5

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    invoke-static {p2, p5, v2, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    instance-of p2, p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/BaseAdvActivity;

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    check-cast p5, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p2, p5, p3, p4}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_5
    iget-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    instance-of p5, p4, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;

    if-eqz p5, :cond_6

    instance-of p2, p2, Lcom/miui/securitycenter/ad/view/AdImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/BaseAdvActivity;

    iget-object p5, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    check-cast p5, Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-virtual {p2, p5, p3, p4}, Lcom/miui/securityscan/BaseAdvActivity;->h0(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_6
    iget-object p2, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f080494

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object p1, p1, v1

    iget-object p3, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    sget-object p4, Lx4/o0;->c:Lrh/c;

    invoke-static {p1, p3, p4, p2}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Ljava/lang/String;Lrh/c;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0804c9

    invoke-static {p2, p1, p3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_0
    return-void
.end method

.method private setSafeClick(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v6, p2

    check-cast v6, Lcom/miui/common/card/models/AdvCardModel;

    new-instance v5, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder$1;

    invoke-direct {v5, p0, v6}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "AdvCardModel"

    const-string v1, "Chinese Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->loadView:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, p3, v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->bindLoadData(Lcom/miui/common/card/models/AdvCardModel;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->fillNormalData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;ILcom/miui/common/card/models/AdvCardModel;Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {v6}, Lcom/miui/common/card/models/AdvCardModel;->getTemplate()I

    move-result p1

    const/16 p2, 0x28

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->downloadCount:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {v6}, Lcom/miui/common/card/models/AdvCardModel;->access$000(Lcom/miui/common/card/models/AdvCardModel;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->downloadCount:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->downloadCount:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/miui/common/card/models/AdvCardModel;->access$100(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    iget-object p2, v6, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/common/card/models/AdvCardModel;->access$100(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ll4/n;->h(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->downloadCount:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIconDisplayOption(Lrh/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lrh/c;

    return-void
.end method
