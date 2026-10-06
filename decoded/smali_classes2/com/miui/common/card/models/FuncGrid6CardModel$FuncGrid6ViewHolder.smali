.class public Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncGrid6CardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncGrid6ViewHolder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FuncGrid6ViewHolder"


# instance fields
.field private context:Landroid/content/Context;

.field private functionView:Landroid/view/View;

.field private iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private ivRedPointView:Landroid/widget/ImageView;

.field private menuChangeListener:Lsf/i$d;

.field private menuFuncBinder:Lsf/i;

.field private options:Lrh/c;

.field private smallIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private smallIconView1:Landroid/widget/ImageView;

.field private smallIconView2:Landroid/widget/ImageView;

.field private smallIconView3:Landroid/widget/ImageView;

.field private smallIconViews:[Landroid/widget/ImageView;

.field private smallIconsViewStub:Landroid/view/ViewStub;

.field private summaryTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;

.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconMap:Ljava/util/Map;

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080823

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->options:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->initView(Landroid/view/View;)V

    new-instance p1, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;-><init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)V

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lsf/i$d;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshPowerCenter(ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView2:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView3:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView3:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;[Landroid/widget/ImageView;)[Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lsf/i;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Lsf/i$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lsf/i$d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshCleanMaster(ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshSecurityScan(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshNetworkAssist(ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshOptimizemanage(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshDeepClean(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView1:Landroid/widget/ImageView;

    return-object p1
.end method

.method private fillIconViews(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Lcom/miui/common/card/GridFunctionData;)V
    .locals 1

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->options:Lrh/c;

    invoke-static {p2, p1, v0}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_0
    return-void
.end method

.method private getNewAntispamCount()I
    .locals 2

    invoke-static {}, Le2/b;->e()I

    move-result v0

    invoke-static {}, Le2/b;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView:Landroid/view/View;

    invoke-static {v0}, Lx4/h0;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateFunctionView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b060c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0ce1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0aaf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconsViewStub:Landroid/view/ViewStub;

    const v0, 0x7f0b062b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060cdc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 9

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lsf/i$e;->h:Lsf/i$e;

    invoke-virtual {v2}, Lsf/i$e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getNewAntispamCount()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_1

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f100072

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1, v4, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v6

    goto :goto_2

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lsf/i$e;->h:Lsf/i$e;

    invoke-virtual {p1}, Lsf/i$e;->c()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move p1, v5

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const-string p1, "antispam_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    const-string p1, "antispam_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_5
    :goto_4
    return-void
.end method

.method private refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 11

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2600(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)[Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v2, Lsf/i$e;->i:Lsf/i$e;

    invoke-virtual {v2}, Lsf/i$e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lpf/g;->l()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_4

    if-gtz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lpf/g;->b()I

    move-result p1

    if-ne p1, v9, :cond_2

    invoke-direct {p0, v4, v3, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->setSmallIcons([Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    aget-object p1, v4, v7

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object p1, v4, v9

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object p1, v4, v10

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :goto_1
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100075

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p1, v2, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v9

    goto :goto_4

    :cond_4
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lsf/i$e;->i:Lsf/i$e;

    invoke-virtual {p1}, Lsf/i$e;->c()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v4, :cond_6

    aget-object p1, v4, v7

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object p1, v4, v9

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object p1, v4, v10

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    move p1, v10

    :goto_4
    if-eqz p1, :cond_7

    move v8, v10

    :cond_7
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    const-string p1, "appmanager_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v9, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_5

    :cond_8
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    const-string p1, "appmanager_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v9, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_9
    :goto_5
    return-void
.end method

.method private refreshCleanMaster(ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 9

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/miui/common/card/models/FunctionCardModel;->RESOURCE:Landroid/content/res/Resources;

    const v4, 0x7f120dc8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p2, v4

    if-lez p1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, p2, p3, v6}, Lx4/j0;->d(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p3, 0x7f120db6

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez p1, :cond_4

    const-string p1, "clean_master_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide p1

    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v7

    cmp-long p3, p1, v4

    if-lez p3, :cond_2

    cmp-long p3, v7, v4

    if-lez p3, :cond_2

    sub-long v4, p1, v7

    const-wide/16 v7, 0x64

    mul-long/2addr v4, v7

    div-long/2addr v4, p1

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120db8

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120db5

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez p1, :cond_3

    const-string p1, "clean_master_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_3
    move v2, v6

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private refreshDeepClean(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 12

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v5

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    const/4 v10, 0x0

    if-lez v9, :cond_0

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v8, 0x7f120dc7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    sub-long v5, v3, v5

    const-string v11, "%.1f"

    invoke-static {v7, v5, v6, v11}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const-string v6, "%.0f"

    invoke-static {v5, v3, v4, v6}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v10, 0x8

    :goto_1
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "deepclean_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    const-string p1, "deepclean_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private refreshNetworkAssist(ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 8

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object p5

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f120dcb

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {p2, v6, v7, v4}, Lx4/j0;->c(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v6, 0x0

    cmp-long p3, p3, v6

    if-lez p3, :cond_1

    xor-int/2addr p1, v5

    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p4, 0x7f120dce

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {p3, p4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p3, 0x7f120dcc

    new-array p4, v5, [Ljava/lang/Object;

    aput-object p2, p4, v4

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move p1, v5

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120db9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object p2, v3

    move p1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v0, v2, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    const-string p1, "network_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v5, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_2

    :cond_5
    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    const-string p1, "network_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v5, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_6
    :goto_2
    return-void
.end method

.method private refreshOptimizemanage(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;J)V
    .locals 7

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lsf/i$e;->j:Lsf/i$e;

    invoke-virtual {v2}, Lsf/i$e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v2, p3, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v2, 0x7f120dbe

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lx4/i1;->a(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v5

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v6

    goto :goto_3

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    sget-object p1, Lsf/i$e;->j:Lsf/i$e;

    invoke-virtual {p1}, Lsf/i$e;->c()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move p1, v5

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p3

    iget-boolean p3, p3, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    const-string p1, "optimizemanage_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p3

    iget-boolean p3, p3, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez p3, :cond_6

    if-nez p1, :cond_6

    const-string p1, "optimizemanage_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_6
    :goto_5
    return-void
.end method

.method private refreshPowerCenter(ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 7

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v5, 0x7f120dd5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v2, :cond_4

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120dc0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120dc2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v6

    goto :goto_1

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const p2, 0x7f120dbf

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move p1, v5

    :goto_1
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez p2, :cond_7

    if-eqz p1, :cond_7

    const-string p1, "powercenter_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_3

    :cond_7
    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez p2, :cond_8

    if-nez p1, :cond_8

    const-string p1, "powercenter_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v6, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_8
    :goto_3
    return-void
.end method

.method private refreshSecurityScan(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 10

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lsf/i$e;->g:Lsf/i$e;

    invoke-virtual {v2}, Lsf/i$e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lsf/i$e;->g:Lsf/i$e;

    invoke-virtual {p1}, Lsf/i$e;->c()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move p1, v2

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->w()I

    move-result p1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/securityscan/scanner/ScoreManager;->v()I

    move-result v4

    if-gtz p1, :cond_4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/16 v6, 0x0

    const-string v4, "key_latest_virus_scan_date"

    invoke-static {p1, v4, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v8, v6

    long-to-int p1, v8

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100073

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, p1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    :goto_2
    const/4 v6, 0x0

    const v7, 0x7f100074

    if-lez p1, :cond_5

    if-lez v4, :cond_5

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v4, v7, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    if-lez p1, :cond_6

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v4, v7, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    if-lez v4, :cond_7

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {p1, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move p1, v5

    :goto_5
    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1, v3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    const-string p1, "antivirus_red"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v5, p1, Lcom/miui/common/card/GridFunctionData;->isRecordRedState:Z

    goto :goto_7

    :cond_9
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    const-string p1, "antivirus_normal"

    invoke-static {p1}, Lqf/c;->K(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iput-boolean v5, p1, Lcom/miui/common/card/GridFunctionData;->isRecordNormalState:Z

    :cond_a
    :goto_7
    return-void
.end method

.method private setSmallIcons([Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071e0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f0804c6

    const-string v4, "pkg_icon://"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v1, v5, :cond_1

    aget-object v1, p1, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v7

    sget-object p3, Lx4/o0;->d:Lrh/c;

    invoke-static {p2, p1, p3, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    aget-object v1, p1, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v6

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object v0, p1, v7

    sget-object v1, Lx4/o0;->d:Lrh/c;

    invoke-static {p2, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v6

    goto :goto_0

    :cond_2
    aget-object v1, p1, v5

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v6

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    aget-object v1, p1, v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object v0, p1, v7

    sget-object v1, Lx4/o0;->d:Lrh/c;

    invoke-static {p2, v0, v1, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object v0, p1, v6

    invoke-static {p2, v0, v1, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v5

    :goto_0
    invoke-static {p2, p1, v1, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :goto_1
    return-void
.end method

.method private updateFunctionView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0807c8

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071aa3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071aa2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071aa1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060163

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060d30

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060d2f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    instance-of p1, p2, Lsf/i;

    if-eqz p1, :cond_0

    check-cast p2, Lsf/i;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lsf/i$d;

    invoke-virtual {p2, p1}, Lsf/i;->e(Lsf/i$d;)V

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 10

    move-object p1, p2

    check-cast p1, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getGridFunctionData()Lcom/miui/common/card/GridFunctionData;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    const v3, 0x7f060d30

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    const v3, 0x7f060d2f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v7, 0x7f120dc7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    sub-long v0, v3, v0

    const-string v9, "%.1f"

    invoke-static {v6, v0, v1, v9}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const-string v2, "%.0f"

    invoke-static {v1, v3, v4, v2}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-virtual {v0, p3}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->fillIconViews(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Lcom/miui/common/card/GridFunctionData;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconView1:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconsViewStub:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$2;-><init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;Ljava/lang/String;Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconsViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v8, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;-><init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/ImageView;Lcom/miui/common/card/GridFunctionData;)V

    invoke-interface {v7, p3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v8, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;-><init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/ImageView;Lcom/miui/common/card/GridFunctionData;)V

    invoke-interface {v7, p3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v0, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lsf/i$d;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsf/i;->i(Lsf/i$d;Ljava/util/Set;)V

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v8, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->ivRedPointView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;-><init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/ImageView;Lcom/miui/common/card/GridFunctionData;)V

    invoke-interface {v7, p3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isDefaultStatShow()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lqf/c;->w0(Landroid/content/Context;Lcom/miui/common/card/GridFunctionData;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lsf/i$d;

    iget-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lsf/i;->i(Lsf/i$d;Ljava/util/Set;)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const-string v0, "00001"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    instance-of v1, p1, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_1f

    check-cast p1, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enter_homepage_way"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "track_gamebooster_enter_way"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v3, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    const-string v3, "app_manager_click"

    invoke-static {v3, v6}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v3, "app_manager_click_time"

    invoke-static {v4, v5}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v4, :cond_2

    invoke-static {}, Lpf/g;->k()I

    move-result v0

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    iget-boolean v5, v4, Lsf/i;->k:Z

    if-nez v5, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "appmanager_red"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "appmanager_normal"

    :goto_1
    iput-boolean v6, v4, Lsf/i;->k:Z

    :cond_2
    invoke-direct {p0, v6, v3}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_3
    const-string v3, "enter_way"

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    :cond_4
    const-string v3, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v3, :cond_18

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getNewAntispamCount()I

    move-result v0

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    iget-boolean v5, v4, Lsf/i;->l:Z

    if-eqz v5, :cond_5

    if-gtz v0, :cond_5

    const-string v0, "antispam_normal"

    goto :goto_2

    :cond_5
    const-string v0, "antispam_red"

    :goto_2
    iput-boolean v6, v4, Lsf/i;->l:Z

    :cond_6
    invoke-direct {p0, v6, v3}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    goto/16 :goto_7

    :cond_7
    const-string v3, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v3, :cond_18

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v4, :cond_a

    iget-boolean v0, v4, Lsf/i;->q:Z

    if-nez v0, :cond_9

    iget-wide v7, v4, Lsf/i;->r:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "optimizemanage_red"

    goto :goto_4

    :cond_9
    :goto_3
    const-string v0, "optimizemanage_normal"

    :goto_4
    iput-boolean v6, v4, Lsf/i;->q:Z

    :cond_a
    const-wide/16 v4, 0x1

    invoke-direct {p0, v6, v3, v4, v5}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshOptimizemanage(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;J)V

    goto/16 :goto_7

    :cond_b
    const-string v3, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v3, :cond_e

    iget-boolean v0, v3, Lsf/i;->d:Z

    if-nez v0, :cond_d

    iget-wide v7, v3, Lsf/i;->e:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_c

    goto :goto_5

    :cond_c
    const-string v0, "clean_master_red"

    goto/16 :goto_7

    :cond_d
    :goto_5
    const-string v0, "clean_master_normal"

    goto/16 :goto_7

    :cond_e
    const-string v3, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v3, :cond_10

    iget-boolean v0, v3, Lsf/i;->g:Z

    if-nez v0, :cond_f

    iget v0, v3, Lsf/i;->f:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_f

    iget-boolean v0, v3, Lsf/i;->i:Z

    if-nez v0, :cond_f

    const-string v0, "powercenter_red"

    goto/16 :goto_7

    :cond_f
    const-string v0, "powercenter_normal"

    goto/16 :goto_7

    :cond_10
    const-string v3, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v3, :cond_12

    iget-boolean v0, v3, Lsf/i;->j:Z

    if-eqz v0, :cond_11

    const-string v0, "antivirus_normal"

    goto :goto_7

    :cond_11
    const-string v0, "antivirus_red"

    goto :goto_7

    :cond_12
    const-string v3, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v3, :cond_14

    iget-boolean v0, v3, Lsf/i;->m:Z

    if-nez v0, :cond_13

    iget-boolean v0, v3, Lsf/i;->n:Z

    if-eqz v0, :cond_13

    iget-wide v7, v3, Lsf/i;->o:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_13

    const-string v0, "network_red"

    goto :goto_7

    :cond_13
    const-string v0, "network_normal"

    goto :goto_7

    :cond_14
    const-string v3, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v3, :cond_18

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    if-eqz v4, :cond_17

    iget-boolean v0, v4, Lsf/i;->t:Z

    if-eqz v0, :cond_15

    const-string v4, "deepclean_normal"

    goto :goto_6

    :cond_15
    const-string v4, "deepclean_red"

    :goto_6
    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lpf/i;->o(Landroid/content/Context;J)V

    :cond_16
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lsf/i;

    iput-boolean v6, v0, Lsf/i;->t:Z

    move-object v0, v4

    :cond_17
    invoke-direct {p0, v6, v3}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshDeepClean(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_18
    :goto_7
    if-eqz v0, :cond_19

    invoke-static {v0}, Lqf/c;->J(Ljava/lang/String;)V

    :cond_19
    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v2, 0x7f120210

    invoke-static {v0, v2}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_1b
    :goto_8
    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-static {v0}, Lqf/c;->v0(Ljava/lang/String;)V

    :cond_1d
    const-string p1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lqf/c;->H(Landroid/content/Context;)V

    :cond_1e
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const-string v0, "data_config"

    invoke-static {p1, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p1

    const-string v0, "is_homepage_operated"

    invoke-virtual {p1, v0, v6}, Luf/b;->p(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    const-string v0, "FuncGrid6ViewHolder"

    const-string v1, "onClick error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_9
    return-void
.end method
