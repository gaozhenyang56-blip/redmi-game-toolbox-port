.class Lcom/miui/gamebooster/service/w$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$d;->a:Lcom/miui/gamebooster/service/w;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$d;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "quick_reply"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/w$d;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/w;->c(Lcom/miui/gamebooster/service/w;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
