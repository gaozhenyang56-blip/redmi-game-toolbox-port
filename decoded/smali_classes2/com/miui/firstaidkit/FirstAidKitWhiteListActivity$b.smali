.class Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/securityscan/model/AbsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;-><init>(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Leg/p;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;->a:Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;

    invoke-static {v0, p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;->e0(Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity;Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitWhiteListActivity$b;->b(Ljava/util/List;)V

    return-void
.end method
