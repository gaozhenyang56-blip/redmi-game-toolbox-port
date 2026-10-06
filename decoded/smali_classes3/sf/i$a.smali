.class Lsf/i$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/i;->l(Landroid/content/Context;ZLsf/i;Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lsf/i;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lsf/i;


# direct methods
.method constructor <init>(Lsf/i;ZLandroid/content/Context;Lsf/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lsf/i$a;->e:Lsf/i;

    iput-boolean p2, p0, Lsf/i$a;->a:Z

    iput-object p3, p0, Lsf/i$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lsf/i$a;->c:Lsf/i;

    iput-object p5, p0, Lsf/i$a;->d:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-boolean p1, p0, Lsf/i$a;->a:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lsf/i$a;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object p1

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    iget-object p1, p0, Lsf/i$a;->c:Lsf/i;

    iget-object v4, p0, Lsf/i$a;->b:Landroid/content/Context;

    const v5, 0x7f120dc3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lsf/i;->h:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lsf/i$a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lme/w;->c0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v4, p0, Lsf/i$a;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1212a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lsf/i$a;->b:Landroid/content/Context;

    invoke-static {v7, v2, v3, v0}, Lme/b0;->p(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lsf/i$a;->b:Landroid/content/Context;

    invoke-static {v1, v2, v3, v5}, Lme/b0;->p(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {p1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lsf/i$a;->b:Landroid/content/Context;

    const v4, 0x7f120dc1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lsf/i$a;->c:Lsf/i;

    iput-object p1, v0, Lsf/i;->h:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 7

    iget-object p1, p0, Lsf/i$a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsf/i$d;

    iget-object v0, p0, Lsf/i$a;->c:Lsf/i;

    iget-boolean v2, v0, Lsf/i;->i:Z

    iget v3, v0, Lsf/i;->f:I

    iget-boolean v4, v0, Lsf/i;->g:Z

    const/4 v5, 0x2

    iget-object v6, v0, Lsf/i;->h:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lsf/i$d;->onPowerCenterChange(ZIZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsf/i$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsf/i$a;->b(Ljava/lang/Void;)V

    return-void
.end method
