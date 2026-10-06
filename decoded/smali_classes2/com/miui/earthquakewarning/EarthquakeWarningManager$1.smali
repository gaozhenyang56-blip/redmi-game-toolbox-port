.class Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/EarthquakeWarningManager;->matchSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Lcom/miui/earthquakewarning/model/SignatureReuslt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countries:Ljava/lang/String;

.field final synthetic val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$countries:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    iput-object p4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$countries:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    move v4, v3

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v6}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v5}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-virtual {v7, v6}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setSubscribe(I)V

    iget-object v7, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v8, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    iget-object v9, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v7, v8, v9, v2, v5}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$000(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;Ljava/lang/String;I)V

    move v2, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-string p1, "EarthquakeManager"

    const-string v0, "show failed : push_error_no_sign_area"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "push_error_no_sign_area"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
