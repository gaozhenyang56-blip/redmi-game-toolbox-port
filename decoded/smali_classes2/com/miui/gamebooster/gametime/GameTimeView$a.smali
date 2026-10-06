.class Lcom/miui/gamebooster/gametime/GameTimeView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/gametime/GameTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gametime/GameTimeView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gametime/GameTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v0}, Lcom/miui/gamebooster/gametime/GameTimeView;->b(Lcom/miui/gamebooster/gametime/GameTimeView;)I

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v0}, Lcom/miui/gamebooster/gametime/GameTimeView;->c(Lcom/miui/gamebooster/gametime/GameTimeView;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v0}, Lcom/miui/gamebooster/gametime/GameTimeView;->a(Lcom/miui/gamebooster/gametime/GameTimeView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v1}, Lcom/miui/gamebooster/gametime/GameTimeView;->d(Lcom/miui/gamebooster/gametime/GameTimeView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v0}, Lcom/miui/gamebooster/gametime/GameTimeView;->f(Lcom/miui/gamebooster/gametime/GameTimeView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gametime/GameTimeView$a;->a:Lcom/miui/gamebooster/gametime/GameTimeView;

    invoke-static {v1}, Lcom/miui/gamebooster/gametime/GameTimeView;->e(Lcom/miui/gamebooster/gametime/GameTimeView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
