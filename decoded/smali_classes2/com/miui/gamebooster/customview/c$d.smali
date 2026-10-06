.class Lcom/miui/gamebooster/customview/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c$d;->a:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/c$d;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, La8/j;->n(FLandroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/customview/c$d;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/customview/c;->h(Landroid/widget/SeekBar;)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/c$d;->a:Lcom/miui/gamebooster/customview/c;

    iput v0, p1, Lcom/miui/gamebooster/customview/c;->s:F

    invoke-static {}, La8/j;->l()V

    return-void
.end method
