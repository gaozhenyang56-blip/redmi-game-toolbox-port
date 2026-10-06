.class public Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoginStatus:I

.field private mServer:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mServer:Ljava/lang/String;

    iput p3, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mLoginStatus:I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MJW_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mLoginStatus:I

    const-string v2, "c8d74be5-8cae-427e-963d-d4ca41349020"

    const-string v3, "_"

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousServer()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/miui/push/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/warningcenter/mijia/MijiaUtils;->setPreviousAccount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mServer:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/warningcenter/mijia/MijiaUtils;->setPreviousServer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    invoke-virtual {v0, p1, v5, v5}, Lcom/miui/push/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/miui/warningcenter/mijia/MijiaUtils;->setPreviousAccount(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/miui/warningcenter/mijia/MijiaUtils;->setPreviousServer(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/miui/push/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
