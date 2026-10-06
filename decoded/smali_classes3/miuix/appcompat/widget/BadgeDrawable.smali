.class public Lmiuix/appcompat/widget/BadgeDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GRAVITY_END_BOTTOM:I = 0x3

.field public static final GRAVITY_END_TOP:I = 0x2

.field public static final GRAVITY_START_BOTTOM:I = 0x1

.field public static final GRAVITY_START_TOP:I = 0x0

.field public static final MODE_EXACT:I = 0x1

.field public static final MODE_IN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BadgeDrawable"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v0, v1}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "BadgeDrawable"

    if-nez p1, :cond_0

    const-string p1, "can not attach badge on a null object."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    const-string p1, "can not find badge drawable resource."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lpl/j;->f(Landroid/view/View;)Z

    move-result p1

    iget v4, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_7

    const/4 v8, 0x3

    if-eq v4, v7, :cond_2

    if-eq v4, v5, :cond_7

    if-eq v4, v8, :cond_2

    const-string p1, "invalid gravity value."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v6

    move p2, p1

    move v3, p2

    goto :goto_3

    :cond_2
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v3

    add-int/2addr v3, p2

    if-nez p1, :cond_3

    if-eq v4, v7, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-ne v4, v8, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    if-eqz v6, :cond_6

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_6
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    :goto_0
    move v6, p1

    add-int p1, v6, v2

    move v9, p2

    move p2, p1

    move p1, v6

    move v6, v9

    goto :goto_3

    :cond_7
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v7, :cond_8

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v1, v8

    :cond_8
    add-int/2addr v3, v1

    if-nez p1, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    if-eqz p1, :cond_b

    if-ne v4, v5, :cond_b

    :cond_a
    move v6, v7

    :cond_b
    if-ne p2, v7, :cond_d

    if-eqz v6, :cond_c

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_c
    iget p1, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    div-int/lit8 p2, v2, 0x2

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_d
    if-eqz v6, :cond_e

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_e
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    :goto_2
    move v6, p1

    add-int p1, v6, v2

    move p2, p1

    move p1, v6

    move v6, v1

    :goto_3
    iput v6, v0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->right:I

    return-object v0
.end method


# virtual methods
.method public attachBadgeDrawable(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;I)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;II)V

    return-void
.end method

.method public attachBadgeDrawable(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/BadgeDrawable;->setGravity(I)V

    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;->getBadgeRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "BadgeDrawable"

    const-string p2, "attach failed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public detachBadgeDrawable()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    :cond_0
    return-void
.end method

.method public detachBadgeDrawable(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void

    :cond_0
    const-string p1, "BadgeDrawable"

    const-string v0, "set invalid gravity value."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    iput p1, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    return-void
.end method
