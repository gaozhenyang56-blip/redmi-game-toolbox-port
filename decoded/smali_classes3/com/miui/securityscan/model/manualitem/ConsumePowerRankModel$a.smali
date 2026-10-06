.class Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lhe/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->access$002(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z

    iget-object p1, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lhe/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->access$002(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z

    invoke-static {p1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->access$102(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->b:Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;->b(Ljava/util/List;)V

    return-void
.end method
