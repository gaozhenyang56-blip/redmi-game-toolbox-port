.class Lsf/h$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lsf/h;


# direct methods
.method private constructor <init>(Lsf/h;)V
    .locals 0

    iput-object p1, p0, Lsf/h$c;->a:Lsf/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsf/h;Lsf/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lsf/h$c;-><init>(Lsf/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lsf/h$c;->a:Lsf/h;

    invoke-static {p1}, Lsf/h;->a(Lsf/h;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lsf/h$c;->a:Lsf/h;

    invoke-static {p2}, Lsf/h;->a(Lsf/h;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lsf/e;->m(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lsf/h$c;->a:Lsf/h;

    invoke-static {p1, v0}, Lsf/h;->b(Lsf/h;Ljava/lang/String;)V

    return-void
.end method
