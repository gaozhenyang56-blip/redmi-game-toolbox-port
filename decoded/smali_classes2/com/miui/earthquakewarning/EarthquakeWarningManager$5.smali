.class Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getWhiteList(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    iput-object p3, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPost(Lcom/miui/earthquakewarning/model/WhiteListResult;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WhiteListResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WhiteListResult;->getData()Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WhiteListResult;->getData()Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;->isCheckResult()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->this$0:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->val$userQuakeItem:Lcom/miui/earthquakewarning/model/UserQuakeItem;

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;->val$context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->access$300(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
