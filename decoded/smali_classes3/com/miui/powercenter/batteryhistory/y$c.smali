.class Lcom/miui/powercenter/batteryhistory/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/miui/powercenter/PowerSaveMainFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$c;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected position ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerFeatureViewHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$c;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/y;->d(Lcom/miui/powercenter/batteryhistory/y;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$c;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/y;->e(Lcom/miui/powercenter/batteryhistory/y;)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$c;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p2, p1}, Lcom/miui/powercenter/batteryhistory/y;->m(Lcom/miui/powercenter/batteryhistory/y;I)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/y$c;->a:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {p2, p1}, Lcom/miui/powercenter/batteryhistory/y;->g(Lcom/miui/powercenter/batteryhistory/y;I)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
