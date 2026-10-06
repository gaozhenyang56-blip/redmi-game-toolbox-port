.class Lcom/miui/powercenter/batteryhistory/y$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->v(Z)V
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

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$i;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/y$i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p2, p0, Lcom/miui/powercenter/batteryhistory/y$i;->a:I

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/y;->r()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$i;->b:Lcom/miui/powercenter/batteryhistory/y;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/miui/powercenter/batteryhistory/y;->t(Lcom/miui/powercenter/batteryhistory/y;Z)Z

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$i;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/y;->o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$i;->b:Lcom/miui/powercenter/batteryhistory/y;

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/y$i;->a:I

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/y;->n(Lcom/miui/powercenter/batteryhistory/y;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
