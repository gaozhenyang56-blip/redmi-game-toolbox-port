.class Lcom/miui/common/ui/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/ui/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/ui/b;


# direct methods
.method constructor <init>(Lcom/miui/common/ui/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/ui/b$a;->a:Lcom/miui/common/ui/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/common/ui/b$a;->a:Lcom/miui/common/ui/b;

    invoke-static {p1}, Lcom/miui/common/ui/b;->c(Lcom/miui/common/ui/b;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/common/ui/b$a;->a:Lcom/miui/common/ui/b;

    invoke-static {p1}, Lcom/miui/common/ui/b;->b(Lcom/miui/common/ui/b;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/common/ui/b$a;->a:Lcom/miui/common/ui/b;

    invoke-static {p1}, Lcom/miui/common/ui/b;->a(Lcom/miui/common/ui/b;)V

    return-void
.end method
