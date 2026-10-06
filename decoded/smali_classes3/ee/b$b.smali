.class Lee/b$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/b;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/powercenter/batteryhistory/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lee/b;


# direct methods
.method constructor <init>(Lee/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lee/b$b;->b:Lee/b;

    iput-object p2, p0, Lee/b$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/b$a;
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update charge detail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryInfoReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lee/b$b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/miui/powercenter/batteryhistory/b$a;)V
    .locals 1

    iget-object v0, p0, Lee/b$b;->b:Lee/b;

    invoke-static {v0, p1}, Lee/b;->c(Lee/b;Lcom/miui/powercenter/batteryhistory/b$a;)Lcom/miui/powercenter/batteryhistory/b$a;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lee/b$b;->a([Ljava/lang/Void;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/powercenter/batteryhistory/b$a;

    invoke-virtual {p0, p1}, Lee/b$b;->b(Lcom/miui/powercenter/batteryhistory/b$a;)V

    return-void
.end method
