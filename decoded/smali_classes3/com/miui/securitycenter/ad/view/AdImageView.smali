.class public Lcom/miui/securitycenter/ad/view/AdImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final INVALIDATE:I = 0x1f4

.field public static final INVALIDATE_ID:I = -0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mInvalidateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/securitycenter/ad/view/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securitycenter/ad/view/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x64

    iput p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    new-instance p1, Lcom/miui/securitycenter/ad/view/AdImageView$a;

    invoke-direct {p1, p0}, Lcom/miui/securitycenter/ad/view/AdImageView$a;-><init>(Lcom/miui/securitycenter/ad/view/AdImageView;)V

    iput-object p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mInvalidateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/securitycenter/ad/view/AdImageView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    return p1
.end method


# virtual methods
.method protected needStat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    iget v0, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mInvalidateHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mInvalidateHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public startTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securitycenter/ad/view/AdImageView;->needStat()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    iput-object p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/miui/securitycenter/ad/view/AdImageView;->mId:I

    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
