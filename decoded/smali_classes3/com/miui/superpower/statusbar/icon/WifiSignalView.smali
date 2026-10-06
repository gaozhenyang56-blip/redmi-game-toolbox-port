.class public Lcom/miui/superpower/statusbar/icon/WifiSignalView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;

.field private c:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/icon/WifiSignalView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/icon/WifiSignalView;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->a:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->a:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;-><init>(Lcom/miui/superpower/statusbar/icon/WifiSignalView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->b:Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_0"

    const v2, 0x7f081023

    invoke-static {p1, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_1"

    const v2, 0x7f081024

    invoke-static {p1, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_2"

    const v2, 0x7f081025

    invoke-static {p1, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_3"

    const v2, 0x7f081026

    invoke-static {p1, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const-string v1, "stat_sys_wifi_signal_4"

    const v2, 0x7f081027

    invoke-static {p1, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    return-void
.end method

.method private d()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->getStrength()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x4

    aget-object v0, v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getStrength()I
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->c:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->d()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->b:Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->b:Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;

    invoke-virtual {v0}, Lmg/a;->b()V

    return-void
.end method
