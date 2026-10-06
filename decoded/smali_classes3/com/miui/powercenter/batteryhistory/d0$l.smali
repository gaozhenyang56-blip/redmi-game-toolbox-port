.class Lcom/miui/powercenter/batteryhistory/d0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0c35

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0cb2

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0cc9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->B(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1, v1}, Lcom/miui/powercenter/batteryhistory/d0;->w(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p1

    invoke-static {p1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->y(Lcom/miui/powercenter/batteryhistory/d0;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->z(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$l;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1, v1, v1}, Lcom/miui/powercenter/batteryhistory/d0;->A(Lcom/miui/powercenter/batteryhistory/d0;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
