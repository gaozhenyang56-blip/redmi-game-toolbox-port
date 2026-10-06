.class Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
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
.field final synthetic a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;


# direct methods
.method private constructor <init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;->a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;-><init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;->a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, La8/q;->f(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, La8/q;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;->a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, La8/q;->b(Landroid/content/Context;J)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
