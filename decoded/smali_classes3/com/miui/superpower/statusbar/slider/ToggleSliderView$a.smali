.class Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/slider/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "screen_brightness"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->c(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Z)Z

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->b(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->c(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Z)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;->a:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
