.class Lcom/miui/powercenter/batteryhistory/d0$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->c:Lcom/miui/powercenter/batteryhistory/d0;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->D(Lcom/miui/powercenter/batteryhistory/d0;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->b:Landroid/content/Context;

    const/16 p2, 0x78

    invoke-static {p1, p2}, Lme/s;->a(Landroid/content/Context;I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$o;->c:Lcom/miui/powercenter/batteryhistory/d0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/d0;->E(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    invoke-static {}, Lhd/a;->U0()V

    return-void
.end method
