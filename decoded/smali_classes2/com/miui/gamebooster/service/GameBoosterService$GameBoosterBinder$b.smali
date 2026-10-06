.class Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->F0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;->b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iput p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;->b:Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;

    iget-object v0, v0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;->a:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/service/w;->P(I)V

    return-void
.end method
