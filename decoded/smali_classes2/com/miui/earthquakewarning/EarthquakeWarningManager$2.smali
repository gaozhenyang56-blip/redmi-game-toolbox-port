.class Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/EarthquakeWarningManager;->matchMyPositionInSupport(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$myCityCode:I

.field final synthetic val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;ILandroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iput p2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$myCityCode:I

    iput-object p3, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

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

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v2}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$myCityCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-static {p1, v0, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$100(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    :cond_2
    return-void
.end method
