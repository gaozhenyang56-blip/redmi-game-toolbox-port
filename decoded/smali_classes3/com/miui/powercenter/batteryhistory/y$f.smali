.class Lcom/miui/powercenter/batteryhistory/y$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$f;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->p(Lcom/miui/powercenter/batteryhistory/y;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x78

    invoke-static {p1, p2}, Lme/s;->a(Landroid/content/Context;I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/y;->r()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/y;->g(Lcom/miui/powercenter/batteryhistory/y;I)I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$f;->b:Lcom/miui/powercenter/batteryhistory/y;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/y;->s(Lcom/miui/powercenter/batteryhistory/y;Z)V

    invoke-static {}, Lhd/a;->U0()V

    return-void
.end method
