.class Lcom/miui/powercenter/batteryhistory/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->N(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:I

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;Landroid/widget/CheckBox;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$a;->c:Lcom/miui/powercenter/batteryhistory/y;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$a;->a:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/y$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lpg/d;->f(Z)V

    :cond_1
    invoke-static {v0}, Lhd/a;->u1(Z)V

    const-string p1, "home"

    invoke-static {p1}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$a;->c:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$a;->c:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/y;->h(Lcom/miui/powercenter/batteryhistory/y;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$a;->c:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$a;->c:Lcom/miui/powercenter/batteryhistory/y;

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/y$a;->b:I

    invoke-static {p2, v0}, Lcom/miui/powercenter/batteryhistory/y;->n(Lcom/miui/powercenter/batteryhistory/y;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method
