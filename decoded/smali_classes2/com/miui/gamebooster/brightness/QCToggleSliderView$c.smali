.class Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/brightness/QCToggleSliderView;->x(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    iput p2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, La8/p;->a()Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->a:I

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v3}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->r(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v4}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->s(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v4

    invoke-static {v0, v3, v4}, Lx4/m;->c(IFF)F

    move-result v0

    invoke-static {v0, v2}, Lf6/b;->a(FF)F

    move-result v0

    iget-object v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v2}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d(Lcom/miui/gamebooster/brightness/QCToggleSliderView;F)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v2}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->e(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->f(Lcom/miui/gamebooster/brightness/QCToggleSliderView;F)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->a:I

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v3}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v4}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->h(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v4

    invoke-static {v0, v3, v4}, Lx4/m;->c(IFF)F

    move-result v0

    invoke-static {v0, v2}, Lf6/b;->a(FF)F

    move-result v0

    iget v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->a:I

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v3}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->r(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v4}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->s(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lx4/m;->b(III)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v3}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    int-to-float v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d(Lcom/miui/gamebooster/brightness/QCToggleSliderView;F)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v2}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->i(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_float"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->t(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;->b:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-static {v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->i(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :goto_1
    return-void
.end method
