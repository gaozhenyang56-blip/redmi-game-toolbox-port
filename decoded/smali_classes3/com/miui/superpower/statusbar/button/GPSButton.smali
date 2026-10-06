.class public Lcom/miui/superpower/statusbar/button/GPSButton;
.super Lng/a;
.source "SourceFile"


# instance fields
.field private h:Landroid/content/ContentResolver;

.field private final i:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/button/GPSButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lng/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/superpower/statusbar/button/GPSButton$a;

    iget-object p3, p0, Lng/a;->g:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/miui/superpower/statusbar/button/GPSButton$a;-><init>(Lcom/miui/superpower/statusbar/button/GPSButton;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->i:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->h:Landroid/content/ContentResolver;

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->h:Landroid/content/ContentResolver;

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/GPSButton;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lng/a;->setChecked(Z)V

    return-void
.end method

.method public getEnableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "support_dual_gps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "ic_qs_dual_location_enabled"

    goto :goto_0

    :cond_0
    const-string v1, "ic_signal_location_enable"

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0808b8

    goto :goto_1

    :cond_1
    const v0, 0x7f0808b9

    :goto_1
    iget-object v2, p0, Lng/a;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->h:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->i:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-super {p0}, Lng/a;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lng/a;->toggle()V

    iget-object p1, p0, Lng/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lng/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lme/w;->y0(Landroid/content/Context;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->h:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/button/GPSButton;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method
