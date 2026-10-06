.class public Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/SeekBar;

.field private c:Lz7/d;

.field private d:Lcom/miui/gamebooster/ui/touch/a$a;

.field private e:Lcom/miui/gamebooster/ui/touch/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/touch/b$c;

    invoke-direct {v1}, Lcom/miui/gamebooster/ui/touch/b$c;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/ui/touch/b$c;->c(Landroid/view/View;)Lcom/miui/gamebooster/ui/touch/b$c;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/miui/gamebooster/ui/touch/b$c;->d(Landroid/view/View;Ljava/lang/String;)Lcom/miui/gamebooster/ui/touch/b$c;

    move-result-object p1

    const/16 p2, 0xbb8

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/touch/b$c;->b(I)Lcom/miui/gamebooster/ui/touch/b$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/touch/b$c;->a()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/touch/a$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget v2, v2, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->b:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/touch/a$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    iget v2, v2, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->c()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0cfc

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0cff

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f1209d4

    goto :goto_0

    :cond_1
    const v0, 0x7f1209d1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->b(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b09e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->a:Landroid/widget/SeekBar;

    const v0, 0x7f0b09e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->b:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b0cfc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0cff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0b09e3

    if-eq p1, v2, :cond_2

    const v2, 0x7f0b09e6

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    iget p1, p1, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    add-int/2addr v1, p1

    sget-object v0, Lz7/e;->e:Lz7/e;

    goto :goto_0

    :cond_2
    sget-object v0, Lz7/e;->b:Lz7/e;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget p1, p1, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    add-int/2addr v1, p1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GbAdvTouchSettingsViewV3"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->c:Lz7/d;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lz7/e;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    invoke-interface {p1, v0, v1}, Lz7/d;->a(II)V

    :cond_4
    return-void
.end method

.method public setITouchValueChangedCallback(Lz7/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->c:Lz7/d;

    return-void
.end method
