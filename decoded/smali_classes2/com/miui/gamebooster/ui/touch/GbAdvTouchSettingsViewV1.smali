.class public Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/SeekBar;

.field private c:Lz7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getTouchView0()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->a:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getTouchView1()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->b:Landroid/widget/SeekBar;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b09e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->a:Landroid/widget/SeekBar;

    const v0, 0x7f0b09e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->b:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->c:Lz7/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->a:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lz7/d;->a(II)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->b:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setITouchValueChangedCallback(Lz7/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->c:Lz7/d;

    return-void
.end method
