.class public Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubbleViewInfoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubbleViewInfo"
.end annotation


# instance fields
.field appIconBitmap:Landroid/graphics/Bitmap;

.field bubble:Lcom/miui/bubbles/Bubble;

.field bubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

.field flyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

.field imageView:Lcom/miui/bubbles/views/BubbleImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 5

    new-instance v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    invoke-direct {v0}, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    invoke-virtual {p3}, Lcom/miui/bubbles/Bubble;->isInflated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/miui/bubbles/R$layout;->bubble_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/bubbles/views/BubbleImageView;

    iput-object p2, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/miui/bubbles/views/BubbleImageView;

    new-instance p2, Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1}, Lcom/miui/bubbles/BubbleController;->getPositioner()Lcom/miui/bubbles/BubblePositioner;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/miui/bubbles/views/BubbleMessageView;-><init>(Landroid/content/Context;Lcom/miui/bubbles/BubblePositioner;)V

    iput-object p2, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleIconSize()I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p3}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0xc2200

    iget v4, p3, Lcom/miui/bubbles/Bubble;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p3}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz v2, :cond_1

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/bubbles/BubbleViewInfoTask;->getBitmapByDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p3}, Lcom/miui/bubbles/Bubble;->getFlyoutMessage()Lcom/miui/bubbles/Bubble$FlyoutMessage;

    move-result-object p2

    iput-object p2, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/miui/bubbles/Bubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, v1}, Lcom/miui/bubbles/BubbleViewInfoTask;->loadIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Lcom/miui/bubbles/Bubble$FlyoutMessage;->largeIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iget-object v1, p2, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0, v1}, Lcom/miui/bubbles/BubbleViewInfoTask;->loadIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p2, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    iget-object p0, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iput-object p1, p0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->appIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    iput-object p3, v0, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubble:Lcom/miui/bubbles/Bubble;

    return-object v0
.end method
