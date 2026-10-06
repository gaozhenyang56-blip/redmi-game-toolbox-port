.class public Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:[I

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0b0880

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0c13

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-object v0, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->a:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01ab

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0880

    if-eq p1, v0, :cond_0

    const v0, 0x7f0b0c13

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lkh/f;->b(Landroid/app/Activity;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->a:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const p1, 0x7f0e03cb

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/nightcharge/NightChargeDialogActivity;->initView()V

    invoke-static {p0}, Lmd/o;->k(Landroid/content/Context;)V

    return-void
.end method
