.class public Lcom/miui/networkassistant/ui/view/NetworkSpeedView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkSpeedView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTvNumber:Landroid/widget/TextView;

.field private mTvUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mContext:Landroid/content/Context;

    const p2, 0x7f0e0391

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b0825

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvNumber:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0b0d3b

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvUnit:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvNumber:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/TypefaceHelper;->getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->updateNetworkSpeed(J)V

    return-void
.end method


# virtual methods
.method public updateNetworkSpeed(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvNumber:Landroid/widget/TextView;

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvUnit:Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/NetworkSpeedView;->mTvNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
