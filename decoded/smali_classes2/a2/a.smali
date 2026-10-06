.class public abstract La2/a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field protected a:Lcom/miui/ai/service/OperationListCollectService;

.field protected b:Z


# direct methods
.method constructor <init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, La2/a;->a:Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {p0}, La2/a;->b()Z

    move-result p1

    iput-boolean p1, p0, La2/a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/net/Uri;
.end method

.method protected abstract b()Z
.end method
