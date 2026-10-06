.class Li3/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li3/b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Li3/b;


# direct methods
.method constructor <init>(Li3/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Li3/b$a;->b:Li3/b;

    iput-object p2, p0, Li3/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object p1, p0, Li3/b$a;->a:Landroid/content/Context;

    const-string v0, "com.xiaomi.smarthome"

    invoke-static {p1, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Li3/b;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    iget-object p1, p0, Li3/b$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->F0(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Li3/b;->b(J)J

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Li3/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
