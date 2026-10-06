.class Lcom/miui/optimizecenter/storage/a$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/a;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$c;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a$c;-><init>(Lcom/miui/optimizecenter/storage/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/a$c;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/a;->o(Lcom/miui/optimizecenter/storage/a;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$c;->a:Lcom/miui/optimizecenter/storage/a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/miui/optimizecenter/storage/a;->n(Lcom/miui/optimizecenter/storage/a;ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/a$c;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/a;->o(Lcom/miui/optimizecenter/storage/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/a$c;->a:Lcom/miui/optimizecenter/storage/a;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Lcom/miui/optimizecenter/storage/a;->n(Lcom/miui/optimizecenter/storage/a;ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_0
    return-void
.end method
