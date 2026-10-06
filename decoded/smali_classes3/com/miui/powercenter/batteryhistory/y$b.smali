.class Lcom/miui/powercenter/batteryhistory/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->N(Z)V
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

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$b;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/y$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$b;->b:Lcom/miui/powercenter/batteryhistory/y;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/y;->h(Lcom/miui/powercenter/batteryhistory/y;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$b;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$b;->b:Lcom/miui/powercenter/batteryhistory/y;

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/y$b;->a:I

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/y;->n(Lcom/miui/powercenter/batteryhistory/y;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    return-void
.end method
