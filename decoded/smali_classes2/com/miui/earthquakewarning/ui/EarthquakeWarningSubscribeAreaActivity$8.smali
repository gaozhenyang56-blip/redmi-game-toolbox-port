.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->doSearchArea(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2, v0}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$1800(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->clear()V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$8;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$1800(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/widget/TextView;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
