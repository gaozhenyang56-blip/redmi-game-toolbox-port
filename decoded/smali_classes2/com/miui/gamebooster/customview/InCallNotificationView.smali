.class public Lcom/miui/gamebooster/customview/InCallNotificationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/customview/InCallNotificationView;)Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->d:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->d:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->a:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b01f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b037f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gamebooster/customview/InCallNotificationView$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/InCallNotificationView$a;-><init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/customview/InCallNotificationView$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/InCallNotificationView$b;-><init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
