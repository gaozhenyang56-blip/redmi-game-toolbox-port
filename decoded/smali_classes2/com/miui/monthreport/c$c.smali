.class Lcom/miui/monthreport/c$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/monthreport/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/monthreport/c;


# direct methods
.method private constructor <init>(Lcom/miui/monthreport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c$c;->a:Lcom/miui/monthreport/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/monthreport/c;Lcom/miui/monthreport/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/c$c;-><init>(Lcom/miui/monthreport/c;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    const/16 v1, -0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/monthreport/c$c;->a:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->h(Lcom/miui/monthreport/c;)Lcom/miui/monthreport/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/miui/monthreport/a;->d(J)I

    move-result p1

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old data cleaned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/monthreport/c$c;->a:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->h(Lcom/miui/monthreport/c;)Lcom/miui/monthreport/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/monthreport/a;->g()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/monthreport/c$c;->a:Lcom/miui/monthreport/c;

    invoke-static {v0, p1}, Lcom/miui/monthreport/c;->i(Lcom/miui/monthreport/c;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/miui/monthreport/c$c;->a:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->d(Lcom/miui/monthreport/c;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/c$c;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/c$c;->b(Ljava/util/List;)V

    return-void
.end method
