.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/miui/earthquakewarning/model/SaveAreaResult;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->uploadTopicService(Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    const p2, 0x7f1207e9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;->removeData(Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->deleteTopicService(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
