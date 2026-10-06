.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;
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

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/miui/earthquakewarning/model/SaveAreaResult;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v2, 0xa

    if-ge p2, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->uploadTopicService(Landroid/content/Context;Lcom/miui/earthquakewarning/model/SaveAreaResult;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$700(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1207e9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->deleteTopicService(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_0

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$600(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$2;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$EarthquakeWarningSubscribeAreaAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    return-void
.end method
