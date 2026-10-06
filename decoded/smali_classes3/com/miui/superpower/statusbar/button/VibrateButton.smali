.class public Lcom/miui/superpower/statusbar/button/VibrateButton;
.super Lng/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/button/VibrateButton$a;
    }
.end annotation


# instance fields
.field private h:Landroid/media/AudioManager;

.field private i:Lcom/miui/superpower/statusbar/button/VibrateButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/button/VibrateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lng/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    new-instance p2, Lcom/miui/superpower/statusbar/button/VibrateButton$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/superpower/statusbar/button/VibrateButton$a;-><init>(Lcom/miui/superpower/statusbar/button/VibrateButton;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->i:Lcom/miui/superpower/statusbar/button/VibrateButton$a;

    return-void
.end method

.method static synthetic e(Lcom/miui/superpower/statusbar/button/VibrateButton;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    return-object p0
.end method

.method private f()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_in_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/VibrateButton;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lng/a;->setChecked(Z)V

    return-void
.end method

.method public getEnableDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    const-string v1, "ic_qs_vibrate_on"

    const v2, 0x7f0808ba

    invoke-static {v0, v1, v2}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->i:Lcom/miui/superpower/statusbar/button/VibrateButton$a;

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    invoke-super {p0}, Lng/a;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lng/a;->toggle()V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/button/VibrateButton;->f()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lng/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->h:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lng/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_in_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/button/VibrateButton;->i:Lcom/miui/superpower/statusbar/button/VibrateButton$a;

    invoke-virtual {v0}, Lmg/a;->b()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method
