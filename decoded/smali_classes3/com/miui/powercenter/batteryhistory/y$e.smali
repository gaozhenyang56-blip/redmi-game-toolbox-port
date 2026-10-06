.class Lcom/miui/powercenter/batteryhistory/y$e;
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
.field final synthetic a:I

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$e;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/y$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$e;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$e;->b:Lcom/miui/powercenter/batteryhistory/y;

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/y$e;->a:I

    invoke-static {p2, v0}, Lcom/miui/powercenter/batteryhistory/y;->n(Lcom/miui/powercenter/batteryhistory/y;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    invoke-static {}, Lhd/a;->T0()V

    return-void
.end method
