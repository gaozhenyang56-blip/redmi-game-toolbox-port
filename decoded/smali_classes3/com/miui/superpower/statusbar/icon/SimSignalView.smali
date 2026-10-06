.class public Lcom/miui/superpower/statusbar/icon/SimSignalView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/icon/SimSignalView$b;,
        Lcom/miui/superpower/statusbar/icon/SimSignalView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Lcom/miui/superpower/statusbar/icon/SimSignalView$b;

.field private c:Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

.field private d:Landroid/content/ContentResolver;

.field private e:Landroid/telephony/ServiceState;

.field private f:I

.field private g:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->f:I

    const/4 p3, 0x6

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/icon/SimSignalView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->i(I)V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/icon/SimSignalView;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->e:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/icon/SimSignalView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->f:I

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->e(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->d:Landroid/content/ContentResolver;

    invoke-static {v1}, Lpg/i;->f(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g(Lmiui/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->h()V

    :goto_0
    return-void
.end method

.method private e(I)Lmiui/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    sget-object v0, Lef/y;->O3:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    iget v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->f:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->f:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const v0, 0x7f08101c

    const-string v2, "stat_sys_signal_0"

    invoke-static {p1, v2, v0}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, v1

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    const v1, 0x7f08101d

    const-string v2, "stat_sys_signal_1"

    invoke-static {p1, v2, v1}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    const v1, 0x7f08101e

    const-string v2, "stat_sys_signal_2"

    invoke-static {p1, v2, v1}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    const v1, 0x7f08101f

    const-string v2, "stat_sys_signal_3"

    invoke-static {p1, v2, v1}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    const v1, 0x7f081020

    const-string v2, "stat_sys_signal_4"

    invoke-static {p1, v2, v1}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x5

    const v1, 0x7f081021

    const-string v2, "stat_sys_signal_5"

    invoke-static {p1, v2, v1}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a:Landroid/telephony/TelephonyManager;

    new-instance p2, Lcom/miui/superpower/statusbar/icon/SimSignalView$b;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/icon/SimSignalView$b;-><init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView$b;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->d:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/SimSignalView;->d()V

    return-void
.end method

.method private g(Lmiui/telephony/SubscriptionInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->c:Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/superpower/statusbar/icon/SimSignalView$c;-><init>(Lcom/miui/superpower/statusbar/icon/SimSignalView;ILcom/miui/superpower/statusbar/icon/SimSignalView$a;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->c:Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x101

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->c:Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->a:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->c:Lcom/miui/superpower/statusbar/icon/SimSignalView$c;

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private i(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->g:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/SimSignalView;->b:Lcom/miui/superpower/statusbar/icon/SimSignalView$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmg/a;->b()V

    :cond_0
    return-void
.end method
