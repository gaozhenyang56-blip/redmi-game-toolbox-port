.class public Lcom/miui/superpower/statusbar/icon/FlightModeView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/icon/FlightModeView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Lcom/miui/superpower/statusbar/icon/FlightModeView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/icon/FlightModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "stat_sys_signal_flightmode"

    const p3, 0x7f081022

    invoke-static {p1, p2, p3}, Lmg/b;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/superpower/statusbar/icon/FlightModeView;->a:Landroid/content/ContentResolver;

    new-instance p3, Lcom/miui/superpower/statusbar/icon/FlightModeView$a;

    invoke-direct {p3, p0, p1}, Lcom/miui/superpower/statusbar/icon/FlightModeView$a;-><init>(Lcom/miui/superpower/statusbar/icon/FlightModeView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/superpower/statusbar/icon/FlightModeView;->b:Lcom/miui/superpower/statusbar/icon/FlightModeView$a;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/FlightModeView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/icon/FlightModeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/icon/FlightModeView;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/FlightModeView;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lpg/i;->f(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/FlightModeView;->b:Lcom/miui/superpower/statusbar/icon/FlightModeView$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmg/a;->a()Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/icon/FlightModeView;->b:Lcom/miui/superpower/statusbar/icon/FlightModeView$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmg/a;->b()V

    :cond_0
    return-void
.end method
