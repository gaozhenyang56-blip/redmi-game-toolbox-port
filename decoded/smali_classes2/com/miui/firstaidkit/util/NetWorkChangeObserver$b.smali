.class Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/util/NetWorkChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;

    if-eqz p2, :cond_0

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$b;->a:Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;

    invoke-interface {p1}, Lcom/miui/firstaidkit/util/NetWorkChangeObserver$a;->a()V

    :cond_0
    return-void
.end method
