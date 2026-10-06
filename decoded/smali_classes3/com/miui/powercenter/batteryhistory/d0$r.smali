.class Lcom/miui/powercenter/batteryhistory/d0$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->F(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-int/lit8 v2, p1, 0x4

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p1

    invoke-static {p1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->y(Lcom/miui/powercenter/batteryhistory/d0;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->B(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/d0;->w(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->B(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p1

    invoke-static {p1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->z(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$r;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1, v0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->A(Lcom/miui/powercenter/batteryhistory/d0;ZZ)V

    :cond_4
    :goto_2
    return v0
.end method
