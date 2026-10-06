.class Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->j()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->e(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->f(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    move-object v0, p1

    :catch_1
    :cond_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->k(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->g(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a:Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;->c(Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->setCallerName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterTelecomManager$d$b;->b(Ljava/lang/String;)V

    return-void
.end method
