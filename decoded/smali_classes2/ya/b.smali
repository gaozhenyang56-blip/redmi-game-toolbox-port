.class public Lya/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lab/f;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lab/g;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lya/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lab/f;->d(Landroid/content/Context;)Lab/f;

    move-result-object p1

    iput-object p1, p0, Lya/b;->b:Lab/f;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lab/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lya/b;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lab/g;->a()Lab/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lab/b;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lya/b;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    iput-object p1, p0, Lya/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lya/b;->b:Lab/f;

    iget-object v0, p0, Lya/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lab/f;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected b(Ljava/lang/Exception;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lya/b;->a:Landroid/content/Context;

    const v2, 0x7f12188f

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lya/b;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unmount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lya/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnmountTask"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lya/b;->a:Landroid/content/Context;

    const v2, 0x7f12188e

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lya/b;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lya/b;->a([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lya/b;->b(Ljava/lang/Exception;)V

    return-void
.end method
