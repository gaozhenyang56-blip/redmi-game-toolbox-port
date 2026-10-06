.class Lc3/e$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/e;-><init>(Landroid/content/Context;)V
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
.field final synthetic a:Lc3/e;


# direct methods
.method constructor <init>(Lc3/e;)V
    .locals 0

    iput-object p1, p0, Lc3/e$a;->a:Lc3/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lc3/e$a;->a:Lc3/e;

    invoke-static {p1}, Lc3/e;->a(Lc3/e;)Lc3/d;

    move-result-object p1

    invoke-static {p1}, Lc3/e;->b(Lc3/d;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lc3/e$a;->a:Lc3/e;

    invoke-static {p1}, Lc3/e;->c(Lc3/e;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lc3/e$a;->a:Lc3/e;

    invoke-static {v2}, Lc3/e;->c(Lc3/e;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "app_lock"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "param"

    const-string v3, "handle_notifycation"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lc3/e$a;->a:Lc3/e;

    invoke-static {v2}, Lc3/e;->c(Lc3/e;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, p1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lc3/f;->A0()J

    move-result-wide v4

    add-long v3, v2, v4

    const/4 v2, 0x2

    const-wide/32 v5, 0x4d3f6400

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc3/e$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
