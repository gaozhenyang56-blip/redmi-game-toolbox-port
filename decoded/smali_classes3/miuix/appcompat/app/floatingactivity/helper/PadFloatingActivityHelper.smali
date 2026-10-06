.class public Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public execExitAnim()V
    .locals 1

    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_2
    return-void
.end method

.method public isFloatingModeSupport()Z
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    iget v1, v0, Lbl/o;->g:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v3, 0x2003

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x1003

    if-ne v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v0, v0, Lbl/o;->d:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v3, 0x2eb

    if-lt v1, v3, :cond_3

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x29e

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
