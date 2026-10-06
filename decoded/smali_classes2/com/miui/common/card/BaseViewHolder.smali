.class public Lcom/miui/common/card/BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field protected actionButton:Landroid/widget/Button;

.field protected handler:Landroid/os/Handler;

.field protected imageView:Landroid/widget/ImageView;

.field protected mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field protected summaryView:Landroid/widget/TextView;

.field protected titleView:Landroid/widget/TextView;

.field protected tvButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0b0b21

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    const v0, 0x7f0b0c4e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060cdc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/common/card/BaseViewHolder;->lambda$showFirstAidItemLongClickDialog$1(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->showAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/card/BaseViewHolder;->lambda$showFirstAidItemLongClickDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$showFirstAidItemLongClickDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showFirstAidItemLongClickDialog$1(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->showFirstAidAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    return-void
.end method

.method private showAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f120475

    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/miui/common/card/BaseViewHolder$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/common/card/BaseViewHolder$3;-><init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    const p1, 0x104000a

    invoke-virtual {p3, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showFirstAidAlertInfoDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f120475

    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/miui/common/card/BaseViewHolder$2;

    invoke-direct {p3, p0, p2}, Lcom/miui/common/card/BaseViewHolder$2;-><init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/securityscan/model/AbsModel;)V

    const p2, 0x104000a

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/common/card/BaseViewHolder;->fillDefault(Lcom/miui/common/card/models/BaseCardModel;)V

    return-void
.end method

.method protected fillDefault(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getSpannedTitle()Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/BaseViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p1}, Lcom/miui/common/card/models/BaseCardModel;->getButton()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v2, p1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public init(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    return-void
.end method

.method public showFirstAidItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1208a4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1208a3

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/a;

    invoke-direct {v1}, Lcom/miui/common/card/a;-><init>()V

    const v2, 0x7f120499

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/common/card/b;-><init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    const p1, 0x7f120f48

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public showManualItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f120474

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/common/card/BaseViewHolder$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder$1;-><init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
