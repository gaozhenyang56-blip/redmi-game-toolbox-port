.class Lcom/miui/wakepath/ui/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/wakepath/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/wakepath/ui/e;


# direct methods
.method constructor <init>(Lcom/miui/wakepath/ui/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/wakepath/ui/e$a;->a:Lcom/miui/wakepath/ui/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/wakepath/ui/e$a;->a:Lcom/miui/wakepath/ui/e;

    invoke-static {p1}, Lcom/miui/wakepath/ui/e;->d(Lcom/miui/wakepath/ui/e;)V

    :goto_0
    return-void
.end method
