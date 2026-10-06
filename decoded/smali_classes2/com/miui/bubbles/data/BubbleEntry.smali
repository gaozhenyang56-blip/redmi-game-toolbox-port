.class public Lcom/miui/bubbles/data/BubbleEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public displayId:I

.field public isRestored:Z

.field private key:Ljava/lang/String;

.field public mAppBounds:Landroid/graphics/Rect;

.field public mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field private packageName:Ljava/lang/String;

.field public pinFloatingWindowFinalRoundCorner:F

.field public pinFloatingWindowPos:Landroid/graphics/Rect;

.field public smallWindowBounds:Landroid/graphics/Rect;

.field public stackId:I

.field public userId:I

.field public windowRoundCorner:F

.field public windowScaleX:F

.field public windowScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->isRestored:Z

    return-void
.end method

.method public static createByFreeformStackInfo(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;I)Lcom/miui/bubbles/data/BubbleEntry;
    .locals 5
    .param p0    # Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/miui/bubbles/data/BubbleEntry;

    invoke-direct {v0}, Lcom/miui/bubbles/data/BubbleEntry;-><init>()V

    iget v1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->packageName:Ljava/lang/String;

    iget v1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    iput v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->stackId:I

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->smallWindowBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/miui/bubbles/data/BubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    iget v2, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    iput v2, v0, Lcom/miui/bubbles/data/BubbleEntry;->userId:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    iget-object v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-static {p1}, Lcom/miui/bubbles/data/FreeformMode;->modeFromAction(I)Lcom/miui/bubbles/data/FreeformMode;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/bubbles/data/BubbleEntry;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iget v1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleX:F

    iput v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleX:F

    iget v1, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowScaleY:F

    iput v1, v0, Lcom/miui/bubbles/data/BubbleEntry;->windowScaleY:F

    iget p0, p0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->windowRoundCorner:F

    iput p0, v0, Lcom/miui/bubbles/data/BubbleEntry;->windowRoundCorner:F

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_1

    sget-object p0, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne p1, p0, :cond_0

    const p0, 0x4248b50b

    goto :goto_0

    :cond_0
    const p0, 0x421cb01c

    :goto_0
    iput p0, v0, Lcom/miui/bubbles/data/BubbleEntry;->windowRoundCorner:F

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->displayId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSbn()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/data/BubbleEntry;->userId:I

    return v0
.end method

.method public setDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/bubbles/data/BubbleEntry;->displayId:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/data/BubbleEntry;->key:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/data/BubbleEntry;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSbn(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/data/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/bubbles/data/BubbleEntry;->userId:I

    return-void
.end method
