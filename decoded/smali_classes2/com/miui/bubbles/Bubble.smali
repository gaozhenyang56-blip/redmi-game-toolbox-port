.class public Lcom/miui/bubbles/Bubble;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/bubbles/BubbleViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/Bubble$FlyoutMessage;
    }
.end annotation


# instance fields
.field public bubbleEntry:Lcom/miui/bubbles/data/BubbleEntry;

.field public isRestored:Z

.field public mAppBounds:Landroid/graphics/Rect;

.field private mBubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

.field public mEdgeState:Lcom/miui/bubbles/data/EdgeState;

.field private mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

.field public mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

.field private mIconView:Lcom/miui/bubbles/views/BubbleImageView;

.field private mInflationTask:Lcom/miui/bubbles/BubbleViewInfoTask;

.field private mKey:Ljava/lang/String;

.field private mMainExecutor:Ljava/util/concurrent/Executor;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field public pinFloatingWindowFinalRoundCorner:F

.field public pinFloatingWindowPos:Landroid/graphics/Rect;

.field public smallWindowBounds:Landroid/graphics/Rect;

.field public stackId:I

.field public userId:I

.field public windowRoundCorner:F

.field public windowScaleX:F

.field public windowScaleY:F


# direct methods
.method public constructor <init>(Lcom/miui/bubbles/data/BubbleEntry;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/miui/bubbles/data/BubbleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/bubbles/Bubble;->mUid:I

    iput-object p1, p0, Lcom/miui/bubbles/Bubble;->bubbleEntry:Lcom/miui/bubbles/data/BubbleEntry;

    invoke-virtual {p1}, Lcom/miui/bubbles/data/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/bubbles/data/BubbleEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->smallWindowBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->pinFloatingWindowFinalRoundCorner:F

    iput p2, p0, Lcom/miui/bubbles/Bubble;->pinFloatingWindowFinalRoundCorner:F

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->stackId:I

    iput p2, p0, Lcom/miui/bubbles/Bubble;->stackId:I

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->userId:I

    iput p2, p0, Lcom/miui/bubbles/Bubble;->userId:I

    iget-object p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->mAppBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    iget-object p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget-object p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleX:F

    iput p2, p0, Lcom/miui/bubbles/Bubble;->windowScaleX:F

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleY:F

    iput p2, p0, Lcom/miui/bubbles/Bubble;->windowScaleY:F

    iget p2, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowRoundCorner:F

    iput p2, p0, Lcom/miui/bubbles/Bubble;->windowRoundCorner:F

    sget-object p2, Lcom/miui/bubbles/data/EdgeState;->UNDEFINE:Lcom/miui/bubbles/data/EdgeState;

    iput-object p2, p0, Lcom/miui/bubbles/Bubble;->mEdgeState:Lcom/miui/bubbles/data/EdgeState;

    iget-boolean p1, p1, Lcom/miui/bubbles/data/BubbleEntry;->isRestored:Z

    iput-boolean p1, p0, Lcom/miui/bubbles/Bubble;->isRestored:Z

    return-void
.end method

.method static extractFlyoutMessage(Lcom/miui/bubbles/data/BubbleEntry;)Lcom/miui/bubbles/Bubble$FlyoutMessage;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/bubbles/data/BubbleEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;

    invoke-direct {v0}, Lcom/miui/bubbles/Bubble$FlyoutMessage;-><init>()V

    invoke-virtual {p0}, Lcom/miui/bubbles/data/BubbleEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iput-object v4, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->largeIcon:Landroid/graphics/drawable/Icon;

    :try_start_0
    const-class v4, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "android.text"

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v0

    :cond_2
    const-class v4, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.messages"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    invoke-static {p0}, Lcom/miui/bubbles/a;->a([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/miui/bubbles/b;->a(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    :cond_4
    iput-object v1, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    :cond_5
    const-class v1, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.textLines"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_8

    array-length v1, p0

    if-lez v1, :cond_8

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    iput-object p0, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    return-object v0

    :cond_6
    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/bubbles/Bubble$FlyoutMessage;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-object v0
.end method

.method private isBubbleLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mInflationTask:Lcom/miui/bubbles/BubbleViewInfoTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs removeFromParent([Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method cleanupViews()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/bubbles/Bubble;->mBubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/miui/bubbles/Bubble;->removeFromParent([Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mBubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    return-void
.end method

.method public getBubbleEntry()Lcom/miui/bubbles/data/BubbleEntry;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->bubbleEntry:Lcom/miui/bubbles/data/BubbleEntry;

    return-object v0
.end method

.method public getBubbleMessageView()Lcom/miui/bubbles/views/BubbleMessageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mBubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    return-object v0
.end method

.method public getFlyoutMessage()Lcom/miui/bubbles/Bubble$FlyoutMessage;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    return-object v0
.end method

.method public bridge synthetic getIconView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconView()Lcom/miui/bubbles/views/BubbleImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreMode()Lcom/miui/bubbles/data/FreeformMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    return-object v0
.end method

.method public getPreModeBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    :goto_0
    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/Bubble;->mUid:I

    return v0
.end method

.method public inflate(Lcom/miui/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleStackView;)V
    .locals 9

    invoke-direct {p0}, Lcom/miui/bubbles/Bubble;->isBubbleLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mInflationTask:Lcom/miui/bubbles/BubbleViewInfoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/bubbles/BubbleViewInfoTask;

    iget-object v8, p0, Lcom/miui/bubbles/Bubble;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/miui/bubbles/BubbleViewInfoTask;-><init>(Lcom/miui/bubbles/Bubble;Landroid/content/Context;Lcom/miui/bubbles/BubbleController;Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/BubbleViewInfoTask$Callback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mInflationTask:Lcom/miui/bubbles/BubbleViewInfoTask;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public isInflated()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setViewInfo(Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/bubbles/Bubble;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/miui/bubbles/views/BubbleImageView;

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    iget-object v0, p1, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mBubbleMessageView:Lcom/miui/bubbles/views/BubbleMessageView;

    :cond_0
    iget-object v0, p1, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mIconView:Lcom/miui/bubbles/views/BubbleImageView;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/miui/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0, p1}, Lcom/miui/bubbles/views/BubbleImageView;->setRenderedBubble(Lcom/miui/bubbles/BubbleViewProvider;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method stopInflation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/Bubble;->mInflationTask:Lcom/miui/bubbles/BubbleViewInfoTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bubble{k=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/bubbles/Bubble;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stackId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFreeformMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateEntryData(Lcom/miui/bubbles/data/BubbleEntry;)V
    .locals 1
    .param p1    # Lcom/miui/bubbles/data/BubbleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/miui/bubbles/Bubble;->extractFlyoutMessage(Lcom/miui/bubbles/data/BubbleEntry;)Lcom/miui/bubbles/Bubble$FlyoutMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mFlyoutMessage:Lcom/miui/bubbles/Bubble$FlyoutMessage;

    iput-object p1, p0, Lcom/miui/bubbles/Bubble;->bubbleEntry:Lcom/miui/bubbles/data/BubbleEntry;

    iget-object v0, p1, Lcom/miui/bubbles/data/BubbleEntry;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iput-object v0, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iget v0, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleX:F

    iput v0, p0, Lcom/miui/bubbles/Bubble;->windowScaleX:F

    iget v0, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleY:F

    iput v0, p0, Lcom/miui/bubbles/Bubble;->windowScaleY:F

    iget p1, p1, Lcom/miui/bubbles/data/BubbleEntry;->windowRoundCorner:F

    iput p1, p0, Lcom/miui/bubbles/Bubble;->windowRoundCorner:F

    return-void
.end method
